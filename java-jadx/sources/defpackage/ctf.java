package defpackage;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ctf implements ctq, cub {
    private static final String a = new String();
    public final long b;
    public cte c;
    private final Level d;
    private cti e;
    private cvc f;
    private Object[] g;

    protected ctf(Level level) {
        long b = cva.b();
        this.c = null;
        this.e = null;
        this.f = null;
        this.g = null;
        hf.u(level, "level");
        this.d = level;
        this.b = b;
    }

    private final void E(String str, Object... objArr) {
        this.g = objArr;
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof cta) {
                objArr[i] = ((cta) obj).a();
            }
        }
        if (str != a) {
            this.f = new cvc(a(), str);
        }
        cwa k = cva.k();
        if (!k.a()) {
            cwa cwaVar = (cwa) i().d(ctd.f);
            if (cwaVar != null && !cwaVar.a()) {
                k = k.a() ? cwaVar : new cwa(new cvy(k.c, cwaVar.c));
            }
            m(ctd.f, k);
        }
        csv c = c();
        try {
            cwo cwoVar = (cwo) cwo.a.get();
            int i2 = cwoVar.b + 1;
            cwoVar.b = i2;
            if (i2 == 0) {
                throw new AssertionError("Overflow of RecursionDepth (possible error in core library)");
            }
            try {
                if (i2 <= 100) {
                    c.a.c(this);
                } else {
                    csv.d("unbounded recursion in log statement", this);
                }
                if (cwoVar != null) {
                    cwoVar.close();
                }
            } catch (Throwable th) {
                if (cwoVar != null) {
                    try {
                        cwoVar.close();
                    } catch (Throwable th2) {
                    }
                }
                throw th;
            }
        } catch (RuntimeException e) {
            try {
                c.a.b(e, this);
            } catch (cud e2) {
                throw e2;
            } catch (RuntimeException e3) {
                String name = e3.getClass().getName();
                String message = e3.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 2 + String.valueOf(message).length());
                sb.append(name);
                sb.append(": ");
                sb.append(message);
                csv.d(sb.toString(), this);
                try {
                    e3.printStackTrace(System.err);
                } catch (RuntimeException e4) {
                }
            }
        }
    }

    private final boolean F() {
        ctj ctjVar;
        if (this.e == null) {
            this.e = cva.g().a(ctf.class, 1);
        }
        if (this.e != cti.a) {
            ctjVar = this.e;
            cte cteVar = this.c;
            if (cteVar != null && cteVar.b > 0) {
                hf.u(ctjVar, "logSiteKey");
                int i = cteVar.b;
                for (int i2 = 0; i2 < i; i2++) {
                    if (ctd.d.equals(cteVar.c(i2))) {
                        Object e = cteVar.e(i2);
                        ctjVar = e instanceof ctr ? ((ctr) e).b() : new ctu(ctjVar, e);
                    }
                }
            }
        } else {
            ctjVar = null;
        }
        return b(ctjVar);
    }

    @Override // defpackage.ctq
    public final void A(Object obj, Object obj2, Object obj3, Object obj4) {
        if (F()) {
            E("Values found for both devices: %s and usb %s, btValue: %s, usbValue: %s", obj, obj2, obj3, obj4);
        }
    }

    @Override // defpackage.ctq
    public final void B(Object obj, boolean z) {
        if (F()) {
            E("onShutdown was called multiple times or onSetup was never called, handler: %s, is thread alive: %b", obj, Boolean.valueOf(z));
        }
    }

    @Override // defpackage.ctq
    public final void C(boolean z, boolean z2) {
        if (F()) {
            E("Failed to acquire semaphore. Is media codec running: %b, thread interrupted: %b", Boolean.valueOf(z), Boolean.valueOf(z2));
        }
    }

    @Override // defpackage.ctq
    public final void D(long j) {
        if (F()) {
            E("**Latency measurement (ms) ** Video setup latency: %d", Long.valueOf(j));
        }
    }

    protected abstract cwj a();

    protected boolean b(ctj ctjVar) {
        throw null;
    }

    protected abstract csv c();

    protected abstract ctq d();

    @Override // defpackage.cub
    public final long e() {
        return this.b;
    }

    @Override // defpackage.cub
    public final cti f() {
        cti ctiVar = this.e;
        if (ctiVar != null) {
            return ctiVar;
        }
        throw new IllegalStateException("cannot request log site information prior to postProcess()");
    }

    @Override // defpackage.ctq
    public final ctq g(Throwable th) {
        ctt cttVar = ctd.a;
        hf.u(cttVar, "metadata key");
        if (th != null) {
            m(cttVar, th);
        }
        return d();
    }

    @Override // defpackage.ctq
    public final ctq h(String str, String str2, int i, String str3) {
        cth cthVar = new cth(str, str2, i, str3);
        if (this.e == null) {
            this.e = cthVar;
        }
        return d();
    }

    @Override // defpackage.cub
    public final cug i() {
        cte cteVar = this.c;
        return cteVar != null ? cteVar : cuf.a;
    }

    @Override // defpackage.cub
    public final cvc j() {
        return this.f;
    }

    @Override // defpackage.cub
    public final Object k() {
        if (this.f == null) {
            return this.g[0];
        }
        throw new IllegalStateException("cannot get literal argument if a template context exists");
    }

    @Override // defpackage.cub
    public final Level l() {
        return this.d;
    }

    protected final void m(ctt cttVar, Object obj) {
        int a2;
        if (this.c == null) {
            this.c = new cte();
        }
        cte cteVar = this.c;
        if (!cttVar.b && (a2 = cteVar.a(cttVar)) != -1) {
            Object[] objArr = cteVar.a;
            hf.u(obj, "metadata value");
            objArr[a2 + a2 + 1] = obj;
            return;
        }
        int i = cteVar.b + 1;
        Object[] objArr2 = cteVar.a;
        int length = objArr2.length;
        if (i + i > length) {
            cteVar.a = Arrays.copyOf(objArr2, length + length);
        }
        Object[] objArr3 = cteVar.a;
        int i2 = cteVar.b;
        hf.u(cttVar, "metadata key");
        objArr3[i2 + i2] = cttVar;
        Object[] objArr4 = cteVar.a;
        int i3 = cteVar.b;
        hf.u(obj, "metadata value");
        objArr4[i3 + i3 + 1] = obj;
        cteVar.b++;
    }

    @Override // defpackage.ctq
    public final void n(String str) {
        if (F()) {
            E(a, str);
        }
    }

    @Override // defpackage.ctq
    public final void o(String str, int i) {
        if (F()) {
            E(str, Integer.valueOf(i));
        }
    }

    @Override // defpackage.ctq
    public final void p(String str, Object obj) {
        if (F()) {
            E(str, obj);
        }
    }

    @Override // defpackage.ctq
    public final void q(String str, int i, int i2) {
        if (F()) {
            E(str, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    @Override // defpackage.ctq
    public final void r(String str, int i, Object obj) {
        if (F()) {
            E(str, Integer.valueOf(i), obj);
        }
    }

    @Override // defpackage.ctq
    public final void s(String str, Object obj, int i) {
        if (F()) {
            E(str, obj, Integer.valueOf(i));
        }
    }

    @Override // defpackage.ctq
    public final void t(String str, Object obj, Object obj2) {
        if (F()) {
            E(str, obj, obj2);
        }
    }

    @Override // defpackage.ctq
    public final void u(String str, Object obj, Object obj2, Object obj3) {
        if (F()) {
            E(str, obj, obj2, obj3);
        }
    }

    @Override // defpackage.cub
    public final boolean v() {
        return this.c != null && Boolean.TRUE.equals(this.c.d(ctd.e));
    }

    @Override // defpackage.cub
    public final Object[] w() {
        if (this.f != null) {
            return this.g;
        }
        throw new IllegalStateException("cannot get arguments unless a template context exists");
    }

    @Override // defpackage.ctq
    public final void x(short s) {
        if (F()) {
            E("Message of unknown type %d received", Short.valueOf(s));
        }
    }

    @Override // defpackage.ctq
    public final void y(TimeUnit timeUnit) {
        throw null;
    }

    @Override // defpackage.ctq
    public final void z(Object obj, long j) {
        if (F()) {
            E("Caught unhandled exception in thread %s/%d", obj, Long.valueOf(j));
        }
    }
}
