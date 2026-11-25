package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bic {
    private Object a;

    public bic(Object obj) {
        this.a = obj;
    }

    public final Object a(Object obj) {
        if (this.a == null) {
            this.a = obj;
        }
        Object[] objArr = new Object[0];
        Object obj2 = this.a;
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException(ex.k("None of the supplied values were non-null!", objArr));
    }
}
