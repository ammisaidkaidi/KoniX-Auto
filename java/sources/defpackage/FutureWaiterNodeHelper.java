package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureWaiterNodeHelper {
    static final FutureWaiterNodeHelper a;
    static final FutureWaiterNodeHelper b;
    final boolean c;
    final Throwable d;

    static {
        if (ame.a) {
            b = null;
            a = null;
        } else {
            b = new FutureWaiterNodeHelper(false, null);
            a = new FutureWaiterNodeHelper(true, null);
        }
    }

    public FutureWaiterNodeHelper(boolean z, Throwable th) {
        this.c = z;
        this.d = th;
    }
}
