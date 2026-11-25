package defpackage;

import androidx.preference.Preference;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dcq implements dfc {
    private final dcp a;
    private int b;
    private int c;
    private int d = 0;

    private dcq(dcp dcpVar) {
        dds.i(dcpVar, "input");
        this.a = dcpVar;
        dcpVar.c = this;
    }

    private final Object P(dgc dgcVar, Class cls, dcz dczVar) {
        dgc dgcVar2 = dgc.DOUBLE;
        switch (dgcVar) {
            case DOUBLE:
                return Double.valueOf(a());
            case FLOAT:
                return Float.valueOf(b());
            case INT64:
                return Long.valueOf(l());
            case UINT64:
                return Long.valueOf(o());
            case INT32:
                return Integer.valueOf(g());
            case FIXED64:
                return Long.valueOf(k());
            case FIXED32:
                return Integer.valueOf(f());
            case BOOL:
                return Boolean.valueOf(T());
            case STRING:
                return x();
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return t(cls, dczVar);
            case BYTES:
                return q();
            case UINT32:
                return Integer.valueOf(j());
            case ENUM:
                return Integer.valueOf(e());
            case SFIXED32:
                return Integer.valueOf(h());
            case SFIXED64:
                return Long.valueOf(m());
            case SINT32:
                return Integer.valueOf(i());
            case SINT64:
                return Long.valueOf(n());
        }
    }

    private final Object V(dfg dfgVar, dcz dczVar) {
        int i = this.c;
        this.c = dge.c(dge.a(this.b), 4);
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(e);
            if (this.b == this.c) {
                return e;
            }
            throw ddu.g();
        } finally {
            this.c = i;
        }
    }

    private final Object W(dfg dfgVar, dcz dczVar) {
        int n = this.a.n();
        dcp dcpVar = this.a;
        if (dcpVar.a >= dcpVar.b) {
            throw new ddu("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int e = dcpVar.e(n);
        Object e2 = dfgVar.e();
        this.a.a++;
        dfgVar.h(e2, this, dczVar);
        dfgVar.f(e2);
        this.a.z(0);
        r5.a--;
        this.a.A(e);
        return e2;
    }

    private final void X(int i) {
        if (this.a.d() != i) {
            throw ddu.i();
        }
    }

    private final void Y(int i) {
        if (dge.b(this.b) != i) {
            throw ddu.a();
        }
    }

    private static final void Z(int i) {
        if ((i & 3) != 0) {
            throw ddu.g();
        }
    }

    private static final void aa(int i) {
        if ((i & 7) != 0) {
            throw ddu.g();
        }
    }

    public static dcq p(dcp dcpVar) {
        dcq dcqVar = dcpVar.c;
        return dcqVar != null ? dcqVar : new dcq(dcpVar);
    }

    @Override // defpackage.dfc
    public final void A(List list) {
        int m;
        int m2;
        if (!(list instanceof dcw)) {
            switch (dge.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Double.valueOf(this.a.b()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Double.valueOf(this.a.b()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        dcw dcwVar = (dcw) list;
        switch (dge.b(this.b)) {
            case 1:
                break;
            case 2:
                int n2 = this.a.n();
                aa(n2);
                int d2 = this.a.d() + n2;
                do {
                    dcwVar.e(this.a.b());
                } while (this.a.d() < d2);
                return;
            default:
                throw ddu.a();
        }
        do {
            dcwVar.e(this.a.b());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void B(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.f()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.f()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    ddlVar.g(this.a.f());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            ddlVar.g(this.a.f());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void C(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Integer.valueOf(this.a.g()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Integer.valueOf(this.a.g()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 2:
                int n2 = this.a.n();
                Z(n2);
                int d2 = this.a.d() + n2;
                do {
                    ddlVar.g(this.a.g());
                } while (this.a.d() < d2);
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            ddlVar.g(this.a.g());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void D(List list) {
        int m;
        int m2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Long.valueOf(this.a.o()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Long.valueOf(this.a.o()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.b)) {
            case 1:
                break;
            case 2:
                int n2 = this.a.n();
                aa(n2);
                int d2 = this.a.d() + n2;
                do {
                    degVar.e(this.a.o());
                } while (this.a.d() < d2);
                return;
            default:
                throw ddu.a();
        }
        do {
            degVar.e(this.a.o());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void E(List list) {
        int m;
        int m2;
        if (!(list instanceof ddd)) {
            switch (dge.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Float.valueOf(this.a.c()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Float.valueOf(this.a.c()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddd dddVar = (ddd) list;
        switch (dge.b(this.b)) {
            case 2:
                int n2 = this.a.n();
                Z(n2);
                int d2 = this.a.d() + n2;
                do {
                    dddVar.e(this.a.c());
                } while (this.a.d() < d2);
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            dddVar.e(this.a.c());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void F(List list, dfg dfgVar, dcz dczVar) {
        int m;
        if (dge.b(this.b) != 3) {
            throw ddu.a();
        }
        int i = this.b;
        do {
            list.add(V(dfgVar, dczVar));
            if (this.a.C() || this.d != 0) {
                return;
            } else {
                m = this.a.m();
            }
        } while (m == i);
        this.d = m;
    }

    @Override // defpackage.dfc
    public final void G(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.h()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.h()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    ddlVar.g(this.a.h());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            ddlVar.g(this.a.h());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void H(List list) {
        int m;
        int m2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.p()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.p()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    degVar.e(this.a.p());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            degVar.e(this.a.p());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void I(Map map, dek dekVar, dcz dczVar) {
        Y(2);
        int e = this.a.e(this.a.n());
        Object obj = dekVar.b;
        Object obj2 = dekVar.d;
        while (true) {
            try {
                int c = c();
                if (c != Integer.MAX_VALUE && !this.a.C()) {
                    switch (c) {
                        case 1:
                            obj = P(dekVar.a, null, null);
                        case 2:
                            obj2 = P(dekVar.c, dekVar.d.getClass(), dczVar);
                        default:
                            try {
                                if (!U()) {
                                    throw new ddu("Unable to parse map entry.");
                                    break;
                                }
                            } catch (ddt e2) {
                                if (!U()) {
                                    throw new ddu("Unable to parse map entry.");
                                }
                            }
                    }
                }
            } finally {
                this.a.A(e);
            }
        }
        map.put(obj, obj2);
    }

    @Override // defpackage.dfc
    public final void J(List list, dfg dfgVar, dcz dczVar) {
        int m;
        if (dge.b(this.b) != 2) {
            throw ddu.a();
        }
        int i = this.b;
        do {
            list.add(W(dfgVar, dczVar));
            if (this.a.C() || this.d != 0) {
                return;
            } else {
                m = this.a.m();
            }
        } while (m == i);
        this.d = m;
    }

    @Override // defpackage.dfc
    public final void K(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Integer.valueOf(this.a.k()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Integer.valueOf(this.a.k()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 2:
                int n2 = this.a.n();
                Z(n2);
                int d2 = this.a.d() + n2;
                do {
                    ddlVar.g(this.a.k());
                } while (this.a.d() < d2);
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            ddlVar.g(this.a.k());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void L(List list) {
        int m;
        int m2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(n);
                    int d = this.a.d() + n;
                    do {
                        list.add(Long.valueOf(this.a.t()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Long.valueOf(this.a.t()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.b)) {
            case 1:
                break;
            case 2:
                int n2 = this.a.n();
                aa(n2);
                int d2 = this.a.d() + n2;
                do {
                    degVar.e(this.a.t());
                } while (this.a.d() < d2);
                return;
            default:
                throw ddu.a();
        }
        do {
            degVar.e(this.a.t());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void M(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.l()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.l()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    ddlVar.g(this.a.l());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            ddlVar.g(this.a.l());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void N(List list) {
        int m;
        int m2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.u()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.u()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    degVar.e(this.a.u());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            degVar.e(this.a.u());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void O(List list) {
        w(list, false);
    }

    @Override // defpackage.dfc
    public final void Q(List list) {
        w(list, true);
    }

    @Override // defpackage.dfc
    public final void R(List list) {
        int m;
        int m2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.n()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.n()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    ddlVar.g(this.a.n());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            ddlVar.g(this.a.n());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void S(List list) {
        int m;
        int m2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.v()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.v()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    degVar.e(this.a.v());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            degVar.e(this.a.v());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final boolean T() {
        Y(0);
        return this.a.D();
    }

    @Override // defpackage.dfc
    public final boolean U() {
        int i;
        if (this.a.C() || (i = this.b) == this.c) {
            return false;
        }
        return this.a.E(i);
    }

    @Override // defpackage.dfc
    public final double a() {
        Y(1);
        return this.a.b();
    }

    @Override // defpackage.dfc
    public final float b() {
        Y(5);
        return this.a.c();
    }

    @Override // defpackage.dfc
    public final int c() {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            i = this.a.m();
            this.b = i;
        }
        return (i == 0 || i == this.c) ? Preference.DEFAULT_ORDER : dge.a(i);
    }

    @Override // defpackage.dfc
    public final int d() {
        return this.b;
    }

    @Override // defpackage.dfc
    public final int e() {
        Y(0);
        return this.a.f();
    }

    @Override // defpackage.dfc
    public final int f() {
        Y(5);
        return this.a.g();
    }

    @Override // defpackage.dfc
    public final int g() {
        Y(0);
        return this.a.h();
    }

    @Override // defpackage.dfc
    public final int h() {
        Y(5);
        return this.a.k();
    }

    @Override // defpackage.dfc
    public final int i() {
        Y(0);
        return this.a.l();
    }

    @Override // defpackage.dfc
    public final int j() {
        Y(0);
        return this.a.n();
    }

    @Override // defpackage.dfc
    public final long k() {
        Y(1);
        return this.a.o();
    }

    @Override // defpackage.dfc
    public final long l() {
        Y(0);
        return this.a.p();
    }

    @Override // defpackage.dfc
    public final long m() {
        Y(1);
        return this.a.t();
    }

    @Override // defpackage.dfc
    public final long n() {
        Y(0);
        return this.a.u();
    }

    @Override // defpackage.dfc
    public final long o() {
        Y(0);
        return this.a.v();
    }

    @Override // defpackage.dfc
    public final dcl q() {
        Y(2);
        return this.a.w();
    }

    @Override // defpackage.dfc
    public final Object r(Class cls, dcz dczVar) {
        Y(3);
        return V(dez.a.a(cls), dczVar);
    }

    @Override // defpackage.dfc
    public final Object s(dfg dfgVar, dcz dczVar) {
        Y(3);
        return V(dfgVar, dczVar);
    }

    @Override // defpackage.dfc
    public final Object t(Class cls, dcz dczVar) {
        Y(2);
        return W(dez.a.a(cls), dczVar);
    }

    @Override // defpackage.dfc
    public final Object u(dfg dfgVar, dcz dczVar) {
        Y(2);
        return W(dfgVar, dczVar);
    }

    @Override // defpackage.dfc
    public final String v() {
        Y(2);
        return this.a.x();
    }

    public final void w(List list, boolean z) {
        int m;
        int m2;
        if (dge.b(this.b) != 2) {
            throw ddu.a();
        }
        if (!(list instanceof dec) || z) {
            do {
                list.add(z ? x() : v());
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        dec decVar = (dec) list;
        do {
            decVar.i(q());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final String x() {
        Y(2);
        return this.a.y();
    }

    @Override // defpackage.dfc
    public final void y(List list) {
        int m;
        int m2;
        if (!(list instanceof dcd)) {
            switch (dge.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Boolean.valueOf(this.a.D()));
                    } while (this.a.d() < d);
                    X(d);
                    return;
            }
            do {
                list.add(Boolean.valueOf(this.a.D()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (m == this.b);
            this.d = m;
            return;
        }
        dcd dcdVar = (dcd) list;
        switch (dge.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int d2 = this.a.d() + this.a.n();
                do {
                    dcdVar.e(this.a.D());
                } while (this.a.d() < d2);
                X(d2);
                return;
        }
        do {
            dcdVar.e(this.a.D());
            if (this.a.C()) {
                return;
            } else {
                m2 = this.a.m();
            }
        } while (m2 == this.b);
        this.d = m2;
    }

    @Override // defpackage.dfc
    public final void z(List list) {
        int m;
        if (dge.b(this.b) != 2) {
            throw ddu.a();
        }
        do {
            list.add(q());
            if (this.a.C()) {
                return;
            } else {
                m = this.a.m();
            }
        } while (m == this.b);
        this.d = m;
    }
}
