package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class alw {
    static final alw a;
    static final alw b;
    final boolean c;
    final Throwable d;

    static {
        if (ame.a) {
            b = null;
            a = null;
        } else {
            b = new alw(false, null);
            a = new alw(true, null);
        }
    }

    public alw(boolean z, Throwable th) {
        this.c = z;
        this.d = th;
    }
}
