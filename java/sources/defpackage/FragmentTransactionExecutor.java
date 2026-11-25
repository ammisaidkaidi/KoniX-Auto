package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentTransactionExecutor {
    int a;
    AndroidxFragment b;
    boolean c;
    int d;
    int e;
    int f;
    int g;
    LifecycleState h;
    LifecycleState i;

    public FragmentTransactionExecutor() {
    }

    public FragmentTransactionExecutor(int i, AndroidxFragment brVar) {
        this.a = i;
        this.b = brVar;
        this.c = false;
        this.h = zm.RESUMED;
        this.i = zm.RESUMED;
    }

    public FragmentTransactionExecutor(int i, AndroidxFragment brVar, byte[] bArr) {
        this.a = i;
        this.b = brVar;
        this.c = true;
        this.h = zm.RESUMED;
        this.i = zm.RESUMED;
    }
}
