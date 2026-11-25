package com.google.android.apps.auto.aareceiver.sensors;

import com.google.android.projection.protocol.SensorSource;
import j$.util.function.BooleanSupplier;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class SensorFeed {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/sensors/SensorFeed");
    public final Object f = new Object();
    public SensorSource g = null;
    public ImmutableMapBase h = cse.a;
    private boolean b = false;

    public abstract ImmutableSet a();

    public abstract void c(ImmutableSet cqwVar);

    protected abstract void d(ImmutableSet cqwVar);

    public final void e() {
        synchronized (this.f) {
            if (!this.h.isEmpty()) {
                d(this.h.keySet());
            }
            this.g = null;
            this.h = cse.a;
            this.b = false;
        }
    }

    final void f(SensorType ckwVar, Consumer consumer) {
        synchronized (this.f) {
            if (this.h.isEmpty() && !this.b) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/sensors/SensorFeed", "trySendUpdate", 95, "SensorFeed.java")).n("Suppressing sensor updates before start() or after stop()");
                this.b = true;
                return;
            }
            BooleanSupplier booleanSupplier = (BooleanSupplier) this.h.get(ckwVar);
            if (booleanSupplier == null) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/sensors/SensorFeed", "trySendUpdate", 102, "SensorFeed.java")).p("Trying to send update for unregistered sensor %s", ckwVar);
            } else {
                if (booleanSupplier.getAsBoolean()) {
                    consumer.accept(this.g);
                }
            }
        }
    }
}
