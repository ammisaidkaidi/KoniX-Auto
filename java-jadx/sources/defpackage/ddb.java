package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ddb {
    public static final ddb a = new ddb(null);
    public final dfo b = dfo.b(16);
    public boolean c;
    private boolean d;

    private ddb() {
    }

    static int a(dgc dgcVar, int i, Object obj) {
        int ab = dcu.ab(i);
        if (dgcVar == dgc.GROUP) {
            dds.j((der) obj);
            ab += ab;
        }
        dgd dgdVar = dgd.INT;
        int i2 = 4;
        switch (dgcVar) {
            case DOUBLE:
                ((Double) obj).doubleValue();
                i2 = 8;
                break;
            case FLOAT:
                ((Float) obj).floatValue();
                break;
            case INT64:
                i2 = dcu.af(((Long) obj).longValue());
                break;
            case UINT64:
                i2 = dcu.af(((Long) obj).longValue());
                break;
            case INT32:
                i2 = dcu.N(((Integer) obj).intValue());
                break;
            case FIXED64:
                ((Long) obj).longValue();
                i2 = 8;
                break;
            case FIXED32:
                ((Integer) obj).intValue();
                break;
            case BOOL:
                ((Boolean) obj).booleanValue();
                i2 = 1;
                break;
            case STRING:
                if (!(obj instanceof dcl)) {
                    i2 = dcu.aa((String) obj);
                    break;
                } else {
                    i2 = dcu.I((dcl) obj);
                    break;
                }
            case GROUP:
                i2 = dcu.L((der) obj);
                break;
            case MESSAGE:
                if (!(obj instanceof ddz)) {
                    i2 = dcu.S((der) obj);
                    break;
                } else {
                    i2 = dcu.Q((ddz) obj);
                    break;
                }
            case BYTES:
                if (!(obj instanceof dcl)) {
                    i2 = dcu.G((byte[]) obj);
                    break;
                } else {
                    i2 = dcu.I((dcl) obj);
                    break;
                }
            case UINT32:
                i2 = dcu.ad(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof ddm)) {
                    i2 = dcu.N(((Integer) obj).intValue());
                    break;
                } else {
                    i2 = dcu.N(((ddm) obj).a());
                    break;
                }
            case SFIXED32:
                ((Integer) obj).intValue();
                break;
            case SFIXED64:
                ((Long) obj).longValue();
                i2 = 8;
                break;
            case SINT32:
                i2 = dcu.W(((Integer) obj).intValue());
                break;
            case SINT64:
                i2 = dcu.Y(((Long) obj).longValue());
                break;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return ab + i2;
    }

    static void g(dcu dcuVar, dgc dgcVar, int i, Object obj) {
        if (dgcVar == dgc.GROUP) {
            der derVar = (der) obj;
            dds.j(derVar);
            dcuVar.A(i, 3);
            dcuVar.aq(derVar);
            dcuVar.A(i, 4);
            return;
        }
        dcuVar.A(i, dgcVar.t);
        dgd dgdVar = dgd.INT;
        switch (dgcVar) {
            case DOUBLE:
                dcuVar.an(((Double) obj).doubleValue());
                break;
            case FLOAT:
                dcuVar.ap(((Float) obj).floatValue());
                break;
            case INT64:
                dcuVar.E(((Long) obj).longValue());
                break;
            case UINT64:
                dcuVar.E(((Long) obj).longValue());
                break;
            case INT32:
                dcuVar.t(((Integer) obj).intValue());
                break;
            case FIXED64:
                dcuVar.r(((Long) obj).longValue());
                break;
            case FIXED32:
                dcuVar.p(((Integer) obj).intValue());
                break;
            case BOOL:
                dcuVar.j(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case STRING:
                if (!(obj instanceof dcl)) {
                    dcuVar.z((String) obj);
                    break;
                } else {
                    dcuVar.n((dcl) obj);
                    break;
                }
            case GROUP:
                dcuVar.aq((der) obj);
                break;
            case MESSAGE:
                dcuVar.v((der) obj);
                break;
            case BYTES:
                if (!(obj instanceof dcl)) {
                    byte[] bArr = (byte[]) obj;
                    dcuVar.F(bArr, bArr.length);
                    break;
                } else {
                    dcuVar.n((dcl) obj);
                    break;
                }
            case UINT32:
                dcuVar.C(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof ddm)) {
                    dcuVar.t(((Integer) obj).intValue());
                    break;
                } else {
                    dcuVar.t(((ddm) obj).a());
                    break;
                }
            case SFIXED32:
                dcuVar.p(((Integer) obj).intValue());
                break;
            case SFIXED64:
                dcuVar.r(((Long) obj).longValue());
                break;
            case SINT32:
                dcuVar.as(((Integer) obj).intValue());
                break;
            case SINT64:
                dcuVar.au(((Long) obj).longValue());
                break;
        }
    }

    public static int j(ddj ddjVar, Object obj) {
        return a(ddjVar.c, 334728578, obj);
    }

    private static Object m(Object obj) {
        if (obj instanceof dev) {
            return ((dev) obj).c();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private static boolean n(Map.Entry entry) {
        if (((ddj) entry.getKey()).a() == dgd.MESSAGE) {
            Object value = entry.getValue();
            if (!(value instanceof der)) {
                if (value instanceof ddz) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((der) value).l()) {
                return false;
            }
        }
        return true;
    }

    public final int b(Map.Entry entry) {
        ddj ddjVar = (ddj) entry.getKey();
        Object value = entry.getValue();
        if (ddjVar.a() != dgd.MESSAGE) {
            return j(ddjVar, value);
        }
        if (value instanceof ddz) {
            int ab = dcu.ab(1);
            return ab + ab + dcu.ac(2, 334728578) + dcu.P(3, (ddz) value);
        }
        int ab2 = dcu.ab(1);
        return ab2 + ab2 + dcu.ac(2, 334728578) + dcu.ab(3) + dcu.S((der) value);
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final ddb clone() {
        ddb ddbVar = new ddb();
        for (int i = 0; i < this.b.a(); i++) {
            Map.Entry f = this.b.f(i);
            ddbVar.l((ddj) f.getKey(), f.getValue());
        }
        for (Map.Entry entry : this.b.c()) {
            ddbVar.l((ddj) entry.getKey(), entry.getValue());
        }
        ddbVar.d = this.d;
        return ddbVar;
    }

    public final Iterator d() {
        return this.d ? new ddy(this.b.entrySet().iterator()) : this.b.entrySet().iterator();
    }

    public final void e() {
        if (this.c) {
            return;
        }
        dfo dfoVar = this.b;
        if (!dfoVar.c) {
            for (int i = 0; i < dfoVar.a(); i++) {
            }
            Iterator it = dfoVar.c().iterator();
            while (it.hasNext()) {
            }
        }
        if (!dfoVar.c) {
            dfoVar.b = dfoVar.b.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(dfoVar.b);
            dfoVar.d = dfoVar.d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(dfoVar.d);
            dfoVar.c = true;
        }
        this.c = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ddb) {
            return this.b.equals(((ddb) obj).b);
        }
        return false;
    }

    public final void f(Map.Entry entry) {
        ddj ddjVar = (ddj) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof ddz) {
            throw null;
        }
        if (ddjVar.a() != dgd.MESSAGE) {
            this.b.put(ddjVar, m(value));
            return;
        }
        Object k = k(ddjVar);
        if (k == null) {
            this.b.put(ddjVar, m(value));
            return;
        }
        if (k instanceof dev) {
            throw new UnsupportedOperationException();
        }
        deq aH = ((der) k).aH();
        ((ddf) aH).n((ddk) ((der) value));
        this.b.put(ddjVar, aH.h());
    }

    final boolean h() {
        return this.b.isEmpty();
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final boolean i() {
        for (int i = 0; i < this.b.a(); i++) {
            if (!n(this.b.f(i))) {
                return false;
            }
        }
        Iterator it = this.b.c().iterator();
        while (it.hasNext()) {
            if (!n((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Object k(ddj ddjVar) {
        Object obj = this.b.get(ddjVar);
        if (!(obj instanceof ddz)) {
            return obj;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
    
        if ((r7 instanceof defpackage.ddm) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002c, code lost:
    
        if ((r7 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if ((r7 instanceof defpackage.ddz) == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(ddj ddjVar, Object obj) {
        boolean z;
        dgc dgcVar = ddjVar.c;
        dds.h(obj);
        dgc dgcVar2 = dgc.DOUBLE;
        dgd dgdVar = dgd.INT;
        switch (dgcVar.s) {
            case INT:
                z = obj instanceof Integer;
                break;
            case LONG:
                z = obj instanceof Long;
                break;
            case FLOAT:
                z = obj instanceof Float;
                break;
            case DOUBLE:
                z = obj instanceof Double;
                break;
            case BOOLEAN:
                z = obj instanceof Boolean;
                break;
            case STRING:
                z = obj instanceof String;
                break;
            case BYTE_STRING:
                if (!(obj instanceof dcl)) {
                    break;
                }
                if (obj instanceof ddz) {
                    this.d = true;
                }
                this.b.put(ddjVar, obj);
                return;
            case ENUM:
                if (!(obj instanceof Integer)) {
                    break;
                }
                if (obj instanceof ddz) {
                }
                this.b.put(ddjVar, obj);
                return;
            case MESSAGE:
                if (!(obj instanceof der)) {
                    break;
                }
                if (obj instanceof ddz) {
                }
                this.b.put(ddjVar, obj);
                return;
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 334728578, ddjVar.c.s, obj.getClass().getName()));
        }
    }

    private ddb(byte[] bArr) {
        e();
        e();
    }
}
