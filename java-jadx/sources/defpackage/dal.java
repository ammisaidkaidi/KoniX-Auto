package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dal extends cyl implements Runnable {
    private final Runnable a;

    public dal(Runnable runnable) {
        runnable.getClass();
        this.a = runnable;
    }

    @Override // defpackage.cyp
    protected final String a() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 7);
        sb.append("task=[");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            l(th);
            cop.b(th);
            throw new RuntimeException(th);
        }
    }
}
