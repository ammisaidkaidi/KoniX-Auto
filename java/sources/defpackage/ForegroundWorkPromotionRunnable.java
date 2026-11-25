package defpackage;

import android.content.Context;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ForegroundWorkPromotionRunnable implements Runnable {
    final /* synthetic */ UUID a;
    final /* synthetic */ WorkForegroundInfo b;
    final /* synthetic */ Context c;
    final /* synthetic */ ForegroundInfoProviderImpl d;
    final /* synthetic */ GuavaAbstractFuture_ame e;

    public ForegroundWorkPromotionRunnable(ForegroundInfoProviderImpl alpVar, GuavaAbstractFuture_ame ameVar, UUID uuid, WorkForegroundInfo aglVar, Context context) {
        this.d = alpVar;
        this.e = ameVar;
        this.a = uuid;
        this.b = aglVar;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!this.e.isCancelled()) {
                String uuid = this.a.toString();
                int f = this.d.b.f(uuid);
                if (NavManeuverTypeEnum == 0 || GuavaCollectPreconditionsUtil.A(NavManeuverTypeEnum)) {
                    throw new IllegalStateException("Calls ComponentActivityLifecycleInterface setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                WorkProcessorMarkerInterface ajpVar = this.d.a;
                WorkForegroundInfo aglVar = this.b;
                synchronized (((WorkProcessor) ajpVar).g) {
                    WorkLogger.a();
                    String.format("Moving WorkSpec (%s) to the foreground", uuid);
                    WorkLogger.f(new Throwable[0]);
                    WorkerWrapper aibVar = (WorkerWrapper) ((WorkProcessor) ajpVar).e.remove(uuid);
                    if (aibVar != null) {
                        if (((WorkProcessor) ajpVar).b == null) {
                            ((WorkProcessor) ajpVar).b = WorkWakeLocks.a(((WorkProcessor) ajpVar).c, "ProcessorForegroundLck");
                            ((WorkProcessor) ajpVar).b.acquire();
                        }
                        ((WorkProcessor) ajpVar).d.put(uuid, aibVar);
                        PrimesConfigHolder.a(((WorkProcessor) ajpVar).c, SystemForegroundDispatcher.c(((WorkProcessor) ajpVar).c, uuid, aglVar));
                    }
                }
                this.c.startService(SystemForegroundDispatcher.b(this.c, uuid, this.b));
            }
            this.e.e(null);
        } catch (Throwable th) {
            this.e.f(ActivityResultDispatchRunnable);
        }
    }
}
