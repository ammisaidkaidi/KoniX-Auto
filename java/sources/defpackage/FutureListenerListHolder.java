package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureListenerListHolder {
    static final FutureListenerListHolder a;
    static final FutureListenerListHolder b;
    final boolean c;
    final Throwable d;

    static {
        if (cyp.d) {
            b = null;
            a = null;
        } else {
            b = new FutureListenerListHolder(false, null);
            a = new FutureListenerListHolder(true, null);
        }
    }

    public FutureListenerListHolder(boolean z, Throwable th) {
        this.c = z;
        this.d = th;
    }
}
