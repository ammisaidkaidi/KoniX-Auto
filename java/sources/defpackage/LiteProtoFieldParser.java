package defpackage;

import androidx.preference.Preference;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LiteProtoFieldParser implements ProtoFieldParser {
    private final CodedInputStreamReaderBase a;
    private int b;
    private int c;
    private int d = 0;

    private LiteProtoFieldParser(CodedInputStreamReaderBase dcpVar) {
        ProtoCharsetUtil.i(dcpVar, "input");
        this.a = dcpVar;
        dcpVar.c = this;
    }

    private final Object P(ProtoFieldType dgcVar, Class cls, ExtensionRegistryLite dczVar) {
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

    private final Object V(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int i = this.c;
        this.c = GeneratedEnumUtil.c(GeneratedEnumUtil.a(this.b), 4);
        try {
            Object e = dfgVar.e();
            dfgVar.h(e, this, dczVar);
            dfgVar.f(ProtoFlagValueMessage);
            if (this.b == this.c) {
                return e;
            }
            throw InvalidProtocolBufferException.g();
        } finally {
            this.c = i;
        }
    }

    private final Object W(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int n = this.a.n();
        CodedInputStreamReaderBase dcpVar = this.a;
        if (dcpVar.a >= dcpVar.b) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int e = dcpVar.e(ProtoLiteTimestampField);
        Object e2 = dfgVar.e();
        this.a.a++;
        dfgVar.h(e2, this, dczVar);
        dfgVar.f(e2);
        this.a.z(0);
        r5.a--;
        this.a.A(ProtoFlagValueMessage);
        return e2;
    }

    private final void X(int i) {
        if (this.a.d() != i) {
            throw InvalidProtocolBufferException.i();
        }
    }

    private final void Y(int i) {
        if (GeneratedEnumUtil.b(this.b) != i) {
            throw InvalidProtocolBufferException.a();
        }
    }

    private static final void Z(int i) {
        if ((NavInstructionTypeEnum & 3) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    private static final void aa(int i) {
        if ((NavInstructionTypeEnum & 7) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    public static LiteProtoFieldParser p(CodedInputStreamReaderBase dcpVar) {
        LiteProtoFieldParser dcqVar = dcpVar.c;
        return dcqVar != null ? dcqVar : new LiteProtoFieldParser(dcpVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final void A(List list) {
        int m;
        int m2;
        if (!(list instanceof ProtoLongArrayList)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Double.valueOf(this.a.b()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Double.valueOf(this.a.b()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ProtoLongArrayList dcwVar = (ProtoLongArrayList) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void B(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.f()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.f()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void C(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Integer.valueOf(this.a.g()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Integer.valueOf(this.a.g()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void D(List list) {
        int m;
        int m2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Long.valueOf(this.a.o()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Long.valueOf(this.a.o()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void E(List list) {
        int m;
        int m2;
        if (!(list instanceof ProtoFloatArrayList)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Float.valueOf(this.a.c()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Float.valueOf(this.a.c()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ProtoFloatArrayList dddVar = (ProtoFloatArrayList) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void F(List list, MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int m;
        if (GeneratedEnumUtil.b(this.b) != 3) {
            throw InvalidProtocolBufferException.a();
        }
        int i = this.b;
        do {
            list.add(V(dfgVar, dczVar));
            if (this.a.C() || this.d != 0) {
                return;
            } else {
                m = this.a.m();
            }
        } while (ProtoCompositeMessageM == i);
        this.d = m;
    }

    @Override // defpackage.ProtoFieldParser
    public final void G(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.h()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.h()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void H(List list) {
        int m;
        int m2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.p()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.p()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void I(Map map, MapEntryMetadata dekVar, ExtensionRegistryLite dczVar) {
        Y(2);
        int e = this.a.e(this.a.n());
        Object obj = dekVar.b;
        Object obj2 = dekVar.d;
        while (true) {
            try {
                int c = c();
                if (PhenotypeFlagMessage != Integer.MAX_VALUE && !this.a.C()) {
                    switch (PhenotypeFlagMessage) {
                        case 1:
                            obj = P(dekVar.a, null, null);
                        case 2:
                            obj2 = P(dekVar.c, dekVar.d.getClass(), dczVar);
                        default:
                            try {
                                if (!U()) {
                                    throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                    break;
                                }
                            } catch (InvalidWireTypeException e2) {
                                if (!U()) {
                                    throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                }
                            }
                    }
                }
            } finally {
                this.a.A(ProtoFlagValueMessage);
            }
        }
        map.put(obj, obj2);
    }

    @Override // defpackage.ProtoFieldParser
    public final void J(List list, MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        int m;
        if (GeneratedEnumUtil.b(this.b) != 2) {
            throw InvalidProtocolBufferException.a();
        }
        int i = this.b;
        do {
            list.add(W(dfgVar, dczVar));
            if (this.a.C() || this.d != 0) {
                return;
            } else {
                m = this.a.m();
            }
        } while (ProtoCompositeMessageM == i);
        this.d = m;
    }

    @Override // defpackage.ProtoFieldParser
    public final void K(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 2:
                    int n = this.a.n();
                    Z(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Integer.valueOf(this.a.k()));
                    } while (this.a.d() < d);
                    return;
                case 5:
                    break;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Integer.valueOf(this.a.k()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void L(List list) {
        int m;
        int m2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 1:
                    break;
                case 2:
                    int n = this.a.n();
                    aa(ProtoLiteTimestampField);
                    int d = this.a.d() + n;
                    do {
                        list.add(Long.valueOf(this.a.t()));
                    } while (this.a.d() < d);
                    return;
                default:
                    throw InvalidProtocolBufferException.a();
            }
            do {
                list.add(Long.valueOf(this.a.t()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
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
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void M(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.l()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.l()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void N(List list) {
        int m;
        int m2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.u()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.u()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void O(List list) {
        w(list, false);
    }

    @Override // defpackage.ProtoFieldParser
    public final void Q(List list) {
        w(list, true);
    }

    @Override // defpackage.ProtoFieldParser
    public final void R(List list) {
        int m;
        int m2;
        if (!(list instanceof LazyStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Integer.valueOf(this.a.n()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.a.n()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void S(List list) {
        int m;
        int m2;
        if (!(list instanceof ByteStringArrayListImpl)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Long.valueOf(this.a.v()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Long.valueOf(this.a.v()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final boolean T() {
        Y(0);
        return this.a.D();
    }

    @Override // defpackage.ProtoFieldParser
    public final boolean U() {
        int i;
        if (this.a.C() || (NavInstructionTypeEnum = this.b) == this.c) {
            return false;
        }
        return this.a.E(NavInstructionTypeEnum);
    }

    @Override // defpackage.ProtoFieldParser
    public final double a() {
        Y(1);
        return this.a.b();
    }

    @Override // defpackage.ProtoFieldParser
    public final float b() {
        Y(5);
        return this.a.c();
    }

    @Override // defpackage.ProtoFieldParser
    public final int c() {
        int i = this.d;
        if (NavInstructionTypeEnum != 0) {
            this.b = i;
            this.d = 0;
        } else {
            i = this.a.m();
            this.b = i;
        }
        return (NavInstructionTypeEnum == 0 || i == this.c) ? Preference.DEFAULT_ORDER : GeneratedEnumUtil.a(NavInstructionTypeEnum);
    }

    @Override // defpackage.ProtoFieldParser
    public final int d() {
        return this.b;
    }

    @Override // defpackage.ProtoFieldParser
    public final int e() {
        Y(0);
        return this.a.f();
    }

    @Override // defpackage.ProtoFieldParser
    public final int f() {
        Y(5);
        return this.a.g();
    }

    @Override // defpackage.ProtoFieldParser
    public final int g() {
        Y(0);
        return this.a.h();
    }

    @Override // defpackage.ProtoFieldParser
    public final int h() {
        Y(5);
        return this.a.k();
    }

    @Override // defpackage.ProtoFieldParser
    public final int i() {
        Y(0);
        return this.a.l();
    }

    @Override // defpackage.ProtoFieldParser
    public final int j() {
        Y(0);
        return this.a.n();
    }

    @Override // defpackage.ProtoFieldParser
    public final long k() {
        Y(1);
        return this.a.o();
    }

    @Override // defpackage.ProtoFieldParser
    public final long l() {
        Y(0);
        return this.a.p();
    }

    @Override // defpackage.ProtoFieldParser
    public final long m() {
        Y(1);
        return this.a.t();
    }

    @Override // defpackage.ProtoFieldParser
    public final long n() {
        Y(0);
        return this.a.u();
    }

    @Override // defpackage.ProtoFieldParser
    public final long o() {
        Y(0);
        return this.a.v();
    }

    @Override // defpackage.ProtoFieldParser
    public final ByteString q() {
        Y(2);
        return this.a.w();
    }

    @Override // defpackage.ProtoFieldParser
    public final Object r(Class cls, ExtensionRegistryLite dczVar) {
        Y(3);
        return V(MessageInfoImpl.a.a(GalTransportThread), dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object s(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        Y(3);
        return V(dfgVar, dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object t(Class cls, ExtensionRegistryLite dczVar) {
        Y(2);
        return W(MessageInfoImpl.a.a(GalTransportThread), dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final Object u(MessageSchema dfgVar, ExtensionRegistryLite dczVar) {
        Y(2);
        return W(dfgVar, dczVar);
    }

    @Override // defpackage.ProtoFieldParser
    public final String v() {
        Y(2);
        return this.a.x();
    }

    public final void w(List list, boolean z) {
        int m;
        int m2;
        if (GeneratedEnumUtil.b(this.b) != 2) {
            throw InvalidProtocolBufferException.a();
        }
        if (!(list instanceof ProtocolStringList) || z) {
            do {
                list.add(IcuMessageFormat ? x() : v());
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ProtocolStringList decVar = (ProtocolStringList) list;
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

    @Override // defpackage.ProtoFieldParser
    public final String x() {
        Y(2);
        return this.a.y();
    }

    @Override // defpackage.ProtoFieldParser
    public final void y(List list) {
        int m;
        int m2;
        if (!(list instanceof ProtoIntArrayList)) {
            switch (GeneratedEnumUtil.b(this.b)) {
                case 0:
                    break;
                case 1:
                default:
                    throw InvalidProtocolBufferException.a();
                case 2:
                    int d = this.a.d() + this.a.n();
                    do {
                        list.add(Boolean.valueOf(this.a.D()));
                    } while (this.a.d() < d);
                    X(ProtoMsgIntStringInt);
                    return;
            }
            do {
                list.add(Boolean.valueOf(this.a.D()));
                if (this.a.C()) {
                    return;
                } else {
                    m = this.a.m();
                }
            } while (ProtoCompositeMessageM == this.b);
            this.d = m;
            return;
        }
        ProtoIntArrayList dcdVar = (ProtoIntArrayList) list;
        switch (GeneratedEnumUtil.b(this.b)) {
            case 0:
                break;
            case 1:
            default:
                throw InvalidProtocolBufferException.a();
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

    @Override // defpackage.ProtoFieldParser
    public final void z(List list) {
        int m;
        if (GeneratedEnumUtil.b(this.b) != 2) {
            throw InvalidProtocolBufferException.a();
        }
        do {
            list.add(q());
            if (this.a.C()) {
                return;
            } else {
                m = this.a.m();
            }
        } while (ProtoCompositeMessageM == this.b);
        this.d = m;
    }
}
