package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ReflectiveWorkerFactory {
    private static final String a = WorkLogger.b("WorkerFactory");

    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        ListenableWorker listenableWorker = null;
        try {
            cls = Class.forName(str).asSubclass(ListenableWorker.class);
        } catch (Throwable th) {
            WorkLogger.a();
            WorkLogger.e(a, "Invalid class: ".concat(String.valueOf(str)), th);
            cls = null;
        }
        if (GalTransportThread != null) {
            try {
                listenableWorker = (ListenableWorker) GalTransportThread.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                WorkLogger.a();
                WorkLogger.e(a, "Could not instantiate ".concat(String.valueOf(str)), th2);
            }
        }
        if (listenableWorker == null || !listenableWorker.d) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of SingleStringProtoMessage ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
