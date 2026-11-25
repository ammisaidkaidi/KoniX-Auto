package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ForegroundNotificationUpdateRunnable implements Runnable {
    final /* synthetic */ ForegroundNotificationProgressRunnable a;
    final /* synthetic */ GuavaAbstractFuture_ame b;

    public ForegroundNotificationUpdateRunnable(ForegroundNotificationProgressRunnable alnVar, GuavaAbstractFuture_ame ameVar) {
        this.a = alnVar;
        this.b = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            WorkForegroundInfo aglVar = (WorkForegroundInfo) this.b.get();
            if (aglVar == null) {
                throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", this.a.b.c));
            }
            WorkLogger a = WorkLogger.a();
            int i = aln.g;
            String.format("Updating notification for %s", this.a.b.c);
            a.d(new Throwable[0]);
            ForegroundNotificationProgressRunnable alnVar = this.a;
            ListenableWorker listenableWorker = alnVar.c;
            listenableWorker.e = true;
            GuavaAbstractFuture_ame ameVar = alnVar.f;
            ForegroundInfoProvider agmVar = alnVar.d;
            Context context = alnVar.a;
            UUID c = listenableWorker.c();
            GuavaAbstractFuture_ame h = GuavaAbstractFuture_ame.h();
            ((ForegroundInfoProviderImpl) agmVar).c.a(new ForegroundWorkPromotionRunnable((ForegroundInfoProviderImpl) agmVar, h, c, aglVar, context));
            ameVar.g(ProtoMessageSingleEnumFieldH);
        } catch (Throwable th) {
            this.a.f.f(ActivityResultDispatchRunnable);
        }
    }
}
