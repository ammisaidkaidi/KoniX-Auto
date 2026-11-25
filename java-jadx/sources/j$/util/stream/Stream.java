package j$.util.stream;

import j$.util.Optional;
import j$.util.Spliterators;
import j$.util.function.Consumer;
import j$.util.function.Function;
import j$.util.function.IntFunction;
import j$.util.function.Predicate;
import j$.util.function.ToIntFunction;
import java.util.Comparator;

/* loaded from: classes2.dex */
public interface Stream extends AutoCloseable {
    boolean allMatch(Predicate predicate);

    boolean anyMatch(Predicate predicate);

    Object collect(Collector collector);

    Stream filter(Predicate predicate);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer consumer);

    Stream map(Function function);

    IntStream mapToInt(ToIntFunction toIntFunction);

    Optional max(Comparator comparator);

    boolean noneMatch(Predicate predicate);

    Object[] toArray(IntFunction intFunction);

    /* renamed from: j$.util.stream.Stream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Stream empty() {
            return StreamSupport.stream(Spliterators.emptySpliterator(), false);
        }
    }
}
