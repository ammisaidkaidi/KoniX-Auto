package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yb implements Runnable {
    public static final /* synthetic */ yb a = new yb(2);
    private final /* synthetic */ int b;

    public yb(int i) {
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
            case 1:
                return;
            case 2:
                throw new IllegalStateException("Span was closed by an invalid call to SpanEndSignal.run()");
            default:
                return;
        }
    }
}
