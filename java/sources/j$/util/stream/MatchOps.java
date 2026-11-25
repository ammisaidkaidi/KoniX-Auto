package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.IntPredicate;
import j$.util.function.Predicate;
import j$.util.function.Supplier;
import j$.util.stream.MatchOps;
import j$.util.stream.Sink;

/* loaded from: classes2.dex */
abstract class MatchOps {

    enum MatchKind {
        ANY(true, true),
        ALL(false, false),
        NONE(true, false);

        private final boolean shortCircuitResult;
        private final boolean stopOnPredicateMatches;

        MatchKind(boolean z, boolean z2) {
            this.stopOnPredicateMatches = z;
            this.shortCircuitResult = z2;
        }
    }

    public static TerminalOp makeRef(final Predicate predicate, final MatchKind matchKind) {
        predicate.getClass();
        matchKind.getClass();
        return new MatchOp(StreamShape.REFERENCE, matchKind, new Supplier() { // from class: j$.util.stream.MatchOps$$ExternalSyntheticLambda3
            @Override // j$.util.function.Supplier
            public final Object get() {
                return MatchOps.lambda$makeRef$0(MatchOps.MatchKind.this, predicate);
            }
        });
    }

    static /* synthetic */ BooleanTerminalSink lambda$makeRef$0(MatchKind matchKind, Predicate predicate) {
        return new BooleanTerminalSink(predicate) { // from class: j$.util.stream.MatchOps.1MatchSink
            final /* synthetic */ Predicate val$predicate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(MatchKind.this);
                this.val$predicate = predicate;
            }

            @Override // j$.util.function.Consumer
            public void accept(Object obj) {
                if (this.stop || this.val$predicate.test(obj) != MatchKind.this.stopOnPredicateMatches) {
                    return;
                }
                this.stop = true;
                this.value = MatchKind.this.shortCircuitResult;
            }
        };
    }

    public static TerminalOp makeInt(final IntPredicate intPredicate, final MatchKind matchKind) {
        intPredicate.getClass();
        matchKind.getClass();
        return new MatchOp(StreamShape.INT_VALUE, matchKind, new Supplier() { // from class: j$.util.stream.MatchOps$$ExternalSyntheticLambda1
            @Override // j$.util.function.Supplier
            public final Object get() {
                return MatchOps.lambda$makeInt$1(MatchOps.MatchKind.this, intPredicate);
            }
        });
    }

    /* renamed from: j$.util.stream.MatchOps$2MatchSink, reason: invalid class name */
    class C2MatchSink extends BooleanTerminalSink implements Sink.OfInt {
        final /* synthetic */ MatchKind val$matchKind;
        final /* synthetic */ IntPredicate val$predicate;

        @Override // j$.util.stream.Sink.OfInt
        public /* synthetic */ void accept(Integer num) {
            Sink.OfInt.CC.$default$accept((Sink.OfInt) this, num);
        }

        @Override // j$.util.function.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            Sink.OfInt.CC.$default$accept(this, obj);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2MatchSink(MatchKind matchKind, IntPredicate intPredicate) {
            super(matchKind);
            this.val$matchKind = matchKind;
            this.val$predicate = intPredicate;
        }

        @Override // j$.util.stream.MatchOps.BooleanTerminalSink, j$.util.stream.Sink
        public void accept(int i) {
            if (this.stop || this.val$predicate.test(i) != this.val$matchKind.stopOnPredicateMatches) {
                return;
            }
            this.stop = true;
            this.value = this.val$matchKind.shortCircuitResult;
        }
    }

    static /* synthetic */ BooleanTerminalSink lambda$makeInt$1(MatchKind matchKind, IntPredicate intPredicate) {
        return new C2MatchSink(matchKind, intPredicate);
    }

    final class MatchOp implements TerminalOp {
        private final StreamShape inputShape;
        final MatchKind matchKind;
        final Supplier sinkSupplier;

        MatchOp(StreamShape streamShape, MatchKind matchKind, Supplier supplier) {
            this.inputShape = streamShape;
            this.matchKind = matchKind;
            this.sinkSupplier = supplier;
        }

        @Override // j$.util.stream.TerminalOp
        public int getOpFlags() {
            return StreamOpFlag.IS_SHORT_CIRCUIT | StreamOpFlag.NOT_ORDERED;
        }

        @Override // j$.util.stream.TerminalOp
        public Boolean evaluateSequential(PipelineHelper pipelineHelper, Spliterator spliterator) {
            return Boolean.valueOf(((BooleanTerminalSink) pipelineHelper.wrapAndCopyInto((BooleanTerminalSink) this.sinkSupplier.get(), spliterator)).getAndClearState());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // j$.util.stream.TerminalOp
        public Boolean evaluateParallel(PipelineHelper pipelineHelper, Spliterator spliterator) {
            return (Boolean) new MatchTask(this, pipelineHelper, spliterator).invoke();
        }
    }

    abstract class BooleanTerminalSink implements Sink {
        boolean stop;
        boolean value;

        @Override // j$.util.stream.Sink
        public /* synthetic */ void accept(int i) {
            Sink.CC.$default$accept(this, i);
        }

        @Override // j$.util.function.Consumer
        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer.CC.$default$andThen(this, consumer);
        }

        @Override // j$.util.stream.Sink
        public /* synthetic */ void begin(long j) {
            Sink.CC.$default$begin(this, j);
        }

        @Override // j$.util.stream.Sink
        public /* synthetic */ void end() {
            Sink.CC.$default$end(this);
        }

        BooleanTerminalSink(MatchKind matchKind) {
            this.value = !matchKind.shortCircuitResult;
        }

        public boolean getAndClearState() {
            return this.value;
        }

        @Override // j$.util.stream.Sink
        public boolean cancellationRequested() {
            return this.stop;
        }
    }

    final class MatchTask extends AbstractShortCircuitTask {
        private final MatchOp op;

        MatchTask(MatchOp matchOp, PipelineHelper pipelineHelper, Spliterator spliterator) {
            super(pipelineHelper, spliterator);
            this.op = matchOp;
        }

        MatchTask(MatchTask matchTask, Spliterator spliterator) {
            super(matchTask, spliterator);
            this.op = matchTask.op;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // j$.util.stream.AbstractTask
        public MatchTask makeChild(Spliterator spliterator) {
            return new MatchTask(this, spliterator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // j$.util.stream.AbstractTask
        public Boolean doLeaf() {
            boolean andClearState = ((BooleanTerminalSink) this.helper.wrapAndCopyInto((BooleanTerminalSink) this.op.sinkSupplier.get(), this.spliterator)).getAndClearState();
            if (andClearState != this.op.matchKind.shortCircuitResult) {
                return null;
            }
            shortCircuit(Boolean.valueOf(andClearState));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // j$.util.stream.AbstractShortCircuitTask
        public Boolean getEmptyResult() {
            return Boolean.valueOf(!this.op.matchKind.shortCircuitResult);
        }
    }
}
