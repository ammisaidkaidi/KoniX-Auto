package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqb extends cou implements Serializable {
    private static final long serialVersionUID = 0;
    final Object a;
    final Object b;

    public cqb(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // defpackage.cou, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
