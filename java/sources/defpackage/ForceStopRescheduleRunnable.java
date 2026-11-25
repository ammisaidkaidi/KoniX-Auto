package defpackage;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ForceStopRescheduleRunnable implements Runnable {
    private static final String a = WorkLogger.b("ForceStopRunnable");
    private static final long b = TimeUnit.DAYS.toMillis(3650);
    private final Context c;
    private final WorkManagerImpl d;
    private int e = 0;

    public ForceStopRescheduleRunnable(Context context, WorkManagerImpl ahxVar) {
        this.c = context.getApplicationContext();
        this.d = ahxVar;
    }

    public static void a(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent b2 = b(context, true != SqliteContentValuesHelper.c() ? 134217728 : 167772160);
        long currentTimeMillis = System.currentTimeMillis() + b;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, b2);
        }
    }

    private static PendingIntent b(Context context, int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return PendingIntent.getBroadcast(context, -1, intent, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0212 A[Catch: SQLiteAccessPermException -> 0x025b, SQLiteConstraintException -> 0x025d, SQLiteTableLockedException -> 0x025f, SQLiteDatabaseLockedException -> 0x0261, SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException -> 0x0263, SQLiteCantOpenDatabaseException -> 0x0265, all -> 0x02ab, TRY_ENTER, TryCatch #6 {all -> 0x02ab, blocks: (B:3:0x0003, B:5:0x000b, B:7:0x0039, B:9:0x0046, B:11:0x006c, B:13:0x009e, B:14:0x00a6, B:16:0x00ac, B:21:0x00c0, B:23:0x00c6, B:24:0x00da, B:26:0x00e1, B:27:0x00f8, B:30:0x00ed, B:34:0x0102, B:36:0x010b, B:49:0x0173, B:53:0x017f, B:55:0x018f, B:57:0x0199, B:63:0x01bd, B:66:0x01c8, B:69:0x01d6, B:70:0x01d9, B:72:0x01e9, B:75:0x01f0, B:77:0x01f6, B:82:0x0238, B:79:0x0205, B:85:0x0212, B:87:0x020a, B:91:0x022a, B:100:0x0257, B:101:0x025a, B:103:0x0266, B:105:0x026d, B:108:0x028f, B:115:0x0297, B:116:0x02aa, B:117:0x0015), top: B:2:0x0003 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        WorkManagerImpl ahxVar;
        PendingIntent b2;
        try {
            if (TextUtils.isEmpty(null)) {
                WorkLogger.a().d(new Throwable[0]);
            } else {
                boolean a2 = WorkProcessUtils.a(this.c);
                WorkLogger a3 = WorkLogger.a();
                String.format("Is default app process = %s", Boolean.valueOf(a2));
                a3.d(new Throwable[0]);
                if (!a2) {
                    ahxVar = this.d;
                    ahxVar.d();
                    return;
                }
            }
            while (true) {
                Context context = this.c;
                if (WorkDbPathHelper.a(context).exists()) {
                    WorkLogger.a().d(new Throwable[0]);
                    HashMap hashMap = new HashMap();
                    File a4 = WorkDbPathHelper.a(context);
                    File file = new File(context.getNoBackupFilesDir(), "androidx.work.workdb");
                    hashMap.put(a4, file);
                    String[] strArr = ahv.b;
                    int length = strArr.length;
                    for (int i = 0; NavInstructionTypeEnum < 3; i++) {
                        String str = strArr[i];
                        hashMap.put(new File(String.valueOf(a4.getPath()).concat(String.valueOf(str))), new File(String.valueOf(file.getPath()).concat(String.valueOf(str))));
                    }
                    for (File file2 : hashMap.keySet()) {
                        File file3 = (File) hashMap.get(file2);
                        if (file2.exists() && file3 != null) {
                            if (file3.exists()) {
                                String format = String.format("Over-writing contents of %s", file3);
                                WorkLogger.a();
                                WorkLogger.g(ahv.a, format, new Throwable[0]);
                            }
                            if (file2.renameTo(file3)) {
                                String.format("Migrated %s to %s", file2, file3);
                            } else {
                                String.format("Renaming %s to %s failed", file2, file3);
                            }
                            WorkLogger.a().d(new Throwable[0]);
                        }
                    }
                }
                WorkLogger.a().d(new Throwable[0]);
                try {
                    boolean f = SystemJobScheduler.f(this.c, this.d);
                    WorkDatabase workDatabase = this.d.d;
                    WorkSpecDao n = workDatabase.n();
                    WorkProgressDaoImpl q = workDatabase.q();
                    workDatabase.f();
                    try {
                        List<WorkSpec> b3 = n.b();
                        boolean z = !b3.isEmpty();
                        if (IcuMessageFormat) {
                            for (WorkSpec akkVar : b3) {
                                n.i(1, akkVar.b);
                                n.h(akkVar.b, -1L);
                            }
                        }
                        q.a.e();
                        FrameworkSqliteStatement d = q.c.d();
                        q.a.f();
                        try {
                            d.a();
                            q.a.h();
                            q.a.g();
                            q.c.e(ProtoMsgIntStringInt);
                            workDatabase.h();
                            boolean z2 = !z ? f : true;
                            Long b4 = this.d.j.a.t().b("reschedule_needed");
                            if (b4 == null || b4.longValue() != 1) {
                                try {
                                    b2 = b(this.c, true != SqliteContentValuesHelper.c() ? 536870912 : 570425344);
                                } catch (IllegalArgumentException e) {
                                    e = e;
                                    WorkLogger.a();
                                    WorkLogger.g(a, "Ignoring exception", e);
                                    WorkLogger.a().d(new Throwable[0]);
                                    this.d.e();
                                    ahxVar = this.d;
                                    ahxVar.d();
                                    return;
                                } catch (SecurityException e2) {
                                    e = e2;
                                    WorkLogger.a();
                                    WorkLogger.g(a, "Ignoring exception", e);
                                    WorkLogger.a().d(new Throwable[0]);
                                    this.d.e();
                                    ahxVar = this.d;
                                    ahxVar.d();
                                    return;
                                }
                                if (Build.VERSION.SDK_INT >= 30) {
                                    if (b2 != null) {
                                        b2.cancel();
                                    }
                                    List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.c.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                                    if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                                        for (int i2 = 0; i2 < historicalProcessExitReasons.size(); i2++) {
                                            if (historicalProcessExitReasons.get(i2).getReason() == 10) {
                                                WorkLogger.a().d(new Throwable[0]);
                                                this.d.e();
                                                break;
                                            }
                                        }
                                    }
                                    if (z2) {
                                        WorkLogger.a().d(new Throwable[0]);
                                        WorkManagerImpl ahxVar2 = this.d;
                                        WorkSpecEntity.b(ahxVar2.c, ahxVar2.d, ahxVar2.e);
                                    }
                                } else {
                                    if (b2 == null) {
                                        a(this.c);
                                        WorkLogger.a().d(new Throwable[0]);
                                        this.d.e();
                                        break;
                                    }
                                    if (z2) {
                                    }
                                }
                            } else {
                                WorkLogger.a().d(new Throwable[0]);
                                this.d.e();
                                this.d.j.a.t().c(new WorkIdTimestampPair("reschedule_needed", 0L));
                            }
                            ahxVar = this.d;
                        } catch (Throwable th) {
                            q.a.g();
                            q.c.e(ProtoMsgIntStringInt);
                            throw th;
                        }
                    } finally {
                        workDatabase.g();
                    }
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e3) {
                    int i3 = this.e + 1;
                    this.e = i3;
                    if (i3 >= 3) {
                        WorkLogger.a();
                        WorkLogger.e(a, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e3);
                        throw new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e3);
                    }
                    WorkLogger a5 = WorkLogger.a();
                    String.format("Retrying after %s", Long.valueOf(i3 * 300));
                    a5.d(e3);
                    try {
                        Thread.sleep(this.e * 300);
                    } catch (InterruptedException e4) {
                    }
                }
            }
        } catch (Throwable th2) {
            this.d.d();
            throw th2;
        }
    }
}
