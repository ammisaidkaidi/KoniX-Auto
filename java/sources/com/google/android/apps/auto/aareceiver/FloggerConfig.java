package com.google.android.apps.auto.aareceiver;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FloggerConfig {
    private static final AtomicBoolean a = new AtomicBoolean(false);
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/FloggerConfig");

    public final synchronized void a() {
        if (a.getAndSet(true)) {
            ((ParameterizedLoggerApi) b.c().h("com/google/android/apps/auto/aareceiver/FloggerConfig", "configure", 23, "FloggerConfig.java")).n("Flogger already configured");
            return;
        }
        BackendFactoryHolder cvgVar = new BackendFactoryHolder();
        cvgVar.a = new AndroidBackendFactory(new AndroidBackendFactory("AAP.", new AndroidBackendFactory().b).a, true);
        if (!LoggingInitializedFlag.a.compareAndSet(false, true)) {
            throw new IllegalStateException("Logger backend configuration may only occur once.");
        }
        Object obj = cvgVar.a;
        if (obj == null) {
            obj = new DefaultBackendFactory(Level.ALL);
        }
        if (!AndroidLoggerBackend.a.compareAndSet(null, obj)) {
            throw new IllegalStateException("Logger backends can only be configured once.");
        }
        AndroidLoggerBackend.e();
        SystemLogConfigProvider.a.b.set(cvu.a);
    }
}
