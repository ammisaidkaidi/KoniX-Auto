package defpackage;

import androidx.preference.Preference;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class BinaryProtoFieldParser implements ProtoFieldParser {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;

    public BinaryProtoFieldParser(ByteBuffer byteBuffer) {
        this.a = byteBuffer.array();
        this.b = byteBuffer.arrayOffset() + byteBuffer.position();
        this.c = byteBuffer.arrayOffset() + byteBuffer.limit();
    }

    private final byte V() {
        int i = this.b;
        if (NavInstructionTypeEnum == this.c) {
            throw InvalidProtocolBufferException.i();
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
            throw InvalidProtocolBufferException.i();
        }
        byte[] bArr = this.a;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (ProtoLiteMessageBase >= 0) {
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
                                            throw InvalidProtocolBufferException.e();
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
        for (int i = 0; NavInstructionTypeEnum < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((V() & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.e();
    }

    private final Object ac(ProtoFieldType dgcVar, Class cls, ExtensionRegistryLite dczVar) {
        ProtoFieldType dgcVar2 = ProtoFieldType.DOUBLE;
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

    private final Object ad(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int i = this.e;
        this.e = GeneratedEnumUtil.c(GeneratedEnumUtil.a(this.d), 4);
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(ProtoFlagValueMessage);
            if (this.d == this.e) {
                return e;
            }
            throw InvalidProtocolBufferException.g();
        } finally {
            this.e = i;
        }
    }

    private final Object ae(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int Y = Y();
        af(Y);
        int i = this.c;
        int i2 = this.b + Y;
        this.c = i2;
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(ProtoFlagValueMessage);
            if (this.b == i2) {
                return e;
            }
            throw InvalidProtocolBufferException.g();
        } finally {
            this.c = i;
        }
    }

    private final void af(int i) {
        if (NavInstructionTypeEnum < 0 || i > this.c - this.b) {
            throw InvalidProtocolBufferException.i();
        }
    }

    private final void ag(int i) {
        if (this.b != i) {
            throw InvalidProtocolBufferException.i();
        }
    }

    private final void ah(int i) {
        if (GeneratedEnumUtil.b(this.d) != i) {
            throw InvalidProtocolBufferException.a();
        }
    }

    private final void ai(int i) {
        af(NavInstructionTypeEnum);
        this.b += i;
    }

    private final void aj(int i) {
        af(NavInstructionTypeEnum);
        if ((NavInstructionTypeEnum & 3) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    private final void ak(int i) {
        af(NavInstructionTypeEnum);
        if ((NavInstructionTypeEnum & 7) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    private final boolean al() {
        return this.b == this.c;
    }

    @Override // defpackage.ProtoFieldParser
    public final void A(List list) {
        int i;
        int i2;
        if (!(list instanceof ProtoLongArrayList)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Double.valueOf(Double.longBitsToDouble(aa())));
                    }
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
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
        ProtoLongArrayList dcwVar = (ProtoLongArrayList) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    dcwVar.e(Double.longBitsToDouble(aa()));
                }
                return;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void B(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final void C(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Integer.valueOf(X()));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    ddlVar.g(X());
                }
                return;
            case 5:
                break;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void D(List list) {
        int i;
        int i2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Long.valueOf(aa()));
                    }
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
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
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    degVar.e(aa());
                }
                return;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void E(List list) {
        int i;
        int i2;
        if (!(list instanceof ProtoFloatArrayList)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Float.valueOf(Float.intBitsToFloat(X())));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
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
        ProtoFloatArrayList dddVar = (ProtoFloatArrayList) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    dddVar.e(Float.intBitsToFloat(X()));
                }
                return;
            case 5:
                break;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void F(List list, MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int i;
        if (GeneratedEnumUtil.b(this.d) != 3) {
            throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void G(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final void H(List list) {
        int i;
        int i2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final void I(Map map, MapEntryMetadata dekVar, ExtensionRegistryLite dczVar) {
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
                if (PhenotypeFlagMessage == Integer.MAX_VALUE) {
                    map.put(obj, obj2);
                    return;
                }
                switch (PhenotypeFlagMessage) {
                    case 1:
                        obj = ac(dekVar.a, null, null);
                    case 2:
                        obj2 = ac(dekVar.c, dekVar.d.getClass(), dczVar);
                    default:
                        try {
                            if (!U()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidWireTypeException e) {
                            if (!U()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                }
            }
        } finally {
            this.c = i;
        }
    }

    @Override // defpackage.ProtoFieldParser
    public final void J(List list, MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int i;
        if (GeneratedEnumUtil.b(this.d) != 2) {
            throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void K(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 2:
                    int Y = Y();
                    aj(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Integer.valueOf(X()));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 2:
                int Y2 = Y();
                aj(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    ddlVar.g(X());
                }
                return;
            case 5:
                break;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void L(List list) {
        int i;
        int i2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 1:
                    break;
                case 2:
                    int Y = Y();
                    ak(Y);
                    int i3 = this.b + Y;
                    while (this.ProtoLiteMessageBase < i3) {
                        list.add(Long.valueOf(aa()));
                    }
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
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
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 1:
                break;
            case 2:
                int Y2 = Y();
                ak(Y2);
                int i4 = this.b + Y2;
                while (this.ProtoLiteMessageBase < i4) {
                    degVar.e(aa());
                }
                return;
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void M(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
                        list.add(Integer.valueOf(CodedInputStreamReaderBase.F(Y())));
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
                    ddlVar.g(CodedInputStreamReaderBase.F(Y()));
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

    @Override // defpackage.ProtoFieldParser
    public final void N(List list) {
        int i;
        int i2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
                        list.add(Long.valueOf(CodedInputStreamReaderBase.G(p())));
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
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
                    degVar.e(CodedInputStreamReaderBase.G(p()));
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

    @Override // defpackage.ProtoFieldParser
    public final void O(List list) {
        P(list, false);
    }

    public final void P(List list, boolean z) {
        int i;
        int i2;
        if (GeneratedEnumUtil.b(this.d) != 2) {
            throw InvalidProtocolBufferException.a();
        }
        if (!(list instanceof ProtocolStringList) || z) {
            do {
                list.add(w(IcuMessageFormat));
                if (al()) {
                    return;
                } else {
                    i = this.b;
                }
            } while (Y() == this.d);
            this.b = i;
            return;
        }
        ProtocolStringList decVar = (ProtocolStringList) list;
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

    @Override // defpackage.ProtoFieldParser
    public final void Q(List list) {
        P(list, true);
    }

    @Override // defpackage.ProtoFieldParser
    public final void R(List list) {
        int i;
        int i2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final void S(List list) {
        int i;
        int i2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final boolean T() {
        ah(0);
        return Y() != 0;
    }

    @Override // defpackage.ProtoFieldParser
    public final boolean U() {
        int i;
        if (al() || (NavInstructionTypeEnum = this.d) == this.e) {
            return false;
        }
        switch (GeneratedEnumUtil.b(NavInstructionTypeEnum)) {
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
                throw InvalidProtocolBufferException.e();
            case 1:
                ai(8);
                return true;
            case 2:
                ai(Y());
                return true;
            case 3:
                int i7 = this.e;
                this.e = GeneratedEnumUtil.c(GeneratedEnumUtil.a(this.d), 4);
                while (c() != Integer.MAX_VALUE && U()) {
                }
                if (this.d != this.e) {
                    throw InvalidProtocolBufferException.g();
                }
                this.e = i7;
                return true;
            case 4:
            default:
                throw InvalidProtocolBufferException.a();
            case 5:
                ai(4);
                return true;
        }
    }

    @Override // defpackage.ProtoFieldParser
    public final double a() {
        ah(1);
        return Double.longBitsToDouble(Z());
    }

    @Override // defpackage.ProtoFieldParser
    public final float b() {
        ah(5);
        return Float.intBitsToFloat(W());
    }

    @Override // defpackage.ProtoFieldParser
    public final int c() {
        if (al()) {
            return Preference.DEFAULT_ORDER;
        }
        int Y = Y();
        this.d = Y;
        return Y == this.e ? Preference.DEFAULT_ORDER : GeneratedEnumUtil.a(Y);
    }

    @Override // defpackage.ProtoFieldParser
    public final int d() {
        return this.d;
    }

    @Override // defpackage.ProtoFieldParser
    public final int e() {
        ah(0);
        return Y();
    }

    @Override // defpackage.ProtoFieldParser
    public final int f() {
        ah(5);
        return W();
    }

    @Override // defpackage.ProtoFieldParser
    public final int g() {
        ah(0);
        return Y();
    }

    @Override // defpackage.ProtoFieldParser
    public final int h() {
        ah(5);
        return W();
    }

    @Override // defpackage.ProtoFieldParser
    public final int i() {
        ah(0);
        return CodedInputStreamReaderBase.F(Y());
    }

    @Override // defpackage.ProtoFieldParser
    public final int j() {
        ah(0);
        return Y();
    }

    @Override // defpackage.ProtoFieldParser
    public final long k() {
        ah(1);
        return Z();
    }

    @Override // defpackage.ProtoFieldParser
    public final long l() {
        ah(0);
        return p();
    }

    @Override // defpackage.ProtoFieldParser
    public final long m() {
        ah(1);
        return Z();
    }

    @Override // defpackage.ProtoFieldParser
    public final long n() {
        ah(0);
        return CodedInputStreamReaderBase.G(p());
    }

    @Override // defpackage.ProtoFieldParser
    public final long o() {
        ah(0);
        return p();
    }

    public final long p() {
        long j;
        int i = this.b;
        int i2 = this.c;
        if (i2 == i) {
            throw InvalidProtocolBufferException.i();
        }
        byte[] bArr = this.a;
        int i3 = i + 1;
        byte b = bArr[i];
        if (ProtoLiteMessageBase >= 0) {
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
                                            throw InvalidProtocolBufferException.e();
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

    @Override // defpackage.ProtoFieldParser
    public final ByteString q() {
        ah(2);
        int Y = Y();
        if (Y == 0) {
            return dcl.b;
        }
        af(Y);
        ByteString y = ByteString.y(this.a, this.b, Y);
        this.b += Y;
        return y;
    }

    @Override // defpackage.ProtoFieldParser
    public final Object r(Class cls, ExtensionRegistryLite dczVar) {
        ah(3);
        return ad(MessageInfoImpl.a.a(GalTransportThread), dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object s(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        ah(3);
        return ad(dfgVar, dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object t(Class cls, ExtensionRegistryLite dczVar) {
        ah(2);
        return ae(MessageInfoImpl.a.a(GalTransportThread), dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object u(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        ah(2);
        return ae(dfgVar, dczVar);
    }

    @Override // defpackage.ProtoFieldParser
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
        if (IcuMessageFormat) {
            byte[] bArr = this.a;
            int i = this.b;
            if (!Utf8EncoderUtil.g(bArr, i, i + Y)) {
                throw InvalidProtocolBufferException.d();
            }
        }
        String str = new String(this.a, this.b, Y, dds.a);
        this.b += Y;
        return str;
    }

    @Override // defpackage.ProtoFieldParser
    public final String x() {
        return w(true);
    }

    @Override // defpackage.ProtoFieldParser
    public final void y(List list) {
        int i;
        int i2;
        if (!(list instanceof ProtoIntArrayList)) {
            switch (GeneratedEnumUtil.b(this.d)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int Y = this.b + Y();
                    while (this.ProtoLiteMessageBase < Y) {
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
        ProtoIntArrayList dcdVar = (ProtoIntArrayList) list;
        switch (GeneratedEnumUtil.b(this.d)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
            case 2:
                int Y2 = this.b + Y();
                while (this.ProtoLiteMessageBase < Y2) {
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

    @Override // defpackage.ProtoFieldParser
    public final void z(List list) {
        int i;
        if (GeneratedEnumUtil.b(this.d) != 2) {
            throw InvalidProtocolBufferException.a();
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

    public BinaryProtoFieldParser() {
    }
}
