package j$.util.stream;

import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.function.BiConsumer;
import j$.util.function.BinaryOperator;
import j$.util.function.Consumer;
import j$.util.function.Supplier;
import j$.util.stream.Collector;
import j$.util.stream.Sink;
import j$.util.stream.TerminalOp;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
abstract class ReduceOps {

    interface AccumulatingSink extends TerminalSink {
        void combine(AccumulatingSink accumulatingSink);
    }

    public static TerminalOp makeRef(final BinaryOperator binaryOperator) {
        binaryOperator.getClass();
        return new ReduceOp(StreamShape.REFERENCE) { // from class: j$.util.stream.ReduceOps.2
            /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.ReduceOps$2ReducingSink] */
            @Override // j$.util.stream.ReduceOps.ReduceOp
            public C2ReducingSink makeSink() {
                final BinaryOperator binaryOperator2 = binaryOperator;
                return new AccumulatingSink() { // from class: j$.util.stream.ReduceOps.2ReducingSink
                    private boolean empty;
                    private Object state;

                    @Override // j$.util.stream.Sink
                    public /* synthetic */ void accept(int i) {
                        Sink.CC.$default$accept(this, i);
                    }

                    @Override // j$.util.function.Consumer
                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer.CC.$default$andThen(this, consumer);
                    }

                    @Override // j$.util.stream.Sink
                    public /* synthetic */ boolean cancellationRequested() {
                        return Sink.CC.$default$cancellationRequested(this);
                    }

                    @Override // j$.util.stream.Sink
                    public /* synthetic */ void end() {
                        Sink.CC.$default$end(this);
                    }

                    @Override // j$.util.stream.Sink
                    public void begin(long j) {
                        this.empty = true;
                        this.state = null;
                    }

                    @Override // j$.util.function.Consumer
                    public void accept(Object obj) {
                        if (this.empty) {
                            this.empty = false;
                            this.state = obj;
                        } else {
                            this.state = BinaryOperator.this.apply(this.state, obj);
                        }
                    }

                    @Override // j$.util.function.Supplier
                    public Optional get() {
                        return this.empty ? Optional.empty() : Optional.of(this.state);
                    }

                    @Override // j$.util.stream.ReduceOps.AccumulatingSink
                    public void combine(C2ReducingSink c2ReducingSink) {
                        if (c2ReducingSink.empty) {
                            return;
                        }
                        accept(c2ReducingSink.state);
                    }
                };
            }
        };
    }

    public static TerminalOp makeRef(final Collector collector) {
        collector.getClass();
        final Supplier supplier = collector.supplier();
        final BiConsumer accumulator = collector.accumulator();
        final BinaryOperator combiner = collector.combiner();
        return new ReduceOp(StreamShape.REFERENCE) { // from class: j$.util.stream.ReduceOps.3
            @Override // j$.util.stream.ReduceOps.ReduceOp
            public C3ReducingSink makeSink() {
                return new C3ReducingSink(supplier, accumulator, combiner);
            }

            @Override // j$.util.stream.ReduceOps.ReduceOp, j$.util.stream.TerminalOp
            public int getOpFlags() {
                if (collector.characteristics().contains(Collector.Characteristics.UNORDERED)) {
                    return StreamOpFlag.NOT_ORDERED;
                }
                return 0;
            }
        };
    }

    /* renamed from: j$.util.stream.ReduceOps$3ReducingSink, reason: invalid class name */
    class C3ReducingSink extends Box implements AccumulatingSink {
        final /* synthetic */ BiConsumer val$accumulator;
        final /* synthetic */ BinaryOperator val$combiner;
        final /* synthetic */ Supplier val$supplier;

        @Override // j$.util.stream.Sink
        public /* synthetic */ void accept(int i) {
            Sink.CC.$default$accept(this, i);
        }

        @Override // j$.util.function.Consumer
        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer.CC.$default$andThen(this, consumer);
        }

        @Override // j$.util.stream.Sink
        public /* synthetic */ boolean cancellationRequested() {
            return Sink.CC.$default$cancellationRequested(this);
        }

        @Override // j$.util.stream.Sink
        public /* synthetic */ void end() {
            Sink.CC.$default$end(this);
        }

        C3ReducingSink(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator) {
            this.val$supplier = supplier;
            this.val$accumulator = biConsumer;
            this.val$combiner = binaryOperator;
        }

        @Override // j$.util.stream.Sink
        public void begin(long j) {
            this.state = this.val$supplier.get();
        }

        @Override // j$.util.function.Consumer
        public void accept(Object obj) {
            this.val$accumulator.accept(this.state, obj);
        }

        @Override // j$.util.stream.ReduceOps.AccumulatingSink
        public void combine(C3ReducingSink c3ReducingSink) {
            this.state = this.val$combiner.apply(this.state, c3ReducingSink.state);
        }
    }

    abstract class Box {
        Object state;

        Box() {
        }

        public Object get() {
            return this.state;
        }
    }

    abstract class ReduceOp implements TerminalOp {
        private final StreamShape inputShape;

        @Override // j$.util.stream.TerminalOp
        public /* synthetic */ int getOpFlags() {
            return TerminalOp.CC.$default$getOpFlags(this);
        }

        public abstract AccumulatingSink makeSink();

        ReduceOp(StreamShape streamShape) {
            this.inputShape = streamShape;
        }

        @Override // j$.util.stream.TerminalOp
        public Object evaluateSequential(PipelineHelper pipelineHelper, Spliterator spliterator) {
            return ((AccumulatingSink) pipelineHelper.wrapAndCopyInto(makeSink(), spliterator)).get();
        }

        @Override // j$.util.stream.TerminalOp
        public Object evaluateParallel(PipelineHelper pipelineHelper, Spliterator spliterator) {
            return ((AccumulatingSink) new ReduceTask(this, pipelineHelper, spliterator).invoke()).get();
        }
    }

    final class ReduceTask extends AbstractTask {
        private final ReduceOp op;

        ReduceTask(ReduceOp reduceOp, PipelineHelper pipelineHelper, Spliterator spliterator) {
            super(pipelineHelper, spliterator);
            this.op = reduceOp;
        }

        ReduceTask(ReduceTask reduceTask, Spliterator spliterator) {
            super(reduceTask, spliterator);
            this.op = reduceTask.op;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // j$.util.stream.AbstractTask
        public ReduceTask makeChild(Spliterator spliterator) {
            return new ReduceTask(this, spliterator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // j$.util.stream.AbstractTask
        public AccumulatingSink doLeaf() {
            return (AccumulatingSink) this.helper.wrapAndCopyInto(this.op.makeSink(), this.spliterator);
        }

        @Override // j$.util.stream.AbstractTask, java.util.concurrent.CountedCompleter
        public void onCompletion(CountedCompleter countedCompleter) {
            if (!isLeaf()) {
                AccumulatingSink accumulatingSink = (AccumulatingSink) ((ReduceTask) this.leftChild).getLocalResult();
                accumulatingSink.combine((AccumulatingSink) ((ReduceTask) this.rightChild).getLocalResult());
                setLocalResult(accumulatingSink);
            }
            super.onCompletion(countedCompleter);
        }
    }
}
