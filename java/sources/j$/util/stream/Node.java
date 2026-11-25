package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer;
import j$.util.function.DoubleConsumer;
import j$.util.function.IntConsumer;
import j$.util.function.IntFunction;
import j$.util.function.LongConsumer;
import j$.util.stream.Sink;

/* loaded from: classes2.dex */
interface Node {

    public interface Builder extends Sink {

        public interface OfInt extends Builder, Sink.OfInt {
        }

        Node build();
    }

    Object[] asArray(IntFunction intFunction);

    void copyInto(Object[] objArr, int i);

    long count();

    void forEach(Consumer consumer);

    Node getChild(int i);

    int getChildCount();

    Spliterator spliterator();

    /* renamed from: j$.util.stream.Node$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$getChildCount(Node node) {
            return 0;
        }

        public static Node $default$getChild(Node node, int i) {
            throw new IndexOutOfBoundsException();
        }
    }

    public interface OfPrimitive extends Node {
        Object asPrimitiveArray();

        void copyInto(Object obj, int i);

        void forEach(Object obj);

        @Override // j$.util.stream.Node
        OfPrimitive getChild(int i);

        Object newArray(int i);

        @Override // j$.util.stream.Node
        Spliterator.OfPrimitive spliterator();

        /* renamed from: j$.util.stream.Node$OfPrimitive$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static OfPrimitive $default$getChild(OfPrimitive ofPrimitive, int i) {
                throw new IndexOutOfBoundsException();
            }

            public static Object[] $default$asArray(OfPrimitive ofPrimitive, IntFunction intFunction) {
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofPrimitive.getClass(), "{0} calling Node.OfPrimitive.asArray");
                }
                if (ofPrimitive.count() >= 2147483639) {
                    throw new IllegalArgumentException("Stream size exceeds max array size");
                }
                Object[] objArr = (Object[]) intFunction.apply((int) ofPrimitive.count());
                ofPrimitive.copyInto(objArr, 0);
                return objArr;
            }
        }
    }

    public interface OfInt extends OfPrimitive {
        void copyInto(Integer[] numArr, int i);

        @Override // j$.util.stream.Node.OfPrimitive
        int[] newArray(int i);

        /* renamed from: j$.util.stream.Node$OfInt$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$forEach(OfInt ofInt, Consumer consumer) {
                if (consumer instanceof IntConsumer) {
                    ofInt.forEach((IntConsumer) consumer);
                    return;
                }
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofInt.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                }
                ((Spliterator.OfInt) ofInt.spliterator()).forEachRemaining(consumer);
            }

            public static void $default$copyInto(OfInt ofInt, Integer[] numArr, int i) {
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofInt.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
                }
                int[] iArr = (int[]) ofInt.asPrimitiveArray();
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    numArr[i + i2] = Integer.valueOf(iArr[i2]);
                }
            }

            /* renamed from: $default$newArray, reason: collision with other method in class */
            public static int[] m69$default$newArray(OfInt ofInt, int i) {
                return new int[i];
            }
        }
    }

    public interface OfLong extends OfPrimitive {
        void copyInto(Long[] lArr, int i);

        /* renamed from: j$.util.stream.Node$OfLong$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$forEach(OfLong ofLong, Consumer consumer) {
                if (consumer instanceof LongConsumer) {
                    ofLong.forEach((LongConsumer) consumer);
                    return;
                }
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofLong.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                }
                ((Spliterator.OfLong) ofLong.spliterator()).forEachRemaining(consumer);
            }

            public static void $default$copyInto(OfLong ofLong, Long[] lArr, int i) {
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofLong.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
                }
                long[] jArr = (long[]) ofLong.asPrimitiveArray();
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    lArr[i + i2] = Long.valueOf(jArr[i2]);
                }
            }
        }
    }

    public interface OfDouble extends OfPrimitive {
        void copyInto(Double[] dArr, int i);

        /* renamed from: j$.util.stream.Node$OfDouble$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$forEach(OfDouble ofDouble, Consumer consumer) {
                if (consumer instanceof DoubleConsumer) {
                    ofDouble.forEach((DoubleConsumer) consumer);
                    return;
                }
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofDouble.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                }
                ((Spliterator.OfDouble) ofDouble.spliterator()).forEachRemaining(consumer);
            }

            public static void $default$copyInto(OfDouble ofDouble, Double[] dArr, int i) {
                if (Tripwire.ENABLED) {
                    Tripwire.trip(ofDouble.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
                }
                double[] dArr2 = (double[]) ofDouble.asPrimitiveArray();
                for (int i2 = 0; i2 < dArr2.length; i2++) {
                    dArr[i + i2] = Double.valueOf(dArr2[i2]);
                }
            }
        }
    }
}
