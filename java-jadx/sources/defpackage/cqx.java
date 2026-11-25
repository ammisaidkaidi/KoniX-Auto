package defpackage;

import java.util.Collection;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cqx extends cqw {
    private final transient cqz a;

    public cqx(cqz cqzVar) {
        this.a = cqzVar;
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            cqz cqzVar = this.a;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) cqzVar.a().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final cst listIterator() {
        return new cqn(this.a);
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.c;
    }
}
