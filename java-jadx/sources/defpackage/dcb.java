package defpackage;

import androidx.preference.Preference;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dcb implements dfc {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;

    public dcb(ByteBuffer byteBuffer) {
        this.a = byteBuffer.array();
        this.b = byteBuffer.arrayOffset() + byteBuffer.position();
        this.c = byteBuffer.arrayOffset() + byteBuffer.limit();
    }

    private final byte V() {
        int i = this.b;
        if (i == this.c) {
            throw ddu.i();
        }
        byte[] bArr = this.a;
        this.b = i + 1;
        return bArr[i];
    }

    private final int W() {
        af(4);
        return X();
    }

    private final int X() {
        int i = this.b;
        byte[] bArr = this.a;
        this.b = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final int Y() {
        int i;
        int i2 = this.b;
        int i3 = this.c;
        if (i3 == i2) {
            throw ddu.i();
        }
        byte[] bArr = this.a;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            this.b = i4;
            return b;
        }
        if (i3 - i4 < 9) {
            return (int) ab();
        }
        int i5 = i4 + 1;
        int i6 = b ^ (bArr[i4] << 7);
        if (i6 < 0) {
            i = i6 ^ (-128);
        } else {
            int i7 = i5 + 1;
            int i8 = i6 ^ (bArr[i5] << 14);
            if (i8 >= 0) {
                i = i8 ^ 16256;
                i5 = i7;
            } else {
                i5 = i7 + 1;
                int i9 = i8 ^ (bArr[i7] << 21);
                if (i9 < 0) {
                    i = i9 ^ (-2080896);
                } else {
                    int i10 = i5 + 1;
                    byte b2 = bArr[i5];
                    i = (i9 ^ (b2 << 28)) ^ 266354560;
                    if (b2 < 0) {
                        i5 = i10 + 1;
                        if (bArr[i10] < 0) {
                            int i11 = i5 + 1;
                            if (bArr[i5] < 0) {
                                i5 = i11 + 1;
                                if (bArr[i11] < 0) {
                                    i11 = i5 + 1;
                                    if (bArr[i5] < 0) {
                                        i5 = i11 + 1;
                                        if (bArr[i11] < 0) {
                                            throw ddu.e();
                                        }
                                    }
                                }
                            }
                            i5 = i11;
                        }
                    } else {
                        i5 = i10;
                    }
                }
            }
        }
        this.b = i5;
        return i;
    }

    private final long Z() {
        af(8);
        return aa();
    }

    private final long aa() {
        int i = this.b;
        byte[] bArr = this.a;
        this.b = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    private final long ab() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((V() & 128) == 0) {
                return j;
            }
        }
        throw ddu.e();
    }

    private final Object ac(dgc dgcVar, Class cls, dcz dczVar) {
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

    private final Object ad(dfg dfgVar, dcz dczVar) {
        int i = this.e;
        this.e = dge.c(dge.a(this.d), 4);
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(e);
            if (this.d == this.e) {
                return e;
            }
            throw ddu.g();
        } finally {
            this.e = i;
        }
    }

    private final Object ae(dfg dfgVar, dcz dczVar) {
        int Y = Y();
        af(Y);
        int i = this.c;
        int i2 = this.b + Y;
        this.c = i2;
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(e);
            if (this.b == i2) {
                return e;
            }
            throw ddu.g();
        } finally {
            this.c = i;
        }
    }

    private final void af(int i) {
        if (i < 0 || i > this.c - this.b) {
            throw ddu.i();
        }
    }

    private final void ag(int i) {
        if (this.b != i) {
            throw ddu.i();
        }
    }

    private final void ah(int i) {
        if (dge.b(this.d) != i) {
            throw ddu.a();
        }
    }

    private final void ai(int i) {
        af(i);
        this.b += i;
    }

    private final void aj(int i) {
        af(i);
        if ((i & 3) != 0) {
            throw ddu.g();
        }
    }

    private final void ak(int i) {
        af(i);
        if ((i & 7) != 0) {
            throw ddu.g();
        }
    }

    private final boolean al() {
        return this.b == this.c;
    }

    @Override // defpackage.dfc
    public final void A(List list) {
        int i;
        int i2;
        if (!(list instanceof dcw)) {
            switch (dge.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Double.valueOf(Double.longBitsToDouble(aa())));
                    }
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Double.valueOf(a()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        dcw dcwVar = (dcw) list;
        switch (dge.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    dcwVar.e(Double.longBitsToDouble(aa()));
                }
                return;
            default:
                throw ddu.a();
        }
        do {
            dcwVar.e(a());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void B(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Integer.valueOf(Y()));
                    }
                    return;
            }
            do {
                list.add(Integer.valueOf(e()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    ddlVar.g(Y());
                }
                return;
        }
        do {
            ddlVar.g(e());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void C(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Integer.valueOf(X()));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Integer.valueOf(f()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    ddlVar.g(X());
                }
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            ddlVar.g(f());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void D(List list) {
        int i;
        int i2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Long.valueOf(aa()));
                    }
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Long.valueOf(k()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    degVar.e(aa());
                }
                return;
            default:
                throw ddu.a();
        }
        do {
            degVar.e(k());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void E(List list) {
        int i;
        int i2;
        if (!(list instanceof ddd)) {
            switch (dge.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Float.valueOf(Float.intBitsToFloat(X())));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Float.valueOf(b()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddd dddVar = (ddd) list;
        switch (dge.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    dddVar.e(Float.intBitsToFloat(X()));
                }
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            dddVar.e(b());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void F(List list, dfg dfgVar, dcz dczVar) {
        int i;
        if (dge.b(this.d) != 3) {
            throw ddu.a();
        }
        int i2 = this.d;
        do {
            list.add(ad(dfgVar, dczVar));
            if (al()) {
                return;
            } else {
                i = this.b;
            }
        } while (Y() == i2);
        this.b = i;
    }

    @Override // defpackage.dfc
    public final void G(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Integer.valueOf(Y()));
                    }
                    ag(Y);
                    return;
            }
            do {
                list.add(Integer.valueOf(g()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    ddlVar.g(Y());
                }
                ag(Y2);
                return;
        }
        do {
            ddlVar.g(g());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void H(List list) {
        int i;
        int i2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Long.valueOf(p()));
                    }
                    ag(Y);
                    return;
            }
            do {
                list.add(Long.valueOf(l()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    degVar.e(p());
                }
                ag(Y2);
                return;
        }
        do {
            degVar.e(l());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void I(Map map, dek dekVar, dcz dczVar) {
        ah(2);
        int Y = Y();
        af(Y);
        int i = this.c;
        this.c = this.b + Y;
        try {
            Object obj = dekVar.b;
            Object obj2 = dekVar.d;
            while (true) {
                int c = c();
                if (c == Integer.MAX_VALUE) {
                    map.put(obj, obj2);
                    return;
                }
                switch (c) {
                    case 1:
                        obj = ac(dekVar.a, null, null);
                    case 2:
                        obj2 = ac(dekVar.c, dekVar.d.getClass(), dczVar);
                    default:
                        try {
                            if (!U()) {
                                throw new ddu("Unable to parse map entry.");
                                break;
                            }
                        } catch (ddt e) {
                            if (!U()) {
                                throw new ddu("Unable to parse map entry.");
                            }
                        }
                }
            }
        } finally {
            this.c = i;
        }
    }

    @Override // defpackage.dfc
    public final void J(List list, dfg dfgVar, dcz dczVar) {
        int i;
        if (dge.b(this.d) != 2) {
            throw ddu.a();
        }
        int i2 = this.d;
        do {
            list.add(ae(dfgVar, dczVar));
            if (al()) {
                return;
            } else {
                i = this.b;
            }
        } while (Y() == i2);
        this.b = i;
    }

    @Override // defpackage.dfc
    public final void K(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Integer.valueOf(X()));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Integer.valueOf(h()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    ddlVar.g(X());
                }
                return;
            case 5:
                break;
            default:
                throw ddu.a();
        }
        do {
            ddlVar.g(h());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void L(List list) {
        int i;
        int i2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.b < i3) {
                        list.add(Long.valueOf(aa()));
                    }
                    return;
                default:
                    throw ddu.a();
            }
            do {
                list.add(Long.valueOf(m()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.b < i4) {
                    degVar.e(aa());
                }
                return;
            default:
                throw ddu.a();
        }
        do {
            degVar.e(m());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void M(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Integer.valueOf(dcp.F(Y())));
                    }
                    return;
            }
            do {
                list.add(Integer.valueOf(i()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    ddlVar.g(dcp.F(Y()));
                }
                return;
        }
        do {
            ddlVar.g(i());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void N(List list) {
        int i;
        int i2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Long.valueOf(dcp.G(p())));
                    }
                    return;
            }
            do {
                list.add(Long.valueOf(n()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    degVar.e(dcp.G(p()));
                }
                return;
        }
        do {
            degVar.e(n());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void O(List list) {
        P(list, false);
    }

    public final void P(List list, boolean z) {
        int i;
        int i2;
        if (dge.b(this.d) != 2) {
            throw ddu.a();
        }
        if (!(list instanceof dec) || z) {
            do {
                list.add(w(z));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        dec decVar = (dec) list;
        do {
            decVar.i(q());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void Q(List list) {
        P(list, true);
    }

    @Override // defpackage.dfc
    public final void R(List list) {
        int i;
        int i2;
        if (!(list instanceof ddl)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Integer.valueOf(Y()));
                    }
                    return;
            }
            do {
                list.add(Integer.valueOf(j()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ddl ddlVar = (ddl) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    ddlVar.g(Y());
                }
                return;
        }
        do {
            ddlVar.g(j());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void S(List list) {
        int i;
        int i2;
        if (!(list instanceof deg)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Long.valueOf(p()));
                    }
                    ag(Y);
                    return;
            }
            do {
                list.add(Long.valueOf(o()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        deg degVar = (deg) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    degVar.e(p());
                }
                ag(Y2);
                return;
        }
        do {
            degVar.e(o());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final boolean T() {
        ah(0);
        return Y() != 0;
    }

    @Override // defpackage.dfc
    public final boolean U() {
        int i;
        if (al() || (i = this.d) == this.e) {
            return false;
        }
        switch (dge.b(i)) {
            case 0:
                int i2 = this.c;
                int i3 = this.b;
                if (i2 - i3 >= 10) {
                    byte[] bArr = this.a;
                    int i4 = 0;
                    while (i4 < 10) {
                        int i5 = i3 + 1;
                        if (bArr[i3] >= 0) {
                            this.b = i5;
                            return true;
                        }
                        i4++;
                        i3 = i5;
                    }
                }
                for (int i6 = 0; i6 < 10; i6++) {
                    if (V() >= 0) {
                        return true;
                    }
                }
                throw ddu.e();
            case 1:
                ai(8);
                return true;
            case 2:
                ai(Y());
                return true;
            case 3:
                int i7 = this.e;
                this.e = dge.c(dge.a(this.d), 4);
                while (c() != Integer.MAX_VALUE && U()) {
                }
                if (this.d != this.e) {
                    throw ddu.g();
                }
                this.e = i7;
                return true;
            case 4:
            default:
                throw ddu.a();
            case 5:
                ai(4);
                return true;
        }
    }

    @Override // defpackage.dfc
    public final double a() {
        ah(1);
        return Double.longBitsToDouble(Z());
    }

    @Override // defpackage.dfc
    public final float b() {
        ah(5);
        return Float.intBitsToFloat(W());
    }

    @Override // defpackage.dfc
    public final int c() {
        if (al()) {
            return Preference.DEFAULT_ORDER;
        }
        int Y = Y();
        this.d = Y;
        return Y == this.e ? Preference.DEFAULT_ORDER : dge.a(Y);
    }

    @Override // defpackage.dfc
    public final int d() {
        return this.d;
    }

    @Override // defpackage.dfc
    public final int e() {
        ah(0);
        return Y();
    }

    @Override // defpackage.dfc
    public final int f() {
        ah(5);
        return W();
    }

    @Override // defpackage.dfc
    public final int g() {
        ah(0);
        return Y();
    }

    @Override // defpackage.dfc
    public final int h() {
        ah(5);
        return W();
    }

    @Override // defpackage.dfc
    public final int i() {
        ah(0);
        return dcp.F(Y());
    }

    @Override // defpackage.dfc
    public final int j() {
        ah(0);
        return Y();
    }

    @Override // defpackage.dfc
    public final long k() {
        ah(1);
        return Z();
    }

    @Override // defpackage.dfc
    public final long l() {
        ah(0);
        return p();
    }

    @Override // defpackage.dfc
    public final long m() {
        ah(1);
        return Z();
    }

    @Override // defpackage.dfc
    public final long n() {
        ah(0);
        return dcp.G(p());
    }

    @Override // defpackage.dfc
    public final long o() {
        ah(0);
        return p();
    }

    public final long p() {
        long j;
        int i = this.b;
        int i2 = this.c;
        if (i2 == i) {
            throw ddu.i();
        }
        byte[] bArr = this.a;
        int i3 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            this.b = i3;
            return b;
        }
        if (i2 - i3 < 9) {
            return ab();
        }
        int i4 = i3 + 1;
        int i5 = b ^ (bArr[i3] << 7);
        if (i5 < 0) {
            j = i5 ^ (-128);
        } else {
            int i6 = i4 + 1;
            int i7 = i5 ^ (bArr[i4] << 14);
            if (i7 >= 0) {
                i4 = i6;
                j = i7 ^ 16256;
            } else {
                i4 = i6 + 1;
                int i8 = i7 ^ (bArr[i6] << 21);
                if (i8 < 0) {
                    j = i8 ^ (-2080896);
                } else {
                    int i9 = i4 + 1;
                    long j2 = (bArr[i4] << 28) ^ i8;
                    if (j2 >= 0) {
                        i4 = i9;
                        j = j2 ^ 266354560;
                    } else {
                        int i10 = i9 + 1;
                        long j3 = j2 ^ (bArr[i9] << 35);
                        if (j3 < 0) {
                            j = (-34093383808L) ^ j3;
                            i4 = i10;
                        } else {
                            int i11 = i10 + 1;
                            long j4 = j3 ^ (bArr[i10] << 42);
                            if (j4 >= 0) {
                                i4 = i11;
                                j = j4 ^ 4363953127296L;
                            } else {
                                int i12 = i11 + 1;
                                long j5 = j4 ^ (bArr[i11] << 49);
                                if (j5 < 0) {
                                    j = (-558586000294016L) ^ j5;
                                    i4 = i12;
                                } else {
                                    int i13 = i12 + 1;
                                    long j6 = (j5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                    if (j6 < 0) {
                                        int i14 = i13 + 1;
                                        if (bArr[i13] < 0) {
                                            throw ddu.e();
                                        }
                                        j = j6;
                                        i4 = i14;
                                    } else {
                                        i4 = i13;
                                        j = j6;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        this.b = i4;
        return j;
    }

    @Override // defpackage.dfc
    public final dcl q() {
        ah(2);
        int Y = Y();
        if (Y == 0) {
            return dcl.b;
        }
        af(Y);
        dcl y = dcl.y(this.a, this.b, Y);
        this.b += Y;
        return y;
    }

    @Override // defpackage.dfc
    public final Object r(Class cls, dcz dczVar) {
        ah(3);
        return ad(dez.a.a(cls), dczVar);
    }

    @Override // defpackage.dfc
    public final Object s(dfg dfgVar, dcz dczVar) {
        ah(3);
        return ad(dfgVar, dczVar);
    }

    @Override // defpackage.dfc
    public final Object t(Class cls, dcz dczVar) {
        ah(2);
        return ae(dez.a.a(cls), dczVar);
    }

    @Override // defpackage.dfc
    public final Object u(dfg dfgVar, dcz dczVar) {
        ah(2);
        return ae(dfgVar, dczVar);
    }

    @Override // defpackage.dfc
    public final String v() {
        return w(false);
    }

    public final String w(boolean z) {
        ah(2);
        int Y = Y();
        if (Y == 0) {
            return "";
        }
        af(Y);
        if (z) {
            byte[] bArr = this.a;
            int i = this.b;
            if (!dgb.g(bArr, i, i + Y)) {
                throw ddu.d();
            }
        }
        String str = new String(this.a, this.b, Y, dds.a);
        this.b += Y;
        return str;
    }

    @Override // defpackage.dfc
    public final String x() {
        return w(true);
    }

    @Override // defpackage.dfc
    public final void y(List list) {
        int i;
        int i2;
        if (!(list instanceof dcd)) {
            switch (dge.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw ddu.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.b < Y) {
                        list.add(Boolean.valueOf(Y() != 0));
                    }
                    ag(Y);
                    return;
            }
            do {
                list.add(Boolean.valueOf(T()));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        dcd dcdVar = (dcd) list;
        switch (dge.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw ddu.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.b < Y2) {
                    dcdVar.e(Y() != 0);
                }
                ag(Y2);
                return;
        }
        do {
            dcdVar.e(T());
            if (al()) {
                return;
            } else {
                i2 = this.b;
            }
        } while (Y() == this.d);
        this.b = i2;
    }

    @Override // defpackage.dfc
    public final void z(List list) {
        int i;
        if (dge.b(this.d) != 2) {
            throw ddu.a();
        }
        do {
            list.add(q());
            if (al()) {
                return;
            } else {
                i = this.b;
            }
        } while (Y() == this.d);
        this.b = i;
    }

    public dcb() {
    }
}
