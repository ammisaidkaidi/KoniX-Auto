package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
final class alm implements Runnable {
    final /* synthetic */ aln a;
    final /* synthetic */ ame b;

    public alm(aln alnVar, ame ameVar) {
        this.a = alnVar;
        this.b = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            agl aglVar = (agl) this.b.get();
            if (aglVar == null) {
                throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", this.a.b.c));
            }
            agr a = agr.a();
            int i = aln.g;
            String.format("Updating notification for %s", this.a.b.c);
            a.d(new Throwable[0]);
            aln alnVar = this.a;
            ListenableWorker listenableWorker = alnVar.c;
            listenableWorker.e = true;
            ame ameVar = alnVar.f;
            agm agmVar = alnVar.d;
            Context context = alnVar.a;
            UUID c = listenableWorker.c();
            ame h = ame.h();
            ((alp) agmVar).c.a(new alo((alp) agmVar, h, c, aglVar, context));
            ameVar.g(h);
        } catch (Throwable th) {
            this.a.f.f(th);
        }
    }
}
