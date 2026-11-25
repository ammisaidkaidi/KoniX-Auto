package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bkl extends UnsupportedOperationException {
    private final bjb a;

    public bkl(bjb bjbVar) {
        this.a = bjbVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.a);
        String.valueOf(valueOf).length();
        return "Missing ".concat(String.valueOf(valueOf));
    }
}
