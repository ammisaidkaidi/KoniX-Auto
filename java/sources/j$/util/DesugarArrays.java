package j$.util;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;

/* loaded from: classes2.dex */
public final /* synthetic */ class DesugarArrays {
    public static Spliterator spliterator(Object[] objArr, int i, int i2) {
        return Spliterators.spliterator(objArr, i, i2, 1040);
    }

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2) {
        return Spliterators.spliterator(iArr, i, i2, 1040);
    }

    public static Stream stream(Object[] objArr) {
        return stream(objArr, 0, objArr.length);
    }

    public static Stream stream(Object[] objArr, int i, int i2) {
        return StreamSupport.stream(spliterator(objArr, i, i2), false);
    }

    public static IntStream stream(int[] iArr) {
        return stream(iArr, 0, iArr.length);
    }

    public static IntStream stream(int[] iArr, int i, int i2) {
        return StreamSupport.intStream(spliterator(iArr, i, i2), false);
    }
}
