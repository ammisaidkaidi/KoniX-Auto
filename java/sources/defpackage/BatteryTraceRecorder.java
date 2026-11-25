package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryTraceRecorder implements PrimesMetricServiceLifecycle {
    public final ListeningScheduledExecutorService a;
    public final DaggerInternalFactoryMarker b;

    public BatteryTraceRecorder(MetricDispatcherAssistedFactory bwoVar, final Context context, ListeningScheduledExecutorService daiVar, DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar, final DaggerProviderInterface dnyVar2) {
        new AtomicBoolean(false);
        new IntentFilter("android.intent.action.BATTERY_CHANGED");
        bwoVar.a(daiVar, dgzVar, dnyVar);
        this.a = daiVar;
        this.b = dgzVar;
        ex.i(new StopwatchTicker() { // from class: bwy
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                Object e;
                BatteryTraceRecorder bxbVar = BatteryTraceRecorder.this;
                Context context2 = context;
                synchronized (bxbVar) {
                    String b = ProcessNameReader.b();
                    String concat = String.valueOf(ProtoLiteMessageBase).concat(".trace");
                    File filesDir = context2.getFilesDir();
                    String valueOf = String.valueOf(ProtoLiteMessageBase);
                    File file = new File(filesDir, valueOf.length() != 0 ? "primes_profiling_".concat(valueOf) : new String("primes_profiling_"));
                    if (file.exists() || file.mkdir()) {
                        File file2 = new File(file, concat);
                        file2.deleteOnExit();
                        try {
                            if (file2.exists()) {
                                file2.delete();
                            }
                        } catch (RuntimeException e2) {
                        }
                        e = GuavaOptional.e(file2);
                    } else {
                        e = cns.a;
                    }
                }
                return e;
            }
        });
        ex.i(new StopwatchTicker() { // from class: bwz
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                return ((CrashDeviceIdSeederFactory) DaggerProviderInterface.this).a();
            }
        });
    }

    public final synchronized void a() {
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        ProjectionIntentHelper.l(new Runnable() { // from class: bxa
            @Override // java.lang.Runnable
            public final void run() {
                BatteryTraceRecorder.this.a();
            }
        }, this.a);
    }
}
