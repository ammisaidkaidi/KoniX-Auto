package androidx.work.impl;

import android.app.ActivityManager;
import android.content.Context;
import defpackage.ThrowingSqliteOpenHelperStub;
import defpackage.RoomDatabaseBuilder;
import defpackage.RoomDatabaseVersionHelper;
import defpackage.ViewModelStoreWithMigrationMap;
import defpackage.RoomDatabaseBase;
import defpackage.SynchronizedThrowingSqliteOpenHelperStub;
import defpackage.HandlerPostingExecutor;
import defpackage.SavedStateRegistryProvider;
import defpackage.RoomMigration;
import defpackage.SqliteOpenHelperFactory;
import defpackage.SqliteOpenHelperInterface;
import defpackage.FrameworkSqliteOpenHelper;
import defpackage.LazySqliteOpenHelper;
import defpackage.FrameworkSqliteOpenHelperFactory;
import defpackage.WorkDatabaseOpenHelperFactory;
import defpackage.WorkDatabaseCallback;
import defpackage.WorkRescheduleMigration;
import defpackage.WorkDbMigration9To10;
import defpackage.WorkDatabaseMigrations;
import defpackage.WorkDbPathHelper;
import defpackage.SystemIdInfoDaoImpl;
import defpackage.WorkProgressDaoImpl;
import defpackage.WorkSpecDao;
import defpackage.WorkAuxiliaryDaoImpl;
import defpackage.ProtoTextFormatPrinterUtil;
import defpackage.ArchTaskExecutorDelegate;
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
public abstract class WorkDatabase extends RoomDatabaseBase {
    private static final long j = TimeUnit.DAYS.toMillis(1);

    public static WorkDatabase m(Context context, Executor executor, boolean z) {
        RoomDatabaseVersionHelper aecVar;
        Executor executor2;
        if (z) {
            aecVar = new RoomDatabaseVersionHelper(context, WorkDatabase.class, null);
            aecVar.h = true;
        } else {
            String str = ahv.a;
            if ("androidx.work.workdb".trim().length() == 0) {
                throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            }
            RoomDatabaseVersionHelper aecVar2 = new RoomDatabaseVersionHelper(context, WorkDatabase.class, "androidx.work.workdb");
            aecVar2.g = new WorkDatabaseOpenHelperFactory(context);
            aecVar = aecVar2;
        }
        aecVar.e = executor;
        WorkDatabaseCallback ahkVar = new WorkDatabaseCallback();
        if (aecVar.d == null) {
            aecVar.d = new ArrayList();
        }
        aecVar.d.add(ahkVar);
        aecVar.a(ahu.a);
        aecVar.a(new WorkRescheduleMigration(context, 2, 3));
        aecVar.a(ahu.b);
        aecVar.a(ahu.c);
        aecVar.a(new WorkRescheduleMigration(context, 5, 6));
        aecVar.a(ahu.d);
        aecVar.a(ahu.e);
        aecVar.a(ahu.f);
        aecVar.a(new WorkDbMigration9To10(context));
        aecVar.a(new WorkRescheduleMigration(context, 10, 11));
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
        SqliteOpenHelperFactory afcVar = aecVar.g;
        if (afcVar == null) {
            afcVar = new FrameworkSqliteOpenHelperFactory();
        }
        SqliteOpenHelperFactory afcVar2 = afcVar;
        Context context2 = aecVar.c;
        String str2 = aecVar.b;
        ViewModelStoreWithMigrationMap aedVar = aecVar.k;
        ArrayList arrayList = aecVar.d;
        boolean z2 = aecVar.h;
        ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
        RoomDatabaseBuilder adxVar = new RoomDatabaseBuilder(context2, str2, afcVar2, aedVar, arrayList, z2, (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3, aecVar.e, aecVar.f, aecVar.i, aecVar.j);
        RoomDatabaseBase aeeVar = (RoomDatabaseBase) ev.f(aecVar.a);
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
                for (RoomMigration aenVar : Collections.emptyList()) {
                    if (!Collections.unmodifiableMap(adxVar.d.a).containsKey(Integer.valueOf(aenVar.a))) {
                        adxVar.d.a(aenVar);
                    }
                }
                if (((SynchronizedThrowingSqliteOpenHelperStub) RoomDatabaseBase.l(SynchronizedThrowingSqliteOpenHelperStub.class, aeeVar.b)) != null) {
                    throw null;
                }
                if (((ThrowingSqliteOpenHelperStub) RoomDatabaseBase.l(ThrowingSqliteOpenHelperStub.class, aeeVar.b)) != null) {
                    throw null;
                }
                boolean z3 = adxVar.m == 3;
                SqliteOpenHelperInterface afdVar = aeeVar.b;
                synchronized (((LazySqliteOpenHelper) afdVar).a) {
                    FrameworkSqliteOpenHelper afjVar = ((LazySqliteOpenHelper) afdVar).b;
                    if (afjVar != null) {
                        afjVar.setWriteAheadLoggingEnabled(z3);
                    }
                    ((LazySqliteOpenHelper) afdVar).c = z3;
                }
                aeeVar.e = adxVar.e;
                aeeVar.a = adxVar.i;
                new HandlerPostingExecutor(adxVar.j);
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
            aeeVar.f.put(cls3, (SavedStateRegistryProvider) adxVar.g.get(i));
        }
    }

    public static String o() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - j) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract WorkSpecDao n();

    public abstract SystemIdInfoDaoImpl p();

    public abstract WorkProgressDaoImpl q();

    public abstract WorkAuxiliaryDaoImpl r();

    public abstract WorkAuxiliaryDaoImpl s();

    public abstract WorkAuxiliaryDaoImpl t();

    public abstract WorkAuxiliaryDaoImpl u();
}
