package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyd {
    static final cyd a;
    static final cyd b;
    final boolean c;
    final Throwable d;

    static {
        if (cyp.d) {
            b = null;
            a = null;
        } else {
            b = new cyd(false, null);
            a = new cyd(true, null);
        }
    }

    public cyd(boolean z, Throwable th) {
        this.c = z;
        this.d = th;
    }
}
