package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PresentOptional extends GuavaOptional {
    private static final long serialVersionUID = 0;
    public final Object a;

    public PresentOptional(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.GuavaOptional
    public final Object a() {
        return this.a;
    }

    @Override // defpackage.GuavaOptional
    public final Object b(Object obj) {
        obj.getClass();
        return this.a;
    }

    @Override // defpackage.GuavaOptional
    public final Object c() {
        return this.a;
    }

    @Override // defpackage.GuavaOptional
    public final boolean d() {
        return true;
    }

    @Override // defpackage.GuavaOptional
    public final boolean equals(Object obj) {
        if (obj instanceof PresentOptional) {
            return this.a.equals(((PresentOptional) obj).a);
        }
        return false;
    }

    @Override // defpackage.GuavaOptional
    public final int hashCode() {
        return this.a.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 13);
        StaggeredGridLayoutParams.append("Optional.of(");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }
}
