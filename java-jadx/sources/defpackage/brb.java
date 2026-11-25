package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class brb implements bri {
    public final Object a = new Object();
    public final brc b;
    private final Executor c;

    public brb(Executor executor, brc brcVar) {
        this.c = executor;
        this.b = brcVar;
    }

    @Override // defpackage.bri
    public final void a(brh brhVar) {
        synchronized (this.a) {
            if (this.b == null) {
                return;
            }
            this.c.execute(new bra(this, brhVar));
        }
    }
}
