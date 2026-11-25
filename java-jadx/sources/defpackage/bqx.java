package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bqx implements bri {
    public final bro a;
    private final Executor b;

    public bqx(Executor executor, bro broVar) {
        this.b = executor;
        this.a = broVar;
    }

    @Override // defpackage.bri
    public final void a(brh brhVar) {
        this.b.execute(new bqw(this, brhVar));
    }
}
