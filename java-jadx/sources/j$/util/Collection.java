package j$.util;

import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes2.dex */
public interface Collection {

    /* compiled from: D8$$SyntheticClass */
    /* renamed from: j$.util.Collection$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        public static /* synthetic */ Spliterator spliterator(java.util.Collection collection) {
            Spliterator spliterator;
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                return DesugarLinkedHashSet.spliterator((LinkedHashSet) collection);
            }
            if (collection instanceof SortedSet) {
                return SortedSet$CC.$default$spliterator((SortedSet) collection);
            }
            if (!(collection instanceof Set)) {
                return collection instanceof List ? List$CC.$default$spliterator((List) collection) : CC.$default$spliterator(collection);
            }
            spliterator = Spliterators.spliterator((Set) collection, 1);
            return spliterator;
        }

        public static /* synthetic */ Stream stream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).stream() : CC.$default$stream(collection);
        }
    }

    Spliterator spliterator();

    Stream stream();

    /* renamed from: j$.util.Collection$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Spliterator $default$spliterator(java.util.Collection collection) {
            return Spliterators.spliterator(collection, 0);
        }

        public static Stream $default$stream(java.util.Collection collection) {
            return StreamSupport.stream(EL.spliterator(collection), false);
        }
    }
}
