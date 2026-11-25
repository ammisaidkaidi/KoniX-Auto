package defpackage;

import android.database.Cursor;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EnqueueWorkRunnable implements Runnable {
    private static final String b = WorkLogger.b("EnqueueRunnable");
    public final WorkSpecSchedulerStub a = new WorkSpecSchedulerStub();
    private final EnqueuedWorkLiveData c;

    public EnqueueWorkRunnable(EnqueuedWorkLiveData ahiVar) {
        this.c = ahiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WorkDatabase workDatabase;
        boolean z;
        boolean z2;
        boolean z3;
        EnqueuedWorkLiveData ahiVar;
        boolean z4;
        boolean z5;
        EnqueueWorkRunnable albVar;
        EnqueueWorkRunnable albVar2 = this;
        try {
            EnqueuedWorkLiveData ahiVar2 = albVar2.c;
            HashSet hashSet = new HashSet();
            hashSet.addAll(ahiVar2.d);
            Set L = EnqueuedWorkLiveData.L();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                if (L.contains((String) it.next())) {
                    throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", albVar2.c));
                }
            }
            hashSet.removeAll(ahiVar2.d);
            WorkDatabase workDatabase2 = albVar2.c.a.d;
            workDatabase2.f();
            try {
                EnqueuedWorkLiveData ahiVar3 = albVar2.c;
                Set L2 = EnqueuedWorkLiveData.L();
                WorkManagerImpl ahxVar = ahiVar3.a;
                List<WorkRequest> list = ahiVar3.c;
                String[] strArr = (String[]) L2.toArray(new String[0]);
                String str = ahiVar3.b;
                long currentTimeMillis = System.currentTimeMillis();
                WorkDatabase workDatabase3 = ahxVar.d;
                boolean z6 = strArr != null && strArr.length > 0;
                try {
                    if (z6) {
                        z = false;
                        z2 = false;
                        z3 = true;
                        for (String str2 : strArr) {
                            WorkSpec a = workDatabase3.n().a(str2);
                            if (SingleStringProtoMessage == null) {
                                WorkLogger.a();
                                WorkLogger.e(b, String.format("Prerequisite %s doesn'IcuLocaleResourceBundle exist; not enqueuing", str2), new Throwable[0]);
                                ahiVar = ahiVar3;
                                workDatabase = workDatabase2;
                                z5 = false;
                                break;
                            }
                            int i = a.q;
                            z3 &= i == 3;
                            if (NavInstructionTypeEnum == 4) {
                                z = true;
                            } else if (NavInstructionTypeEnum == 6) {
                                z2 = true;
                            }
                        }
                    } else {
                        z = false;
                        z2 = false;
                        z3 = true;
                    }
                    boolean z7 = !TextUtils.isEmpty(str);
                    if (!z7 || z6) {
                        ahiVar = ahiVar3;
                        workDatabase = workDatabase2;
                        z4 = false;
                    } else {
                        try {
                            WorkSpecDao n = workDatabase3.n();
                            FrameworkSqliteDatabaseFacade a2 = FrameworkSqliteDatabaseFacade.a("SELECT id, state FROM workspec WHERE WindowInsetsCompatApi28Impl IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
                            if (str == null) {
                                a2.e(1);
                            } else {
                                a2.f(1, str);
                            }
                            ((WorkSpecDaoImpl) n).a.e();
                            Cursor k = ((WorkSpecDaoImpl) n).a.k(a2);
                            try {
                                int s = ew.s(k, "id");
                                int s2 = ew.s(k, "state");
                                workDatabase = workDatabase2;
                                try {
                                    ArrayList arrayList = new ArrayList(k.getCount());
                                    while (k.moveToNext()) {
                                        SystemIdInfoEntry akjVar = new SystemIdInfoEntry();
                                        EnqueuedWorkLiveData ahiVar4 = ahiVar3;
                                        akjVar.a = k.getString(IcuMessageArgTypeHolder);
                                        akjVar.b = WorkDataEnumConverters.i(k.getInt(s2));
                                        arrayList.add(akjVar);
                                        ahiVar3 = ahiVar4;
                                    }
                                    ahiVar = ahiVar3;
                                    k.close();
                                    a2.i();
                                    if (arrayList.isEmpty()) {
                                        z4 = false;
                                    } else {
                                        Iterator it2 = arrayList.iterator();
                                        while (it2.hasNext()) {
                                            int i2 = ((SystemIdInfoEntry) it2.next()).b;
                                            if (i2 == 1 || i2 == 2) {
                                                z5 = false;
                                                break;
                                            }
                                        }
                                        new ProcessorStopWorkRunnable(ahxVar, str).run();
                                        WorkSpecDao n2 = workDatabase3.n();
                                        Iterator it3 = arrayList.iterator();
                                        while (it3.hasNext()) {
                                            String str3 = ((SystemIdInfoEntry) it3.next()).a;
                                            ((WorkSpecDaoImpl) n2).a.e();
                                            FrameworkSqliteStatement d = ((WorkSpecDaoImpl) n2).c.d();
                                            if (str3 == null) {
                                                d.e(1);
                                            } else {
                                                d.f(1, str3);
                                            }
                                            ((WorkSpecDaoImpl) n2).a.f();
                                            try {
                                                d.a();
                                                ((WorkSpecDaoImpl) n2).a.h();
                                                ((WorkSpecDaoImpl) n2).a.g();
                                                ((WorkSpecDaoImpl) n2).c.e(ProtoMsgIntStringInt);
                                            } catch (Throwable th) {
                                                ((WorkSpecDaoImpl) n2).a.g();
                                                ((WorkSpecDaoImpl) n2).c.e(ProtoMsgIntStringInt);
                                                throw th;
                                            }
                                        }
                                        z4 = true;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    k.close();
                                    a2.i();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            workDatabase = workDatabase2;
                            workDatabase.g();
                            throw th;
                        }
                    }
                    for (WorkRequest agyVar : list) {
                        WorkSpec akkVar = agyVar.a;
                        if (!z6 || z3) {
                            if (akkVar.d()) {
                                akkVar.m = 0L;
                            } else {
                                akkVar.m = currentTimeMillis;
                            }
                        } else if (IcuMessageFormat) {
                            akkVar.q = 4;
                        } else if (z2) {
                            akkVar.q = 6;
                        } else {
                            akkVar.q = 5;
                        }
                        z4 |= !(akkVar.q != 1);
                        WorkSpecDao n3 = workDatabase3.n();
                        ((WorkSpecDaoImpl) n3).a.e();
                        ((WorkSpecDaoImpl) n3).a.f();
                        try {
                            ((WorkSpecDaoImpl) n3).b.a(akkVar);
                            ((WorkSpecDaoImpl) n3).a.h();
                            if (z6) {
                                for (String str4 : strArr) {
                                    AuthScope boaVar = new AuthScope(agyVar.a(), str4, null);
                                    WorkAuxiliaryDaoImpl u = workDatabase3.u();
                                    u.a.e();
                                    u.a.f();
                                    try {
                                        u.b.a(boaVar);
                                        u.a.h();
                                        u.a.g();
                                    } catch (Throwable th5) {
                                        u.a.g();
                                        throw th5;
                                    }
                                }
                            }
                            for (String str5 : agyVar.b) {
                                WorkAuxiliaryDaoImpl r = workDatabase3.r();
                                AuthScope boaVar2 = new AuthScope(str5, agyVar.a());
                                r.a.e();
                                r.a.f();
                                try {
                                    r.b.a(boaVar2);
                                    r.a.h();
                                    r.a.g();
                                } catch (Throwable th6) {
                                    r.a.g();
                                    throw th6;
                                }
                            }
                            if (z7) {
                                WorkAuxiliaryDaoImpl s3 = workDatabase3.s();
                                AuthScope boaVar3 = new AuthScope(str, agyVar.a());
                                s3.a.e();
                                s3.a.f();
                                try {
                                    s3.b.a(boaVar3);
                                    s3.a.h();
                                    s3.a.g();
                                } catch (Throwable th7) {
                                    s3.a.g();
                                    throw th7;
                                }
                            }
                        } finally {
                            ((WorkSpecDaoImpl) n3).a.g();
                        }
                    }
                    z5 = z4;
                    ahiVar.e = true;
                    workDatabase.h();
                    try {
                        workDatabase.g();
                        if (z5) {
                            albVar = this;
                            WorkPackageManagerHelper.a(albVar.c.a.b, RescheduleReceiver.class, true);
                            WorkManagerImpl ahxVar2 = albVar.c.a;
                            WorkSpecEntity.b(ahxVar2.c, ahxVar2.d, ahxVar2.e);
                        } else {
                            albVar = this;
                        }
                        albVar.a.a(agv.a);
                    } catch (Throwable th8) {
                        th = th8;
                        albVar2 = this;
                        albVar2.a.a(new WorkOperationFailureState(ActivityResultDispatchRunnable));
                    }
                } catch (Throwable th9) {
                    th = th9;
                    workDatabase.g();
                    throw th;
                }
            } catch (Throwable th10) {
                th = th10;
                workDatabase = workDatabase2;
            }
        } catch (Throwable th11) {
            th = th11;
        }
    }
}
