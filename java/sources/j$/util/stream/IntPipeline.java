package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer;
import j$.util.function.IntFunction;
import j$.util.function.IntPredicate;
import j$.util.stream.MatchOps;
import j$.util.stream.Node;
import j$.util.stream.ReferencePipeline;
import j$.util.stream.Sink;

/* loaded from: classes2.dex */
abstract class IntPipeline extends AbstractPipeline implements IntStream {
    IntPipeline(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    IntPipeline(AbstractPipeline abstractPipeline, int i) {
        super(abstractPipeline, i);
    }

    private static IntConsumer adapt(final Sink sink) {
        if (sink instanceof IntConsumer) {
            return (IntConsumer) sink;
        }
        if (Tripwire.ENABLED) {
            Tripwire.trip(AbstractPipeline.class, "using IntStream.adapt(Sink<Integer> s)");
        }
        sink.getClass();
        return new IntConsumer() { // from class: j$.util.stream.IntPipeline$$ExternalSyntheticLambda6
            @Override // j$.util.function.IntConsumer
            public final void accept(int i) {
                Sink.this.accept(i);
            }
        };
    }

    private static Spliterator.OfInt adapt(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (Tripwire.ENABLED) {
            Tripwire.trip(AbstractPipeline.class, "using IntStream.adapt(Spliterator<Integer> s)");
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.AbstractPipeline
    final Node evaluateToNode(PipelineHelper pipelineHelper, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return Nodes.collectInt(pipelineHelper, spliterator, z);
    }

    @Override // j$.util.stream.AbstractPipeline
    final boolean forEachWithCancel(Spliterator spliterator, Sink sink) {
        boolean cancellationRequested;
        Spliterator.OfInt adapt = adapt(spliterator);
        IntConsumer adapt2 = adapt(sink);
        do {
            cancellationRequested = sink.cancellationRequested();
            if (cancellationRequested) {
                break;
            }
        } while (adapt.tryAdvance(adapt2));
        return cancellationRequested;
    }

    @Override // j$.util.stream.AbstractPipeline, j$.util.stream.PipelineHelper
    final Node.Builder makeNodeBuilder(long j, IntFunction intFunction) {
        return Nodes.intBuilder(j);
    }

    private Stream mapToObj(final IntFunction intFunction, int i) {
        return new ReferencePipeline.StatelessOp(this, this, StreamShape.INT_VALUE, i) { // from class: j$.util.stream.IntPipeline.1
            @Override // j$.util.stream.AbstractPipeline
            Sink opWrapSink(int i2, Sink sink) {
                return new Sink.ChainedInt(sink) { // from class: j$.util.stream.IntPipeline.1.1
                    @Override // j$.util.stream.Sink.OfInt, j$.util.stream.Sink
                    public void accept(int i3) {
                        this.downstream.accept(intFunction.apply(i3));
                    }
                };
            }
        };
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        intFunction.getClass();
        return mapToObj(intFunction, StreamOpFlag.NOT_SORTED | StreamOpFlag.NOT_DISTINCT);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream filter(final IntPredicate intPredicate) {
        intPredicate.getClass();
        return new StatelessOp(this, this, StreamShape.INT_VALUE, StreamOpFlag.NOT_SIZED) { // from class: j$.util.stream.IntPipeline.9
            @Override // j$.util.stream.AbstractPipeline
            Sink opWrapSink(int i, Sink sink) {
                return new Sink.ChainedInt(sink) { // from class: j$.util.stream.IntPipeline.9.1
                    @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
                    public void begin(long j) {
                        this.downstream.begin(-1L);
                    }

                    @Override // j$.util.stream.Sink.OfInt, j$.util.stream.Sink
                    public void accept(int i2) {
                        if (intPredicate.test(i2)) {
                            this.downstream.accept(i2);
                        }
                    }
                };
            }
        };
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return SortedOps.makeInt(this);
    }

    @Override // j$.util.stream.IntStream
    public final boolean noneMatch(IntPredicate intPredicate) {
        return ((Boolean) evaluate(MatchOps.makeInt(intPredicate, MatchOps.MatchKind.NONE))).booleanValue();
    }

    static /* synthetic */ Integer[] lambda$toArray$5(int i) {
        return new Integer[i];
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) Nodes.flattenInt((Node.OfInt) evaluateToArrayNode(new IntFunction() { // from class: j$.util.stream.IntPipeline$$ExternalSyntheticLambda8
            @Override // j$.util.function.IntFunction
            public final Object apply(int i) {
                return IntPipeline.lambda$toArray$5(i);
            }
        })).asPrimitiveArray();
    }

    class Head extends IntPipeline {
        Head(Spliterator spliterator, int i, boolean z) {
            super(spliterator, i, z);
        }

        @Override // j$.util.stream.AbstractPipeline
        final boolean opIsStateful() {
            throw new UnsupportedOperationException();
        }

        @Override // j$.util.stream.AbstractPipeline
        final Sink opWrapSink(int i, Sink sink) {
            throw new UnsupportedOperationException();
        }
    }

    abstract class StatelessOp extends IntPipeline {
        @Override // j$.util.stream.AbstractPipeline
        final boolean opIsStateful() {
            return false;
        }

        StatelessOp(AbstractPipeline abstractPipeline, StreamShape streamShape, int i) {
            super(abstractPipeline, i);
        }
    }

    abstract class StatefulOp extends IntPipeline {
        @Override // j$.util.stream.AbstractPipeline
        final boolean opIsStateful() {
            return true;
        }

        StatefulOp(AbstractPipeline abstractPipeline, StreamShape streamShape, int i) {
            super(abstractPipeline, i);
        }
    }
}
