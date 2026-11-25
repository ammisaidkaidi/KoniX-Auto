package defpackage;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RawMessageSchema implements MessageSchema {
    private final MessageLite a;
    private final boolean b;
    private final ProtoTextFormatPrinterUtil c;

    private RawMessageSchema(ProtoTextFormatPrinterUtil evVar, MessageLite derVar, byte[] bArr, byte[] bArr2) {
        this.c = evVar;
        this.b = derVar instanceof ProtoMsgWithAndroidBuildData;
        this.a = derVar;
    }

    static RawMessageSchema c(ProtoTextFormatPrinterUtil evVar, ViewCompatCore hlVar, MessageLite derVar) {
        return new RawMessageSchema(evVar, derVar, null, null);
    }

    @Override // defpackage.MessageSchema
    public final int a(Object obj) {
        ProtoFieldDescriptor M = ev.M(obj);
        int i = M.e;
        if (NavInstructionTypeEnum == -1) {
            i = 0;
            for (int i2 = 0; i2 < M.b; i2++) {
                int i3 = M.c[i2];
                ByteString dclVar = (ByteString) M.d[i2];
                int ab = CodedOutputStream.ab(1);
                i += ab + ab + CodedOutputStream.ac(2, GeneratedEnumUtil.a(i3)) + CodedOutputStream.H(3, dclVar);
            }
            M.e = i;
        }
        if (!this.b) {
            return i;
        }
        MessageFieldReflectionUtil o = ViewCompatCore.o(obj);
        int i4 = 0;
        for (int i5 = 0; i5 < o.b.a(); i5++) {
            i4 += o.b(o.b.f(i5));
        }
        Iterator it = o.b.c().iterator();
        while (it.hasNext()) {
            i4 += o.b((Map.Entry) it.next());
        }
        return i + i4;
    }

    @Override // defpackage.MessageSchema
    public final int b(Object obj) {
        int hashCode = ev.M(obj).hashCode();
        return this.b ? (hashCode * 53) + ViewCompatCore.o(obj).hashCode() : hashCode;
    }

    @Override // defpackage.MessageSchema
    public final Object e() {
        return this.a.aF().i();
    }

    @Override // defpackage.MessageSchema
    public final void f(Object obj) {
        ev.P(obj);
        ViewCompatCore.s(obj);
    }

    @Override // defpackage.MessageSchema
    public final void g(Object obj, Object obj2) {
        ProtoSchemaUtil.V(obj, obj2);
        if (this.b) {
            ProtoSchemaUtil.T(obj, obj2);
        }
    }

    @Override // defpackage.MessageSchema
    public final void h(Object obj, ProtoFieldParser dfcVar, ExtensionRegistryLite dczVar) {
        boolean U;
        ProtoTextFormatPrinterUtil evVar = this.c;
        Object O = ev.O(obj);
        MessageFieldReflectionUtil p = ViewCompatCore.p(obj);
        while (dfcVar.c() != Integer.MAX_VALUE) {
            try {
                int d = dfcVar.d();
                if (ProtoMsgIntStringInt != dge.a) {
                    if (GeneratedEnumUtil.b(ProtoMsgIntStringInt) == 2) {
                        ProtoParserFactory c = dczVar.c(this.a, GeneratedEnumUtil.a(ProtoMsgIntStringInt));
                        if (PhenotypeFlagMessage != null) {
                            ViewCompatCore.q(dfcVar, c, dczVar, p);
                        } else {
                            U = evVar.J(O, dfcVar);
                        }
                    } else {
                        U = dfcVar.U();
                    }
                    if (!U) {
                        break;
                    }
                } else {
                    int i = 0;
                    ProtoParserFactory dcxVar = null;
                    ByteString dclVar = null;
                    while (dfcVar.c() != Integer.MAX_VALUE) {
                        int d2 = dfcVar.d();
                        if (d2 == dge.c) {
                            i = dfcVar.j();
                            dcxVar = dczVar.c(this.a, i);
                        } else if (d2 == dge.d) {
                            if (dcxVar != null) {
                                ViewCompatCore.q(dfcVar, dcxVar, dczVar, p);
                            } else {
                                dclVar = dfcVar.q();
                            }
                        } else if (!dfcVar.U()) {
                            break;
                        }
                    }
                    if (dfcVar.d() != dge.b) {
                        throw InvalidProtocolBufferException.b();
                    }
                    if (dclVar == null) {
                        continue;
                    } else if (dcxVar != null) {
                        MessageLite i2 = ((ProtoMsgHoldingMessageAndBool) ((GeneratedMessageLite) dcxVar.c).E(5)).i();
                        ByteBuffer wrap = ByteBuffer.wrap(dclVar.C());
                        if (!wrap.hasArray()) {
                            throw new IllegalArgumentException("Direct buffers not yet supported");
                        }
                        BinaryProtoFieldParser dcbVar = new BinaryProtoFieldParser(wrap);
                        MessageInfoImpl.a.b(i2).h(i2, dcbVar, dczVar);
                        p.l(dcxVar.d, i2);
                        if (dcbVar.c() != Integer.MAX_VALUE) {
                            throw InvalidProtocolBufferException.b();
                        }
                    } else {
                        ev.K(O, i, dclVar);
                    }
                }
            } finally {
                ev.N(obj, (ProtoFieldDescriptor) O);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0075. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    @Override // defpackage.MessageSchema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Object obj, byte[] bArr, int i, int i2, CodedInputStreamTagReader dcaVar) {
        GeneratedMessageLite ddkVar = (GeneratedMessageLite) obj;
        ProtoFieldDescriptor dfrVar = ddkVar.s;
        if (dfrVar == dfr.a) {
            dfrVar = ProtoFieldDescriptor.b();
            ddkVar.s = dfrVar;
        }
        MessageFieldReflectionUtil c = ((ProtoMsgWithAndroidBuildData) obj).c();
        ProtoParserFactory dcxVar = null;
        while (NavInstructionTypeEnum < i2) {
            int F = ViewCompatCore.F(bArr, i, dcaVar);
            int i3 = dcaVar.a;
            if (i3 == dge.a) {
                int i4 = 0;
                ByteString dclVar = null;
                while (F < i2) {
                    F = ViewCompatCore.F(bArr, F, dcaVar);
                    int i5 = dcaVar.a;
                    int b = GeneratedEnumUtil.b(i5);
                    switch (GeneratedEnumUtil.a(i5)) {
                        case 2:
                            if (ProtoLiteMessageBase != 0) {
                                if (i5 == dge.b) {
                                    break;
                                } else {
                                    F = ViewCompatCore.J(i5, bArr, F, i2, dcaVar);
                                }
                            } else {
                                F = ViewCompatCore.F(bArr, F, dcaVar);
                                i4 = dcaVar.a;
                                dcxVar = dcaVar.d.c(this.a, i4);
                            }
                        case 3:
                            if (dcxVar != null) {
                                F = ViewCompatCore.z(MessageInfoImpl.a.a(dcxVar.c.getClass()), bArr, F, i2, dcaVar);
                                c.l(dcxVar.d, dcaVar.c);
                            } else if (ProtoLiteMessageBase == 2) {
                                F = ViewCompatCore.w(bArr, F, dcaVar);
                                dclVar = (ByteString) dcaVar.c;
                            } else if (i5 == dge.b) {
                            }
                            break;
                        default:
                            if (i5 == dge.b) {
                            }
                            break;
                    }
                    if (dclVar != null) {
                        dfrVar.d(GeneratedEnumUtil.c(i4, 2), dclVar);
                    }
                    i = F;
                }
                if (dclVar != null) {
                }
                i = F;
            } else if (GeneratedEnumUtil.b(i3) == 2) {
                ProtoParserFactory c2 = dcaVar.d.c(this.a, GeneratedEnumUtil.a(i3));
                if (c2 != null) {
                    i = ViewCompatCore.z(MessageInfoImpl.a.a(c2.c.getClass()), bArr, F, i2, dcaVar);
                    c.l(c2.d, dcaVar.c);
                    dcxVar = c2;
                } else {
                    i = ViewCompatCore.E(i3, bArr, F, i2, dfrVar, dcaVar);
                    dcxVar = c2;
                }
            } else {
                i = ViewCompatCore.J(i3, bArr, F, i2, dcaVar);
            }
        }
        if (NavInstructionTypeEnum != i2) {
            throw InvalidProtocolBufferException.g();
        }
    }

    @Override // defpackage.MessageSchema
    public final boolean j(Object obj, Object obj2) {
        if (!ev.M(obj).equals(ev.M(obj2))) {
            return false;
        }
        if (this.b) {
            return ViewCompatCore.o(obj).equals(ViewCompatCore.o(obj2));
        }
        return true;
    }

    @Override // defpackage.MessageSchema
    public final boolean k(Object obj) {
        return ViewCompatCore.o(obj).i();
    }

    @Override // defpackage.MessageSchema
    public final void l(Object obj, ByteStringOutputCollector dcvVar) {
        Iterator d = ViewCompatCore.o(obj).d();
        while (d.hasNext()) {
            Map.Entry entry = (Map.Entry) d.next();
            if (((ProtoFieldNumber) entry.getKey()).a() != ProtoJavaType.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof ProtoMapEntry) {
                dcvVar.l(334728578, ((ProtoMapField) ((ProtoMapEntry) entry).a.getValue()).a());
            } else {
                dcvVar.l(334728578, entry.getValue());
            }
        }
        ProtoFieldDescriptor M = ev.M(obj);
        for (int i = 0; NavInstructionTypeEnum < M.b; i++) {
            dcvVar.l(GeneratedEnumUtil.a(M.c[i]), M.d[i]);
        }
    }
}
