package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SpanEndSignalRunnable implements Runnable {
    public static final /* synthetic */ SpanEndSignalRunnable a = new SpanEndSignalRunnable(2);
    private final /* synthetic */ int b;

    public SpanEndSignalRunnable(int i) {
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
