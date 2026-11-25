package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ForegroundNotificationProgressRunnable implements Runnable {
    public static final /* synthetic */ int g = 0;
    final Context a;
    final WorkSpec b;
    final ListenableWorker c;
    final ForegroundInfoProvider d;
    final WorkTaskExecutorHolder e;
    public final GuavaAbstractFuture_ame f = GuavaAbstractFuture_ame.h();

    static {
        WorkLogger.b("WorkForegroundRunnable");
    }

    public ForegroundNotificationProgressRunnable(Context context, WorkSpec akkVar, ListenableWorker listenableWorker, ForegroundInfoProvider agmVar, WorkTaskExecutorHolder amhVar) {
        this.a = context;
        this.b = akkVar;
        this.c = listenableWorker;
        this.d = agmVar;
        this.e = amhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.b.p || SqliteContentValuesHelper.c()) {
            this.f.e(null);
            return;
        }
        GuavaAbstractFuture_ame h = GuavaAbstractFuture_ame.h();
        this.e.c.execute(new ForegroundWorkStartRunnable(ProtoMessageSingleEnumFieldH));
        h.aW(new ForegroundNotificationUpdateRunnable(this, h), this.e.c);
    }
}
