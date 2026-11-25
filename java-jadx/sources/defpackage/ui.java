package defpackage;

import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ui extends up {
    public final HashMap a = new HashMap();

    @Override // defpackage.up
    public final ul a(Object obj) {
        return (ul) this.a.get(obj);
    }

    @Override // defpackage.up
    public final Object b(Object obj) {
        Object b = super.b(obj);
        this.a.remove(obj);
        return b;
    }

    public final boolean c(Object obj) {
        return this.a.containsKey(obj);
    }
}
