package j$.util;

import j$.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: j$.util.List$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class List$CC {
    public static Spliterator $default$spliterator(List list) {
        if (list instanceof RandomAccess) {
            return new AbstractList.RandomAccessSpliterator(list);
        }
        return Spliterators.spliterator(list, 16);
    }
}
