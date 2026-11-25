package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bre implements bri {
    public final Object a = new Object();
    public final brp b;
    private final Executor c;
    private final /* synthetic */ int d;

    public bre(Executor executor, brp brpVar, int i) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    public bre(Executor executor, brp brpVar, int i, byte[] bArr) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    public bre(Executor executor, brp brpVar, int i, char[] cArr) {
        this.d = i;
        this.c = executor;
        this.b = brpVar;
    }

    @Override // defpackage.bri
    public final void a(brh brhVar) {
        switch (this.d) {
            case 0:
                if (brhVar.d() || ((bro) brhVar).d) {
                    return;
                }
                synchronized (this.a) {
                }
                this.c.execute(new brd(this, brhVar));
                return;
            case 1:
                if (((bro) brhVar).d) {
                    synchronized (this.a) {
                    }
                    this.c.execute(new bqz(this, null));
                    return;
                }
                return;
            default:
                if (brhVar.d()) {
                    synchronized (this.a) {
                    }
                    this.c.execute(new brf(this, brhVar, null));
                    return;
                }
                return;
        }
    }
}
