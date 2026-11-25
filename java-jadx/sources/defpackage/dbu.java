package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class dbu implements deq {
    public static void d(Iterable iterable, List list) {
        dds.h(iterable);
        if (iterable instanceof dec) {
            List h = ((dec) iterable).h();
            dec decVar = (dec) list;
            int size = list.size();
            for (Object obj : h) {
                if (obj == null) {
                    int size2 = decVar.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = decVar.size() - 1; size3 >= size; size3--) {
                        decVar.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                }
                if (obj instanceof dcl) {
                    decVar.i((dcl) obj);
                } else {
                    decVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof dey) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = list.size();
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("Element at index ");
                sb3.append(size5 - size4);
                sb3.append(" is null.");
                String sb4 = sb3.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(sb4);
            }
            list.add(obj2);
        }
    }

    @Override // 
    /* renamed from: a */
    public abstract dbu clone();

    protected abstract dbu b(dbv dbvVar);

    @Override // defpackage.deq
    public final /* bridge */ /* synthetic */ deq c(der derVar) {
        if (j().getClass().isInstance(derVar)) {
            return b((dbv) derVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
