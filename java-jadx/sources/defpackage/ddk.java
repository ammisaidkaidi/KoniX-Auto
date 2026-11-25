package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ddk extends dbv {
    public static final Map r = new ConcurrentHashMap();
    public dfr s = dfr.a;
    protected int t = -1;

    public static Object B(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object C(der derVar, String str, Object[] objArr) {
        return new dfb(derVar, str, objArr);
    }

    protected static void D(Class cls, ddk ddkVar) {
        r.put(cls, ddkVar);
    }

    public static void F(ddk ddkVar) {
        if (ddkVar != null && !ddkVar.l()) {
            throw i().a();
        }
    }

    public static ddk p(ddk ddkVar, byte[] bArr) {
        ddk t = t(ddkVar, bArr, 0, bArr.length, dcz.a());
        F(t);
        return t;
    }

    public static ddk q(ddk ddkVar, InputStream inputStream, dcz dczVar) {
        dcp H = dcp.H(inputStream);
        ddk ddkVar2 = (ddk) ddkVar.E(4);
        try {
            dfg b = dez.a.b(ddkVar2);
            b.h(ddkVar2, dcq.p(H), dczVar);
            b.f(ddkVar2);
            F(ddkVar2);
            return ddkVar2;
        } catch (ddu e) {
            if (e.a) {
                throw new ddu(e);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof ddu) {
                throw ((ddu) e2.getCause());
            }
            throw new ddu(e2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof ddu) {
                throw ((ddu) e3.getCause());
            }
            throw e3;
        }
    }

    public static ddk r(ddk ddkVar, byte[] bArr, dcz dczVar) {
        ddk t = t(ddkVar, bArr, 0, bArr.length, dczVar);
        F(t);
        return t;
    }

    static ddk s(ddk ddkVar, dcp dcpVar, dcz dczVar) {
        ddk ddkVar2 = (ddk) ddkVar.E(4);
        try {
            dfg b = dez.a.b(ddkVar2);
            b.h(ddkVar2, dcq.p(dcpVar), dczVar);
            b.f(ddkVar2);
            return ddkVar2;
        } catch (ddu e) {
            if (e.a) {
                throw new ddu(e);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof ddu) {
                throw ((ddu) e2.getCause());
            }
            throw new ddu(e2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof ddu) {
                throw ((ddu) e3.getCause());
            }
            throw e3;
        }
    }

    public static ddk t(ddk ddkVar, byte[] bArr, int i, int i2, dcz dczVar) {
        ddk ddkVar2 = (ddk) ddkVar.E(4);
        try {
            dfg b = dez.a.b(ddkVar2);
            b.i(ddkVar2, bArr, i, i + i2, new dca(dczVar));
            b.f(ddkVar2);
            if (ddkVar2.q == 0) {
                return ddkVar2;
            }
            throw new RuntimeException();
        } catch (ddu e) {
            if (e.a) {
                throw new ddu(e);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof ddu) {
                throw ((ddu) e2.getCause());
            }
            throw new ddu(e2);
        } catch (IndexOutOfBoundsException e3) {
            throw ddu.i();
        }
    }

    public static ddp u() {
        return ddl.b;
    }

    public static ddp v(ddp ddpVar) {
        int size = ddpVar.size();
        return ddpVar.d(size == 0 ? 10 : size + size);
    }

    public static ddq w() {
        return deg.b;
    }

    public static ddq x(ddq ddqVar) {
        int size = ddqVar.size();
        return ddqVar.d(size == 0 ? 10 : size + size);
    }

    public static ddr y() {
        return dfa.b;
    }

    public static ddr z(ddr ddrVar) {
        int size = ddrVar.size();
        return ddrVar.d(size == 0 ? 10 : size + size);
    }

    @Override // defpackage.der
    public final dex A() {
        return (dex) E(7);
    }

    public final Object E(int i) {
        return a(i, null);
    }

    protected abstract Object a(int i, Object obj);

    @Override // defpackage.der
    public final /* synthetic */ deq aF() {
        return (ddf) E(5);
    }

    @Override // defpackage.der
    public final void aG(dcu dcuVar) {
        dfg b = dez.a.b(this);
        dcv dcvVar = dcuVar.f;
        if (dcvVar == null) {
            dcvVar = new dcv(dcuVar);
        }
        b.l(this, dcvVar);
    }

    @Override // defpackage.der
    public final /* synthetic */ deq aH() {
        ddf ddfVar = (ddf) E(5);
        ddfVar.n(this);
        return ddfVar;
    }

    @Override // defpackage.dbv
    public final int d() {
        return this.t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return dez.a.b(this).j(this, (ddk) obj);
        }
        return false;
    }

    @Override // defpackage.dbv
    public final void f(int i) {
        this.t = i;
    }

    public final int hashCode() {
        int i = this.q;
        if (i != 0) {
            return i;
        }
        int b = dez.a.b(this).b(this);
        this.q = b;
        return b;
    }

    @Override // defpackage.des
    public final /* synthetic */ der j() {
        return (ddk) E(6);
    }

    @Override // defpackage.des
    public final boolean l() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) E(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean k = dez.a.b(this).k(this);
        if (!booleanValue) {
            return k;
        }
        a(2, true != k ? null : this);
        return k;
    }

    @Override // defpackage.der
    public final int m() {
        int i = this.t;
        if (i != -1) {
            return i;
        }
        int a = dez.a.b(this).a(this);
        this.t = a;
        return a;
    }

    public final ddf n() {
        return (ddf) E(5);
    }

    public final ddf o(ddk ddkVar) {
        ddf n = n();
        n.n(ddkVar);
        return n;
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        ev.T(this, sb, 0);
        return sb.toString();
    }
}
