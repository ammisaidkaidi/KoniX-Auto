package defpackage;

import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.SensorSource;
import defpackage.azj;
import defpackage.azl;
import defpackage.azm;
import defpackage.ckw;
import defpackage.cqh;
import defpackage.cqi;
import defpackage.cqk;
import defpackage.cqw;
import defpackage.cst;
import defpackage.csx;
import defpackage.dao;
import j$.util.Collection;
import j$.util.function.BooleanSupplier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azm {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/sensors/SensorManager");
    public static final BooleanSupplier b = new BooleanSupplier() { // from class: azk
        @Override // j$.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            csz cszVar = azm.a;
            return true;
        }
    };
    public final cqh c;
    public final cqz d;
    public final SensorSource e;

    public azm(zn znVar, awt awtVar, Set set) {
        ckc[] ckcVarArr;
        cqh n = cqh.n(set);
        this.c = n;
        znVar.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.sensors.SensorManager$1
            @Override // defpackage.zj
            public final void a() {
                Object obj;
                azm azmVar = azm.this;
                cqh cqhVar = azmVar.c;
                int size = cqhVar.size();
                for (int i = 0; i < size; i++) {
                    azj azjVar = (azj) cqhVar.get(i);
                    cqw b2 = azmVar.d.b(azjVar);
                    cqi f = cqk.f(b2.size());
                    cst listIterator = b2.listIterator();
                    while (listIterator.hasNext()) {
                        ckw ckwVar = (ckw) listIterator.next();
                        ckw ckwVar2 = ckw.SENSOR_LOCATION;
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
                                obj = new azl(dao.a(10.0d));
                                break;
                            case SENSOR_FUEL:
                            case SENSOR_ENVIRONMENT_DATA:
                            case SENSOR_HVAC_DATA:
                                obj = new azl(dao.a(1.0d));
                                break;
                            case SENSOR_OBDII_DIAGNOSTIC_CODE:
                            case SENSOR_DEAD_RECKONING_DATA:
                                ((csx) azm.a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "createRateLimiterForSensor", 205, "SensorManager.java")).o("Not reporting deprecated sensor %d", ckwVar.w);
                                obj = null;
                                break;
                            default:
                                throw new AssertionError();
                        }
                        if (obj != null) {
                            f.f(ckwVar, obj);
                        }
                    }
                    cqk c = f.c();
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

            @Override // defpackage.zj
            public final void b() {
                cqh h = azm.this.c.h();
                int size = h.size();
                for (int i = 0; i < size; i++) {
                    ((azj) h.get(i)).e();
                }
            }

            @Override // defpackage.zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void f() {
            }
        });
        HashSet hashSet = new HashSet();
        cqo cqoVar = new cqo();
        int size = n.size();
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= size) {
                this.d = ez.o(cqoVar);
                ckd[] ckdVarArr = (ckd[]) awt.c((int[]) awtVar.b(Integer[].class, 289472773).map(awq.d).orElse(new int[0]), aws.e, aws.c, "fuel type");
                ckdVarArr = ckdVarArr.length == 0 ? new ckd[]{ckd.FUEL_TYPE_UNKNOWN} : ckdVarArr;
                if (Arrays.asList(ckdVarArr).contains(ckd.FUEL_TYPE_ELECTRIC)) {
                    ckcVarArr = (ckc[]) awt.c(CarCompat.getEvConnectorTypesSafe(awtVar.b), aws.d, aws.a, "EV connector");
                    if (ckcVarArr.length == 0) {
                        ckcVarArr = new ckc[]{ckc.EV_CONNECTOR_TYPE_UNKNOWN};
                    }
                } else {
                    ckcVarArr = new ckc[0];
                }
                this.e = new SensorSource(Collection.EL.stream(hashSet).mapToInt(axk.c).sorted().toArray(), ckdVarArr, ckcVarArr);
                return;
            }
            azj azjVar = (azj) n.get(i);
            cqw a2 = azjVar.a();
            a2.getClass();
            csl cslVar = new csl(a2, hashSet);
            if (!cslVar.isEmpty()) {
                ((csx) a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "<init>", 78, "SensorManager.java")).p("Sensor feed %s discovered sensors that were previously discovered:", azjVar);
                cqz o = ez.o(cqoVar);
                cqz cqzVar = o.d;
                if (cqzVar == null) {
                    cqo cqoVar2 = new cqo();
                    cqw cqwVar = o.e;
                    if (cqwVar == null) {
                        cqwVar = new cqx(o);
                        o.e = cqwVar;
                    }
                    cst listIterator = cqwVar.listIterator();
                    while (listIterator.hasNext()) {
                        Map.Entry entry = (Map.Entry) listIterator.next();
                        Object value = entry.getValue();
                        Object key = entry.getKey();
                        ez.A(value, key);
                        java.util.Collection collection = (java.util.Collection) cqoVar2.a.get(value);
                        if (collection == null) {
                            Map map = cqoVar2.a;
                            cpk c = cpk.c();
                            map.put(value, c);
                            collection = c;
                        }
                        collection.add(key);
                    }
                    cqzVar = ez.o(cqoVar2);
                    cqzVar.d = o;
                    o.d = cqzVar;
                }
                cst it = cslVar.iterator();
                while (it.hasNext()) {
                    ckw ckwVar = (ckw) it.next();
                    ((csx) a.b().h("com/google/android/apps/auto/aareceiver/sensors/SensorManager", "<init>", 83, "SensorManager.java")).r("%d (discovered by: %s)", ckwVar.w, cqzVar.b(ckwVar));
                }
                throw new IllegalArgumentException("Overlapping sensor feeds");
            }
            hashSet.addAll(a2);
            if (azjVar == null) {
                Iterator<E> it2 = a2.iterator();
                StringBuilder sb = new StringBuilder();
                sb.append('[');
                while (it2.hasNext()) {
                    if (!z) {
                        sb.append(", ");
                    }
                    sb.append(it2.next());
                    z = false;
                }
                sb.append(']');
                String sb2 = sb.toString();
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
                    cpk c2 = cpk.c();
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
