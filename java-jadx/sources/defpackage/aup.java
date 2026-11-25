package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class aup implements Runnable {
    public final /* synthetic */ auq a;
    public final /* synthetic */ int b;
    private final /* synthetic */ int c;

    public /* synthetic */ aup(auq auqVar, int i, int i2) {
        this.c = i2;
        this.a = auqVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                this.a.g(this.b, 12);
                break;
            case 1:
                this.a.g(this.b, 16);
                break;
            default:
                this.a.g(this.b, 1);
                break;
        }
    }
}
