package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MessageFieldReflectionUtil {
    public static final MessageFieldReflectionUtil a = new MessageFieldReflectionUtil(null);
    public final SmallSortedMap b = SmallSortedMap.b(16);
    public boolean c;
    private boolean d;

    private MessageFieldReflectionUtil() {
    }

    static int a(ProtoFieldType dgcVar, int i, Object obj) {
        int ab = CodedOutputStream.ab(NavInstructionTypeEnum);
        if (dgcVar == ProtoFieldType.GROUP) {
            ProtoCharsetUtil.j((MessageLite) obj);
            ab += ab;
        }
        ProtoJavaType dgdVar = ProtoJavaType.INT;
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
                i2 = CodedOutputStream.af(((Long) obj).longValue());
                break;
            case UINT64:
                i2 = CodedOutputStream.af(((Long) obj).longValue());
                break;
            case INT32:
                i2 = CodedOutputStream.N(((Integer) obj).intValue());
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
                if (!(obj instanceof ByteString)) {
                    i2 = CodedOutputStream.aa((String) obj);
                    break;
                } else {
                    i2 = CodedOutputStream.I((ByteString) obj);
                    break;
                }
            case GROUP:
                i2 = CodedOutputStream.L((MessageLite) obj);
                break;
            case MESSAGE:
                if (!(obj instanceof ProtoMapField)) {
                    i2 = CodedOutputStream.S((MessageLite) obj);
                    break;
                } else {
                    i2 = CodedOutputStream.Q((ProtoMapField) obj);
                    break;
                }
            case BYTES:
                if (!(obj instanceof ByteString)) {
                    i2 = CodedOutputStream.G((byte[]) obj);
                    break;
                } else {
                    i2 = CodedOutputStream.I((ByteString) obj);
                    break;
                }
            case UINT32:
                i2 = CodedOutputStream.ad(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof EnumLite)) {
                    i2 = CodedOutputStream.N(((Integer) obj).intValue());
                    break;
                } else {
                    i2 = CodedOutputStream.N(((EnumLite) obj).a());
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
                i2 = CodedOutputStream.W(((Integer) obj).intValue());
                break;
            case SINT64:
                i2 = CodedOutputStream.Y(((Long) obj).longValue());
                break;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return ab + i2;
    }

    static void g(CodedOutputStream dcuVar, ProtoFieldType dgcVar, int i, Object obj) {
        if (dgcVar == ProtoFieldType.GROUP) {
            MessageLite derVar = (MessageLite) obj;
            ProtoCharsetUtil.j(derVar);
            dcuVar.A(i, 3);
            dcuVar.aq(derVar);
            dcuVar.A(i, 4);
            return;
        }
        dcuVar.A(i, dgcVar.t);
        ProtoJavaType dgdVar = ProtoJavaType.INT;
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
                if (!(obj instanceof ByteString)) {
                    dcuVar.z((String) obj);
                    break;
                } else {
                    dcuVar.n((ByteString) obj);
                    break;
                }
            case GROUP:
                dcuVar.aq((MessageLite) obj);
                break;
            case MESSAGE:
                dcuVar.v((MessageLite) obj);
                break;
            case BYTES:
                if (!(obj instanceof ByteString)) {
                    byte[] bArr = (byte[]) obj;
                    dcuVar.F(bArr, bArr.length);
                    break;
                } else {
                    dcuVar.n((ByteString) obj);
                    break;
                }
            case UINT32:
                dcuVar.C(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof EnumLite)) {
                    dcuVar.t(((Integer) obj).intValue());
                    break;
                } else {
                    dcuVar.t(((EnumLite) obj).a());
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

    public static int j(ProtoFieldNumber ddjVar, Object obj) {
        return a(ddjVar.c, 334728578, obj);
    }

    private static Object m(Object obj) {
        if (obj instanceof GeneratedMessageBuilder) {
            return ((GeneratedMessageBuilder) obj).c();
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
        if (((ProtoFieldNumber) entry.getKey()).a() == ProtoJavaType.MESSAGE) {
            Object value = entry.getValue();
            if (!(value instanceof MessageLite)) {
                if (value instanceof ProtoMapField) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((MessageLite) value).l()) {
                return false;
            }
        }
        return true;
    }

    public final int b(Map.Entry entry) {
        ProtoFieldNumber ddjVar = (ProtoFieldNumber) entry.getKey();
        Object value = entry.getValue();
        if (ddjVar.a() != ProtoJavaType.MESSAGE) {
            return j(ddjVar, value);
        }
        if (value instanceof ProtoMapField) {
            int ab = CodedOutputStream.ab(1);
            return ab + ab + CodedOutputStream.ac(2, 334728578) + CodedOutputStream.P(3, (ProtoMapField) value);
        }
        int ab2 = CodedOutputStream.ab(1);
        return ab2 + ab2 + CodedOutputStream.ac(2, 334728578) + CodedOutputStream.ab(3) + CodedOutputStream.S((MessageLite) value);
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final MessageFieldReflectionUtil clone() {
        MessageFieldReflectionUtil ddbVar = new MessageFieldReflectionUtil();
        for (int i = 0; NavInstructionTypeEnum < this.b.a(); i++) {
            Map.Entry f = this.b.f(NavInstructionTypeEnum);
            ddbVar.l((ProtoFieldNumber) f.getKey(), f.getValue());
        }
        for (Map.Entry entry : this.b.c()) {
            ddbVar.l((ProtoFieldNumber) entry.getKey(), entry.getValue());
        }
        ddbVar.d = this.d;
        return ddbVar;
    }

    public final Iterator d() {
        return this.d ? new ProtoMapEntryIterator(this.b.entrySet().iterator()) : this.b.entrySet().iterator();
    }

    public final void e() {
        if (this.c) {
            return;
        }
        SmallSortedMap dfoVar = this.b;
        if (!dfoVar.c) {
            for (int i = 0; NavInstructionTypeEnum < dfoVar.a(); i++) {
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
        if (obj instanceof MessageFieldReflectionUtil) {
            return this.b.equals(((MessageFieldReflectionUtil) obj).b);
        }
        return false;
    }

    public final void f(Map.Entry entry) {
        ProtoFieldNumber ddjVar = (ProtoFieldNumber) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof ProtoMapField) {
            throw null;
        }
        if (ddjVar.a() != ProtoJavaType.MESSAGE) {
            this.b.put(ddjVar, m(value));
            return;
        }
        Object k = k(ddjVar);
        if (ProtoCompositeMessageK == null) {
            this.b.put(ddjVar, m(value));
            return;
        }
        if (ProtoCompositeMessageK instanceof GeneratedMessageBuilder) {
            throw new UnsupportedOperationException();
        }
        MessageLiteBuilder aH = ((MessageLite) k).aH();
        ((ProtoMsgHoldingMessageAndBool) aH).n((GeneratedMessageLite) ((MessageLite) value));
        this.b.put(ddjVar, aH.h());
    }

    final boolean h() {
        return this.b.isEmpty();
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final boolean i() {
        for (int i = 0; NavInstructionTypeEnum < this.b.a(); i++) {
            if (!n(this.b.f(NavInstructionTypeEnum))) {
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

    public final Object k(ProtoFieldNumber ddjVar) {
        Object obj = this.b.get(ddjVar);
        if (!(obj instanceof ProtoMapField)) {
            return obj;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
    
        if ((r7 instanceof defpackage.EnumLite) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002c, code lost:
    
        if ((r7 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if ((r7 instanceof defpackage.ProtoMapField) == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(ProtoFieldNumber ddjVar, Object obj) {
        boolean z;
        ProtoFieldType dgcVar = ddjVar.c;
        ProtoCharsetUtil.h(obj);
        ProtoFieldType dgcVar2 = ProtoFieldType.DOUBLE;
        ProtoJavaType dgdVar = ProtoJavaType.INT;
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
                if (!(obj instanceof ByteString)) {
                    break;
                }
                if (obj instanceof ProtoMapField) {
                    this.d = true;
                }
                this.b.put(ddjVar, obj);
                return;
            case ENUM:
                if (!(obj instanceof Integer)) {
                    break;
                }
                if (obj instanceof ProtoMapField) {
                }
                this.b.put(ddjVar, obj);
                return;
            case MESSAGE:
                if (!(obj instanceof MessageLite)) {
                    break;
                }
                if (obj instanceof ProtoMapField) {
                }
                this.b.put(ddjVar, obj);
                return;
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", 334728578, ddjVar.c.s, obj.getClass().getName()));
        }
    }

    private MessageFieldReflectionUtil(byte[] bArr) {
        e();
        e();
    }
}
