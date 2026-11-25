package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AbsentOptional extends GuavaOptional {
    public static final AbsentOptional a = new AbsentOptional();
    private static final long serialVersionUID = 0;

    private AbsentOptional() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.GuavaOptional
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // defpackage.GuavaOptional
    public final Object b(Object obj) {
        obj.getClass();
        return obj;
    }

    @Override // defpackage.GuavaOptional
    public final Object c() {
        return null;
    }

    @Override // defpackage.GuavaOptional
    public final boolean d() {
        return false;
    }

    @Override // defpackage.GuavaOptional
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // defpackage.GuavaOptional
    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
