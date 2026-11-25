package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.auto.aareceiver.service.PersistentService;
import java.lang.Thread;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CrashRecoveryExceptionHandler implements Thread.UncaughtExceptionHandler {
    private final Context a;
    private final Thread.UncaughtExceptionHandler b;

    public CrashRecoveryExceptionHandler(Context context, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = context;
        this.b = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) BaseReceiverApp.a.b().g(ActivityResultDispatchRunnable)).h("com/google/android/apps/auto/aareceiver/BaseReceiverApp$ExceptionHandler", "uncaughtException", 131, "BaseReceiverApp.java")).z(thread.getName(), thread.getId());
        Intent intent = new Intent();
        intent.setClass(this.a, PersistentService.class);
        intent.setAction("CRASH_RECOVERY");
        Context context = this.a;
        ClipData clipData = chb.a;
        ((AlarmManager) this.a.getSystemService(AlarmManager.class)).set(1, System.currentTimeMillis() + 100, PendingIntent.getService(context, 0, PendingIntentCompat.b(intent, 201326592), 201326592));
        this.b.uncaughtException(thread, th);
    }
}
