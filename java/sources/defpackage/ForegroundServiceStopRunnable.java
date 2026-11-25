package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ForegroundServiceStopRunnable implements Runnable {
    final /* synthetic */ WorkDatabase a;
    final /* synthetic */ String b;
    final /* synthetic */ SystemForegroundDispatcher c;

    public ForegroundServiceStopRunnable(SystemForegroundDispatcher ajsVar, WorkDatabase workDatabase, String str) {
        this.c = ajsVar;
        this.a = workDatabase;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WorkSpec a = this.a.n().a(this.b);
        if (SingleStringProtoMessage == null || !a.b()) {
            return;
        }
        synchronized (this.c.c) {
            this.c.f.put(this.b, a);
            this.c.g.add(SingleStringProtoMessage);
            SystemForegroundDispatcher ajsVar = this.c;
            ajsVar.h.a(ajsVar.g);
        }
    }
}
