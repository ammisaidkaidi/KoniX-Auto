package com.google.android.apps.auto.aareceiver.telemetry;

import j$.time.Duration;
import j$.time.Instant;
import j$.util.DesugarCollections;
import j$.util.Map;
import j$.util.Optional;
import j$.util.function.Consumer;
import j$.util.function.Function;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TelemetryTracker {
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker");
    public final TimeSource a;
    public final StackClassGetterBase b;
    private final Map d = DesugarCollections.synchronizedMap(new EnumMap(LatencyEventType.class));

    public TelemetryTracker(TimeSource cxzVar, StackClassGetterBase corVar) {
        this.a = cxzVar;
        this.b = corVar;
    }

    public final void a(LatencyEventType bdfVar) {
        if (AaReceiverFlagsDkoFacade.c()) {
            LatencyStopwatch bdbVar = (LatencyStopwatch) Map.EL.computeIfAbsent(this.d, bdfVar, new Function() { // from class: bdd
                @Override // j$.util.function.Function
                public final /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // j$.util.function.Function
                public final Object apply(Object obj) {
                    return new LatencyStopwatch(TelemetryTracker.this.b);
                }

                @Override // j$.util.function.Function
                public final /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            if (bdbVar.a()) {
                ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker", "startTracking", 57, "TelemetryTracker.java")).p("Timer %s is already running.", bdfVar.name());
                return;
            }
            bdbVar.b();
            if (AaReceiverFlags45353773Facade.c()) {
                Primes a = Primes.a();
                a.a.b(PrimesMetricName.a(bdfVar));
            }
        }
    }

    public final void b(final LatencyEventType bdfVar, int i) {
        int i2;
        if (AaReceiverFlagsDkoFacade.c()) {
            LatencyStopwatch bdbVar = (LatencyStopwatch) this.d.get(bdfVar);
            if (bdbVar == null || !bdbVar.a()) {
                ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/telemetry/TelemetryTracker", "stopTracking", 73, "TelemetryTracker.java")).p("No running timer for %s found", bdfVar.name());
                return;
            }
            bdbVar.c();
            ((bdbVar.a() || Instant.MIN.equals(bdbVar.b)) ? Optional.empty() : Optional.of(new LatencyMeasurement(bdbVar.b, Duration.ofNanos(bdbVar.a.a(TimeUnit.NANOSECONDS))))).ifPresent(new Consumer() { // from class: bdc
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    LatencyMeasurement bdaVar = (LatencyMeasurement) obj;
                    LatencyEventType.this.name();
                    bdaVar.b.toMillis();
                    Instant instant = bdaVar.a;
                }

                @Override // j$.util.function.Consumer
                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
            this.d.remove(bdfVar);
            if (AaReceiverFlags45353773Facade.c()) {
                Primes a = Primes.a();
                PrimesMetricName a2 = PrimesMetricName.a(bdfVar);
                switch (NavInstructionTypeEnum - 1) {
                    case 2:
                        i2 = 2;
                        break;
                    case 3:
                        i2 = 4;
                        break;
                    default:
                        i2 = 3;
                        break;
                }
                a.a.e(a2, i2);
            }
        }
    }

    public final void c() {
        if (AaReceiverFlagsDkoFacade.c()) {
            Instant.now();
        }
    }
}
