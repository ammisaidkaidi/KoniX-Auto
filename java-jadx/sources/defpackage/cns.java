package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cns extends coc {
    public static final cns a = new cns();
    private static final long serialVersionUID = 0;

    private cns() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.coc
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // defpackage.coc
    public final Object b(Object obj) {
        obj.getClass();
        return obj;
    }

    @Override // defpackage.coc
    public final Object c() {
        return null;
    }

    @Override // defpackage.coc
    public final boolean d() {
        return false;
    }

    @Override // defpackage.coc
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // defpackage.coc
    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
