package com.google.android.apps.auto.aareceiver.sensors;

import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.SensorSource;
import com.google.android.apps.auto.aareceiver.sensors.SensorFeed;
import defpackage.SensorBooleanSupplier;
import com.google.android.apps.auto.aareceiver.sensors.SensorManager;
import defpackage.SensorType;
import defpackage.ImmutableList;
import defpackage.ImmutableMapBuilder;
import defpackage.ImmutableMapBase;
import defpackage.ImmutableSet;
import defpackage.UnmodifiableIterator;
import defpackage.ParameterizedLoggerApi;
import defpackage.SmoothRateLimiter;
import j$.util.Collection;
import j$.util.function.BooleanSupplier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SensorManager {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/sensors/SensorManager");
    public static final BooleanSupplier b = new BooleanSupplier() { // from class: azk
        @Override // j$.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            FloggerLoggerFactory cszVar = azm.a;
            return true;
        }
    };
    public final ImmutableList c;
    public final ImmutableMapBuilderImpl d;
    public final SensorSource e;

    public SensorManager(LifecycleRegistry znVar, CarInfoProvider awtVar, Set set) {
        EvConnectorType[] ckcVarArr;
        ImmutableList n = ImmutableList.n(set);
        this.c = n;
        znVar.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.sensors.SensorManager$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                Object obj;
                SensorManager azmVar = SensorManager.this;
                ImmutableList cqhVar = azmVar.c;
                int size = cqhVar.size();
                for (int i = 0; NavInstructionTypeEnum < size; i++) {
                    SensorFeed azjVar = (SensorFeed) cqhVar.get(NavInstructionTypeEnum);
                    ImmutableSet b2 = azmVar.d.b(azjVar);
                    ImmutableMapBuilder f = ImmutableMapBase.f(b2.size());
                    UnmodifiableIterator listIterator = b2.listIterator();
                    while (listIterator.hasNext()) {
                        SensorType ckwVar = (SensorType) listIterator.next();
                        SensorType ckwVar2 = SensorType.SENSOR_LOCATION;
                        switch (ckwVar) {
                            case SENSOR_LOCATION:
                            case SENSOR_ODOMETER:
                            case SENSOR_PARKING_BRAKE:
                            case SENSOR_GEAR:
                            case SENSOR_NIGHT_MODE:
                            case SENSOR_DRIVING_STATUS_DATA:
                            case SENSOR_PASSENGER_DATA:
                            case SENSOR_DOOR_DATA:
                            case SENSOR_LIGHT_DATA:
                            case SENSOR_TIRE_PRESSURE_DATA:
                            case SENSOR_GPS_SATELLITE_DATA:
                            case SENSOR_TOLL_CARD:
                                obj = azm.b;
                                break;
                            case SENSOR_COMPASS:
                            case SENSOR_SPEED:
                            case SENSOR_RPM:
                            case SENSOR_ACCELEROMETER_DATA:
                            case SENSOR_GYROSCOPE_DATA:
                                obj = new SensorBooleanSupplier(SmoothRateLimiter.a(10.0d));
                                break;
                            case SENSOR_FUEL:
                            case SENSOR_ENVIRONMENT_DATA:
                            case SENSOR_HVAC_DATA:
                                obj = new SensorBooleanSupplier(SmoothRateLimiter.a(1.0d));
                                break;
                            case SENSOR_OBDII_DIAGNOSTIC_CODE:
                            case SENSOR_DEAD_RECKONING_DATA:
                                ((ParameterizedLoggerApi) SensorManager.a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "createRateLimiterForSensor", 205, "SensorManager.java")).o("Not reporting deprecated sensor %d", ckwVar.w);
                                obj = null;
                                break;
                            default:
                                throw new AssertionError();
                        }
                        if (obj != null) {
                            f.f(ckwVar, obj);
                        }
                    }
                    ImmutableMapBase c = f.c();
                    SensorSource sensorSource = azmVar.e;
                    synchronized (azjVar.f) {
                        if (!azjVar.h.isEmpty()) {
                            azjVar.e();
                        }
                        azjVar.g = sensorSource;
                        azjVar.h = c;
                        if (!c.isEmpty()) {
                            azjVar.c(c.keySet());
                        }
                    }
                }
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                ImmutableList h = SensorManager.this.c.h();
                int size = h.size();
                for (int i = 0; NavInstructionTypeEnum < size; i++) {
                    ((SensorFeed) h.get(NavInstructionTypeEnum)).e();
                }
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void f() {
            }
        });
        HashSet hashSet = new HashSet();
        PhenotypeFlagUriResolver cqoVar = new PhenotypeFlagUriResolver();
        int size = n.size();
        int i = 0;
        while (true) {
            boolean z = true;
            if (NavInstructionTypeEnum >= size) {
                this.d = ez.o(cqoVar);
                FuelType[] ckdVarArr = (FuelType[]) CarInfoProvider.c((int[]) awtVar.b(Integer[].class, 289472773).map(awq.d).orElse(new int[0]), aws.e, aws.c, "fuel type");
                ckdVarArr = ckdVarArr.length == 0 ? new FuelType[]{FuelType.FUEL_TYPE_UNKNOWN} : ckdVarArr;
                if (Arrays.asList(ckdVarArr).contains(FuelType.FUEL_TYPE_ELECTRIC)) {
                    ckcVarArr = (EvConnectorType[]) CarInfoProvider.c(CarCompat.getEvConnectorTypesSafe(awtVar.b), aws.d, aws.a, "EV connector");
                    if (ckcVarArr.length == 0) {
                        ckcVarArr = new EvConnectorType[]{EvConnectorType.EV_CONNECTOR_TYPE_UNKNOWN};
                    }
                } else {
                    ckcVarArr = new EvConnectorType[0];
                }
                this.e = new SensorSource(Collection.EL.stream(hashSet).mapToInt(axk.c).sorted().toArray(), ckdVarArr, ckcVarArr);
                return;
            }
            SensorFeed azjVar = (SensorFeed) n.get(NavInstructionTypeEnum);
            ImmutableSet a2 = azjVar.a();
            a2.getClass();
            MultisetElementSet cslVar = new MultisetElementSet(a2, hashSet);
            if (!cslVar.isEmpty()) {
                ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "<init>", 78, "SensorManager.java")).p("Sensor feed %s discovered sensors that were previously discovered:", azjVar);
                ImmutableMapBuilderImpl o = ez.o(cqoVar);
                ImmutableMapBuilderImpl cqzVar = o.d;
                if (cqzVar == null) {
                    PhenotypeFlagUriResolver cqoVar2 = new PhenotypeFlagUriResolver();
                    ImmutableSet cqwVar = o.e;
                    if (cqwVar == null) {
                        cqwVar = new EmptyImmutableSortedSet(IcuConfigApostropheModeAction);
                        o.e = cqwVar;
                    }
                    UnmodifiableIterator listIterator = cqwVar.listIterator();
                    while (listIterator.hasNext()) {
                        Map.Entry entry = (Map.Entry) listIterator.next();
                        Object value = entry.getValue();
                        Object key = entry.getKey();
                        ez.A(value, key);
                        java.util.Collection collection = (java.util.Collection) cqoVar2.a.get(value);
                        if (collection == null) {
                            Map map = cqoVar2.a;
                            CompactHashSet c = CompactHashSet.c();
                            map.put(value, c);
                            collection = c;
                        }
                        collection.add(key);
                    }
                    cqzVar = ez.o(cqoVar2);
                    cqzVar.d = o;
                    o.d = cqzVar;
                }
                UnmodifiableIterator it = cslVar.iterator();
                while (it.hasNext()) {
                    SensorType ckwVar = (SensorType) it.next();
                    ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "<init>", 83, "SensorManager.java")).r("%d (discovered by: %s)", ckwVar.w, cqzVar.b(ckwVar));
                }
                throw new IllegalArgumentException("Overlapping sensor feeds");
            }
            hashSet.addAll(a2);
            if (azjVar == null) {
                Iterator<E> it2 = a2.iterator();
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append('[');
                while (it2.hasNext()) {
                    if (!z) {
                        StaggeredGridLayoutParams.append(", ");
                    }
                    StaggeredGridLayoutParams.append(it2.next());
                    z = false;
                }
                StaggeredGridLayoutParams.append(']');
                String sb2 = StaggeredGridLayoutParams.toString();
                throw new NullPointerException(sb2.length() != 0 ? "null key in entry: null=".concat(sb2) : new String("null key in entry: null="));
            }
            java.util.Collection collection2 = (java.util.Collection) cqoVar.a.get(azjVar);
            if (collection2 != null) {
                for (Object obj : a2) {
                    ez.A(azjVar, obj);
                    collection2.add(obj);
                }
            } else {
                Iterator<E> it3 = a2.iterator();
                if (it3.hasNext()) {
                    CompactHashSet c2 = CompactHashSet.c();
                    while (it3.hasNext()) {
                        Object next = it3.next();
                        ez.A(azjVar, next);
                        c2.add(next);
                    }
                    cqoVar.a.put(azjVar, c2);
                }
            }
            i++;
        }
    }
}
