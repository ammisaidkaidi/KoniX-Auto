package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntFunction;
import j$.util.stream.IntPipeline;
import j$.util.stream.Node;
import j$.util.stream.Sink;
import j$.util.stream.SpinedBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
abstract class SortedOps {
    static IntStream makeInt(AbstractPipeline abstractPipeline) {
        return new OfInt(abstractPipeline);
    }

    final class OfInt extends IntPipeline.StatefulOp {
        OfInt(AbstractPipeline abstractPipeline) {
            super(abstractPipeline, StreamShape.INT_VALUE, StreamOpFlag.IS_ORDERED | StreamOpFlag.IS_SORTED);
        }

        @Override // j$.util.stream.AbstractPipeline
        public Sink opWrapSink(int i, Sink sink) {
            sink.getClass();
            if (StreamOpFlag.SORTED.isKnown(i)) {
                return sink;
            }
            if (StreamOpFlag.SIZED.isKnown(i)) {
                return new SizedIntSortingSink(sink);
            }
            return new IntSortingSink(sink);
        }

        @Override // j$.util.stream.AbstractPipeline
        public Node opEvaluateParallel(PipelineHelper pipelineHelper, Spliterator spliterator, IntFunction intFunction) {
            if (StreamOpFlag.SORTED.isKnown(pipelineHelper.getStreamAndOpFlags())) {
                return pipelineHelper.evaluate(spliterator, false, intFunction);
            }
            int[] iArr = (int[]) ((Node.OfInt) pipelineHelper.evaluate(spliterator, true, intFunction)).asPrimitiveArray();
            Arrays.sort(iArr);
            return Nodes.node(iArr);
        }
    }

    abstract class AbstractIntSortingSink extends Sink.ChainedInt {
        protected boolean cancellationRequestedCalled;

        AbstractIntSortingSink(Sink sink) {
            super(sink);
        }

        @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
        public final boolean cancellationRequested() {
            this.cancellationRequestedCalled = true;
            return false;
        }
    }

    final class SizedIntSortingSink extends AbstractIntSortingSink {
        private int[] array;
        private int offset;

        SizedIntSortingSink(Sink sink) {
            super(sink);
        }

        @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
        public void begin(long j) {
            if (j >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            this.array = new int[(int) j];
        }

        @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
        public void end() {
            int i = 0;
            Arrays.sort(this.array, 0, this.offset);
            this.downstream.begin(this.offset);
            if (!this.cancellationRequestedCalled) {
                while (i < this.offset) {
                    this.downstream.accept(this.array[i]);
                    i++;
                }
            } else {
                while (i < this.offset && !this.downstream.cancellationRequested()) {
                    this.downstream.accept(this.array[i]);
                    i++;
                }
            }
            this.downstream.end();
            this.array = null;
        }

        @Override // j$.util.stream.Sink.OfInt, j$.util.stream.Sink
        public void accept(int i) {
            int[] iArr = this.array;
            int i2 = this.offset;
            this.offset = i2 + 1;
            iArr[i2] = i;
        }
    }

    final class IntSortingSink extends AbstractIntSortingSink {
        private SpinedBuffer.OfInt b;

        IntSortingSink(Sink sink) {
            super(sink);
        }

        @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
        public void begin(long j) {
            if (j >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            this.b = j > 0 ? new SpinedBuffer.OfInt((int) j) : new SpinedBuffer.OfInt();
        }

        @Override // j$.util.stream.Sink.ChainedInt, j$.util.stream.Sink
        public void end() {
            int[] iArr = (int[]) this.b.asPrimitiveArray();
            Arrays.sort(iArr);
            this.downstream.begin(iArr.length);
            int i = 0;
            if (!this.cancellationRequestedCalled) {
                int length = iArr.length;
                while (i < length) {
                    this.downstream.accept(iArr[i]);
                    i++;
                }
            } else {
                int length2 = iArr.length;
                while (i < length2) {
                    int i2 = iArr[i];
                    if (this.downstream.cancellationRequested()) {
                        break;
                    }
                    this.downstream.accept(i2);
                    i++;
                }
            }
            this.downstream.end();
        }

        @Override // j$.util.stream.Sink.OfInt, j$.util.stream.Sink
        public void accept(int i) {
            this.b.accept(i);
        }
    }
}
