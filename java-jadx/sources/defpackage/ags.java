package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ags extends ez {
    public final Throwable a;

    public ags(Throwable th) {
        this.a = th;
    }

    public final String toString() {
        return String.format("FAILURE (%s)", this.a.getMessage());
    }
}
