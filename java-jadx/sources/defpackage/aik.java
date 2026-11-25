package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aik implements aiu, ahc, als {
    public final Context a;
    public final int b;
    public final String c;
    public final aip d;
    public final aiv e;
    public PowerManager.WakeLock f;
    public boolean g = false;
    private int i = 0;
    private final Object h = new Object();

    static {
        agr.b("DelayMetCommandHandler");
    }

    public aik(Context context, int i, String str, aip aipVar) {
        this.a = context;
        this.b = i;
        this.d = aipVar;
        this.c = str;
        this.e = new aiv(context, aipVar.j, this);
    }

    private final void d() {
        synchronized (this.h) {
            this.e.b();
            this.d.c.a(this.c);
            PowerManager.WakeLock wakeLock = this.f;
            if (wakeLock != null && wakeLock.isHeld()) {
                agr a = agr.a();
                String.format("Releasing wakelock %s for WorkSpec %s", this.f, this.c);
                a.d(new Throwable[0]);
                this.f.release();
            }
        }
    }

    @Override // defpackage.ahc
    public final void a(String str, boolean z) {
        agr a = agr.a();
        String.format("onExecuted %s, %s", str, Boolean.valueOf(z));
        a.d(new Throwable[0]);
        d();
        if (z) {
            Intent e = aig.e(this.a, this.c);
            aip aipVar = this.d;
            aipVar.d(new aim(aipVar, e, this.b));
        }
        if (this.g) {
            Intent b = aig.b(this.a);
            aip aipVar2 = this.d;
            aipVar2.d(new aim(aipVar2, b, this.b));
        }
    }

    @Override // defpackage.als
    public final void b(String str) {
        agr a = agr.a();
        String.format("Exceeded time limits on execution for %s", str);
        a.d(new Throwable[0]);
        c();
    }

    public final void c() {
        synchronized (this.h) {
            if (this.i < 2) {
                this.i = 2;
                agr a = agr.a();
                String.format("Stopping work for WorkSpec %s", this.c);
                a.d(new Throwable[0]);
                Intent f = aig.f(this.a, this.c);
                aip aipVar = this.d;
                aipVar.d(new aim(aipVar, f, this.b));
                if (this.d.d.f(this.c)) {
                    agr a2 = agr.a();
                    String.format("WorkSpec %s needs to be rescheduled", this.c);
                    a2.d(new Throwable[0]);
                    Intent e = aig.e(this.a, this.c);
                    aip aipVar2 = this.d;
                    aipVar2.d(new aim(aipVar2, e, this.b));
                } else {
                    agr a3 = agr.a();
                    String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.c);
                    a3.d(new Throwable[0]);
                }
            } else {
                agr a4 = agr.a();
                String.format("Already stopped work for %s", this.c);
                a4.d(new Throwable[0]);
            }
        }
    }

    @Override // defpackage.aiu
    public final void e(List list) {
        if (list.contains(this.c)) {
            synchronized (this.h) {
                if (this.i == 0) {
                    this.i = 1;
                    agr a = agr.a();
                    String.format("onAllConstraintsMet for %s", this.c);
                    a.d(new Throwable[0]);
                    if (this.d.d.g(this.c)) {
                        alu aluVar = this.d.c;
                        String str = this.c;
                        synchronized (aluVar.d) {
                            agr a2 = agr.a();
                            String.format("Starting timer for %s", str);
                            a2.d(new Throwable[0]);
                            aluVar.a(str);
                            alt altVar = new alt(aluVar, str);
                            aluVar.b.put(str, altVar);
                            aluVar.c.put(str, this);
                            aluVar.a.schedule(altVar, 600000L, TimeUnit.MILLISECONDS);
                        }
                    } else {
                        d();
                    }
                } else {
                    agr a3 = agr.a();
                    String.format("Already started work for %s", this.c);
                    a3.d(new Throwable[0]);
                }
            }
        }
    }

    @Override // defpackage.aiu
    public final void f(List list) {
        c();
    }
}
