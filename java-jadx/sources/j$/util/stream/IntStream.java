package j$.util.stream;

import j$.util.function.IntFunction;
import j$.util.function.IntPredicate;

/* loaded from: classes2.dex */
public interface IntStream extends AutoCloseable {
    IntStream filter(IntPredicate intPredicate);

    Stream mapToObj(IntFunction intFunction);

    boolean noneMatch(IntPredicate intPredicate);

    IntStream sorted();

    int[] toArray();
}
