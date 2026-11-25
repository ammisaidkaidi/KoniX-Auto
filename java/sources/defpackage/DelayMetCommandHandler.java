package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DelayMetCommandHandler implements WorkConstraintsCallback, ahc, als {
    public final Context a;
    public final int b;
    public final String c;
    public final SystemAlarmScheduler d;
    public final WorkConstraintsTracker e;
    public PowerManager.WakeLock f;
    public boolean g = false;
    private int i = 0;
    private final Object h = new Object();

    static {
        WorkLogger.b("DelayMetCommandHandler");
    }

    public DelayMetCommandHandler(Context context, int i, String str, SystemAlarmScheduler aipVar) {
        this.a = context;
        this.b = i;
        this.d = aipVar;
        this.c = str;
        this.e = new WorkConstraintsTracker(context, aipVar.j, this);
    }

    private final void d() {
        synchronized (this.h) {
            this.e.b();
            this.d.c.a(this.c);
            PowerManager.WakeLock wakeLock = this.f;
            if (wakeLock != null && wakeLock.isHeld()) {
                WorkLogger a = WorkLogger.a();
                String.format("Releasing wakelock %s for WorkSpec %s", this.f, this.c);
                a.d(new Throwable[0]);
                this.f.release();
            }
        }
    }

    @Override // defpackage.WorkExecutionListener
    public final void a(String str, boolean z) {
        WorkLogger a = WorkLogger.a();
        String.format("onExecuted %s, %s", str, Boolean.valueOf(IcuMessageFormat));
        a.d(new Throwable[0]);
        d();
        if (IcuMessageFormat) {
            Intent e = SystemAlarmExecutionListener.e(this.a, this.c);
            SystemAlarmScheduler aipVar = this.d;
            aipVar.d(new SystemAlarmCompletionRunnable(aipVar, e, this.b));
        }
        if (this.g) {
            Intent b = SystemAlarmExecutionListener.b(this.a);
            SystemAlarmScheduler aipVar2 = this.d;
            aipVar2.d(new SystemAlarmCompletionRunnable(aipVar2, b, this.b));
        }
    }

    @Override // defpackage.WorkExecutionTimeoutListener
    public final void b(String str) {
        WorkLogger a = WorkLogger.a();
        String.format("Exceeded time limits on execution for %s", str);
        a.d(new Throwable[0]);
        c();
    }

    public final void c() {
        synchronized (this.h) {
            if (this.NavInstructionTypeEnum < 2) {
                this.i = 2;
                WorkLogger a = WorkLogger.a();
                String.format("Stopping work for WorkSpec %s", this.c);
                a.d(new Throwable[0]);
                Intent f = SystemAlarmExecutionListener.f(this.a, this.c);
                SystemAlarmScheduler aipVar = this.d;
                aipVar.d(new SystemAlarmCompletionRunnable(aipVar, f, this.b));
                if (this.d.d.f(this.c)) {
                    WorkLogger a2 = WorkLogger.a();
                    String.format("WorkSpec %s needs to be rescheduled", this.c);
                    a2.d(new Throwable[0]);
                    Intent e = SystemAlarmExecutionListener.e(this.a, this.c);
                    SystemAlarmScheduler aipVar2 = this.d;
                    aipVar2.d(new SystemAlarmCompletionRunnable(aipVar2, e, this.b));
                } else {
                    WorkLogger a3 = WorkLogger.a();
                    String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.c);
                    a3.d(new Throwable[0]);
                }
            } else {
                WorkLogger a4 = WorkLogger.a();
                String.format("Already stopped work for %s", this.c);
                a4.d(new Throwable[0]);
            }
        }
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void e(List list) {
        if (list.contains(this.c)) {
            synchronized (this.h) {
                if (this.i == 0) {
                    this.i = 1;
                    WorkLogger a = WorkLogger.a();
                    String.format("onAllConstraintsMet for %s", this.c);
                    a.d(new Throwable[0]);
                    if (this.d.d.g(this.c)) {
                        WorkExecutionTimer aluVar = this.d.c;
                        String str = this.c;
                        synchronized (aluVar.d) {
                            WorkLogger a2 = WorkLogger.a();
                            String.format("Starting timer for %s", str);
                            a2.d(new Throwable[0]);
                            aluVar.a(str);
                            WorkExecutionTimerRunnable altVar = new WorkExecutionTimerRunnable(aluVar, str);
                            aluVar.b.put(str, altVar);
                            aluVar.c.put(str, this);
                            aluVar.a.schedule(altVar, 600000L, TimeUnit.MILLISECONDS);
                        }
                    } else {
                        d();
                    }
                } else {
                    WorkLogger a3 = WorkLogger.a();
                    String.format("Already started work for %s", this.c);
                    a3.d(new Throwable[0]);
                }
            }
        }
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void f(List list) {
        c();
    }
}
