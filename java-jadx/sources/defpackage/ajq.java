package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ajq implements Runnable {
    final /* synthetic */ WorkDatabase a;
    final /* synthetic */ String b;
    final /* synthetic */ ajs c;

    public ajq(ajs ajsVar, WorkDatabase workDatabase, String str) {
        this.c = ajsVar;
        this.a = workDatabase;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        akk a = this.a.n().a(this.b);
        if (a == null || !a.b()) {
            return;
        }
        synchronized (this.c.c) {
            this.c.f.put(this.b, a);
            this.c.g.add(a);
            ajs ajsVar = this.c;
            ajsVar.h.a(ajsVar.g);
        }
    }
}
