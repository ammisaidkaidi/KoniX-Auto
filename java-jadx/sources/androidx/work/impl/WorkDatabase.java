package androidx.work.impl;

import android.app.ActivityManager;
import android.content.Context;
import defpackage.adw;
import defpackage.adx;
import defpackage.aec;
import defpackage.aed;
import defpackage.aee;
import defpackage.aei;
import defpackage.ael;
import defpackage.aem;
import defpackage.aen;
import defpackage.afc;
import defpackage.afd;
import defpackage.afj;
import defpackage.afk;
import defpackage.afl;
import defpackage.ahj;
import defpackage.ahk;
import defpackage.ahs;
import defpackage.aht;
import defpackage.ahu;
import defpackage.ahv;
import defpackage.akc;
import defpackage.aki;
import defpackage.akl;
import defpackage.akx;
import defpackage.ev;
import defpackage.uf;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class WorkDatabase extends aee {
    private static final long j = TimeUnit.DAYS.toMillis(1);

    public static WorkDatabase m(Context context, Executor executor, boolean z) {
        aec aecVar;
        Executor executor2;
        if (z) {
            aecVar = new aec(context, WorkDatabase.class, null);
            aecVar.h = true;
        } else {
            String str = ahv.a;
            if ("androidx.work.workdb".trim().length() == 0) {
                throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            }
            aec aecVar2 = new aec(context, WorkDatabase.class, "androidx.work.workdb");
            aecVar2.g = new ahj(context);
            aecVar = aecVar2;
        }
        aecVar.e = executor;
        ahk ahkVar = new ahk();
        if (aecVar.d == null) {
            aecVar.d = new ArrayList();
        }
        aecVar.d.add(ahkVar);
        aecVar.a(ahu.a);
        aecVar.a(new ahs(context, 2, 3));
        aecVar.a(ahu.b);
        aecVar.a(ahu.c);
        aecVar.a(new ahs(context, 5, 6));
        aecVar.a(ahu.d);
        aecVar.a(ahu.e);
        aecVar.a(ahu.f);
        aecVar.a(new aht(context));
        aecVar.a(new ahs(context, 10, 11));
        aecVar.a(ahu.g);
        aecVar.i = false;
        aecVar.j = true;
        if (aecVar.c == null) {
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
        Executor executor3 = aecVar.e;
        if (executor3 == null && aecVar.f == null) {
            Executor executor4 = uf.a;
            aecVar.f = executor4;
            aecVar.e = executor4;
        } else if (executor3 != null && aecVar.f == null) {
            aecVar.f = executor3;
        } else if (executor3 == null && (executor2 = aecVar.f) != null) {
            aecVar.e = executor2;
        }
        afc afcVar = aecVar.g;
        if (afcVar == null) {
            afcVar = new afl();
        }
        afc afcVar2 = afcVar;
        Context context2 = aecVar.c;
        String str2 = aecVar.b;
        aed aedVar = aecVar.k;
        ArrayList arrayList = aecVar.d;
        boolean z2 = aecVar.h;
        ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
        adx adxVar = new adx(context2, str2, afcVar2, aedVar, arrayList, z2, (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3, aecVar.e, aecVar.f, aecVar.i, aecVar.j);
        aee aeeVar = (aee) ev.f(aecVar.a);
        aeeVar.b = aeeVar.b(adxVar);
        Set emptySet = Collections.emptySet();
        BitSet bitSet = new BitSet();
        Iterator it = emptySet.iterator();
        while (true) {
            int i = -1;
            if (!it.hasNext()) {
                for (int size = adxVar.g.size() - 1; size >= 0; size--) {
                    if (!bitSet.get(size)) {
                        throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                    }
                }
                Map map = aeeVar.f;
                for (aen aenVar : Collections.emptyList()) {
                    if (!Collections.unmodifiableMap(adxVar.d.a).containsKey(Integer.valueOf(aenVar.a))) {
                        adxVar.d.a(aenVar);
                    }
                }
                if (((aei) aee.l(aei.class, aeeVar.b)) != null) {
                    throw null;
                }
                if (((adw) aee.l(adw.class, aeeVar.b)) != null) {
                    throw null;
                }
                boolean z3 = adxVar.m == 3;
                afd afdVar = aeeVar.b;
                synchronized (((afk) afdVar).a) {
                    afj afjVar = ((afk) afdVar).b;
                    if (afjVar != null) {
                        afjVar.setWriteAheadLoggingEnabled(z3);
                    }
                    ((afk) afdVar).c = z3;
                }
                aeeVar.e = adxVar.e;
                aeeVar.a = adxVar.i;
                new ael(adxVar.j);
                aeeVar.d = adxVar.h;
                Map emptyMap = Collections.emptyMap();
                BitSet bitSet2 = new BitSet();
                for (Map.Entry entry : emptyMap.entrySet()) {
                    Class cls = (Class) entry.getKey();
                    for (Class cls2 : (List) entry.getValue()) {
                        int size2 = adxVar.f.size() - 1;
                        while (true) {
                            if (size2 < 0) {
                                size2 = -1;
                                break;
                            }
                            if (cls2.isAssignableFrom(adxVar.f.get(size2).getClass())) {
                                bitSet2.set(size2);
                                break;
                            }
                            size2--;
                        }
                        if (size2 < 0) {
                            throw new IllegalArgumentException("A required type converter (" + cls2 + ") for " + cls.getCanonicalName() + " is missing in the database configuration.");
                        }
                        aeeVar.g.put(cls2, adxVar.f.get(size2));
                    }
                }
                for (int size3 = adxVar.f.size() - 1; size3 >= 0; size3--) {
                    if (!bitSet2.get(size3)) {
                        throw new IllegalArgumentException("Unexpected type converter " + adxVar.f.get(size3) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                }
                return (WorkDatabase) aeeVar;
            }
            Class cls3 = (Class) it.next();
            int size4 = adxVar.g.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (cls3.isAssignableFrom(adxVar.g.get(size4).getClass())) {
                    bitSet.set(size4);
                    i = size4;
                    break;
                }
                size4--;
            }
            if (i < 0) {
                throw new IllegalArgumentException("A required auto migration spec (" + cls3.getCanonicalName() + ") is missing in the database configuration.");
            }
            aeeVar.f.put(cls3, (aem) adxVar.g.get(i));
        }
    }

    public static String o() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - j) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract akl n();

    public abstract akc p();

    public abstract aki q();

    public abstract akx r();

    public abstract akx s();

    public abstract akx t();

    public abstract akx u();
}
