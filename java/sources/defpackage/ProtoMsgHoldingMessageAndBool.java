package defpackage;

import java.io.IOException;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ProtoMsgHoldingMessageAndBool extends ProtoMessageBuilderBase implements MessageOrBuilder {
    public final GeneratedMessageLite a;
    public GeneratedMessageLite b;
    public boolean c;

    public ProtoMsgHoldingMessageAndBool() {
        ProtoLiteMessageBase bVar = b.c;
        throw null;
    }

    private static final void ak(GeneratedMessageLite ddkVar, GeneratedMessageLite ddkVar2) {
        MessageInfoImpl.a.b(ddkVar).g(ddkVar, ddkVar2);
    }

    public final void A(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar = (ProtoMsgConfigWithDglChild) this.b;
        ProtoMsgConfigWithDglChild dgnVar2 = dgn.m;
        dgnVar.c();
        dgnVar.k.e(ProtoMessageTwoIntsAndFlagValue);
    }

    public final void B(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMessageWithTwoEnumsAndDom donVar = (ProtoMessageWithTwoEnumsAndDom) this.b;
        ProtoMessageWithTwoEnumsAndDom donVar2 = don.e;
        ProtobufList ddrVar = donVar.b;
        if (!ddrVar.c()) {
            donVar.b = GeneratedMessageLite.z(ddrVar);
        }
        ProtoMessageBuilderBase.d(iterable, donVar.b);
    }

    public final void C(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMessageWithTwoEnumsAndDom donVar = (ProtoMessageWithTwoEnumsAndDom) this.b;
        ProtoMessageWithTwoEnumsAndDom donVar2 = don.e;
        ProtobufList ddrVar = donVar.c;
        if (!ddrVar.c()) {
            donVar.c = GeneratedMessageLite.z(ddrVar);
        }
        ProtoMessageBuilderBase.d(iterable, donVar.c);
    }

    public final ProtoMessageTwoIntsLongAndDom D(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).g.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom E(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).h.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom F(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).i.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom G(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).j.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom H(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).k.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom I(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).l.get(NavInstructionTypeEnum);
    }

    public final ProtoMessageTwoIntsLongAndDom J(int i) {
        return (ProtoMessageTwoIntsLongAndDom) ((ProtoMegaConfigMessage) this.b).n.get(NavInstructionTypeEnum);
    }

    public final void K(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.J();
        ProtoMessageBuilderBase.d(iterable, dosVar.l);
    }

    public final void L(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.K();
        ProtoMessageBuilderBase.d(iterable, dosVar.n);
    }

    public final void M(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        ProtobufList ddrVar = dosVar.u;
        if (!ddrVar.c()) {
            dosVar.u = GeneratedMessageLite.z(ddrVar);
        }
        ProtoMessageBuilderBase.d(iterable, dosVar.u);
    }

    public final void N(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        ProtobufList ddrVar = dosVar.p;
        if (!ddrVar.c()) {
            dosVar.p = GeneratedMessageLite.z(ddrVar);
        }
        ProtoMessageBuilderBase.d(iterable, dosVar.p);
    }

    public final void O(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.I();
        ProtoMessageBuilderBase.d(iterable, dosVar.k);
    }

    public final void P(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.H();
        ProtoMessageBuilderBase.d(iterable, dosVar.j);
    }

    public final void Q(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.c();
        ProtoMessageBuilderBase.d(iterable, dosVar.g);
    }

    public final void R(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.k();
        ProtoMessageBuilderBase.d(iterable, dosVar.h);
    }

    public final void S(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.G();
        ProtoMessageBuilderBase.d(iterable, dosVar.i);
    }

    public final void T(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.b |= 65536;
        dosVar.am = j;
    }

    public final void U(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.b |= 1048576;
        dosVar.aq = j;
    }

    public final void V(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.J();
        dosVar.l.set(i, dorVar);
    }

    public final void W(ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.an = dorVar;
        dosVar.b |= 131072;
    }

    public final void X(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.K();
        dosVar.n.set(i, dorVar);
    }

    public final void Y(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.I();
        dosVar.k.set(i, dorVar);
    }

    public final void Z(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.b |= 524288;
        dosVar.ap = j;
    }

    public final void aa(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dosVar.b |= 262144;
        dosVar.ao = j;
    }

    public final void ab(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.H();
        dosVar.j.set(i, dorVar);
    }

    public final void ac(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.c();
        dosVar.g.set(i, dorVar);
    }

    public final void ad(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.k();
        dosVar.h.set(i, dorVar);
    }

    public final void ae(int i, ProtoMessageTwoIntsLongAndDom dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMegaConfigMessage dosVar = (ProtoMegaConfigMessage) this.b;
        ProtoMegaConfigMessage dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.G();
        dosVar.i.set(i, dorVar);
    }

    public final void af(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMessageTwoBytesFields dptVar = (ProtoMessageTwoBytesFields) this.b;
        ProtoMessageTwoBytesFields dptVar2 = dpt.c;
        LazyStringList ddpVar = dptVar.b;
        if (!ddpVar.c()) {
            dptVar.b = GeneratedMessageLite.v(ddpVar);
        }
        dptVar.b.g(NavInstructionTypeEnum);
    }

    public final void ag(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMessageTwoBytesFields dptVar = (ProtoMessageTwoBytesFields) this.b;
        ProtoMessageTwoBytesFields dptVar2 = dpt.c;
        LazyStringList ddpVar = dptVar.a;
        if (!ddpVar.c()) {
            dptVar.a = GeneratedMessageLite.v(ddpVar);
        }
        dptVar.a.g(NavInstructionTypeEnum);
    }

    public final void ah(Map map) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMessageIntsDemAndBytes dqcVar = (ProtoMessageIntsDemAndBytes) this.b;
        ProtoMessageIntsDemAndBytes dqcVar2 = dqc.e;
        ProtoFieldMap demVar = dqcVar.c;
        if (!demVar.b) {
            dqcVar.c = demVar.a();
        }
        dqcVar.c.putAll(map);
    }

    public final void ai(ProtoMsgHoldingMessageAndBool ddfVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoCompositeMessageK kVar = (ProtoCompositeMessageK) this.b;
        ProtoCompositeMessageM mVar = (ProtoCompositeMessageM) ddfVar.h();
        ProtoCompositeMessageK kVar2 = k.e;
        mVar.getClass();
        kVar.b();
        kVar.a.add(mVar);
    }

    public final void aj(ProtoMsgHoldingMessageAndBool ddfVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgIntsStringAndList dgxVar = (ProtoMsgIntsStringAndList) this.b;
        ProtoMsgSixIntsAndDgy dgwVar = (ProtoMsgSixIntsAndDgy) ddfVar.h();
        ProtoMsgIntsStringAndList dgxVar2 = dgx.h;
        dgwVar.getClass();
        ProtobufList ddrVar = dgxVar.e;
        if (!ddrVar.c()) {
            dgxVar.e = GeneratedMessageLite.z(ddrVar);
        }
        dgxVar.e.add(dgwVar);
    }

    @Override // defpackage.ProtoMessageBuilderBase
    protected final /* synthetic */ ProtoMessageBuilderBase b(ProtoMessageLiteBase dbvVar) {
        n((GeneratedMessageLite) dbvVar);
        return this;
    }

    @Override // defpackage.ProtoMessageBuilderBase
    /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ProtoMsgHoldingMessageAndBool clone() {
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) this.a.E(5);
        ddfVar.n(i());
        return ddfVar;
    }

    @Override // defpackage.MessageLiteBuilder
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final GeneratedMessageLite h() {
        GeneratedMessageLite i = i();
        if (i.l()) {
            return i;
        }
        throw new UninitializedMessageException();
    }

    @Override // defpackage.MessageLiteBuilder
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public GeneratedMessageLite i() {
        if (this.c) {
            return this.b;
        }
        GeneratedMessageLite ddkVar = this.b;
        MessageInfoImpl.a.b(ddkVar).f(ddkVar);
        this.c = true;
        return this.b;
    }

    @Override // defpackage.MessageOrBuilder
    public final /* synthetic */ MessageLite j() {
        return this.a;
    }

    public void k() {
        GeneratedMessageLite ddkVar = (GeneratedMessageLite) this.b.E(4);
        ak(ddkVar, this.b);
        this.b = ddkVar;
    }

    @Override // defpackage.MessageOrBuilder
    public final boolean l() {
        throw null;
    }

    public final void m(CodedInputStreamReaderBase dcpVar, ExtensionRegistryLite dczVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        try {
            MessageInfoImpl.a.b(this.b).h(this.b, LiteProtoFieldParser.p(dcpVar), dczVar);
        } catch (RuntimeException e) {
            if (!(e.getCause() instanceof IOException)) {
                throw e;
            }
            throw ((IOException) e.getCause());
        }
    }

    public final void n(GeneratedMessageLite ddkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ak(this.b, ddkVar);
    }

    public final void o(String str) {
        if (this.c) {
            k();
            this.c = false;
        }
        PhenotypeSyncMessage cemVar = (PhenotypeSyncMessage) this.b;
        PhenotypeSyncMessage cemVar2 = cem.i;
        str.getClass();
        ProtobufList ddrVar = cemVar.f;
        if (!ddrVar.c()) {
            cemVar.f = GeneratedMessageLite.z(ddrVar);
        }
        cemVar.f.add(str);
    }

    public final void p(PhenotypeSyncSubMessage cenVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        PhenotypeSyncMessage cemVar = (PhenotypeSyncMessage) this.b;
        PhenotypeSyncMessage cemVar2 = cem.i;
        cenVar.getClass();
        ProtobufList ddrVar = cemVar.e;
        if (!ddrVar.c()) {
            cemVar.e = GeneratedMessageLite.z(ddrVar);
        }
        cemVar.e.add(cenVar);
    }

    public final void q(String str) {
        if (this.c) {
            k();
            this.c = false;
        }
        FlagValueProto_cfb cfbVar = (FlagValueProto_cfb) this.b;
        FlagValueProto_cfb cfbVar2 = cfb.d;
        str.getClass();
        ProtobufList ddrVar = cfbVar.b;
        if (!ddrVar.c()) {
            cfbVar.b = GeneratedMessageLite.z(ddrVar);
        }
        cfbVar.b.add(str);
    }

    public final void r(String str, FlagValueProto_cfb cfbVar) {
        str.getClass();
        cfbVar.getClass();
        if (this.c) {
            k();
            this.c = false;
        }
        PhenotypeSnapshotProto cffVar = (PhenotypeSnapshotProto) this.b;
        PhenotypeSnapshotProto cffVar2 = cff.b;
        cffVar.b().put(str, cfbVar);
    }

    public final void s(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgManyMixedFields dbtVar = (ProtoMsgManyMixedFields) this.b;
        ProtoMsgManyMixedFields dbtVar2 = dbt.p;
        ProtobufList ddrVar = dbtVar.g;
        if (!ddrVar.c()) {
            dbtVar.g = GeneratedMessageLite.z(ddrVar);
        }
        ProtoMessageBuilderBase.d(iterable, dbtVar.g);
    }

    public final void t(ProtoMsgRepeatedPairFields dgkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgTwoRepeatedFields dgjVar = (ProtoMsgTwoRepeatedFields) this.b;
        ProtoMsgTwoRepeatedFields dgjVar2 = dgj.c;
        dgkVar.getClass();
        ProtobufList ddrVar = dgjVar.b;
        if (!ddrVar.c()) {
            dgjVar.b = GeneratedMessageLite.z(ddrVar);
        }
        dgjVar.b.add(dgkVar);
    }

    public final void u(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgTwoRepeatedFields dgjVar = (ProtoMsgTwoRepeatedFields) this.b;
        ProtoMsgTwoRepeatedFields dgjVar2 = dgj.c;
        LazyStringList ddpVar = dgjVar.a;
        if (!ddpVar.c()) {
            dgjVar.a = GeneratedMessageLite.v(ddpVar);
        }
        dgjVar.a.g(NavInstructionTypeEnum - 1);
    }

    public final void v(ProtoMsgTwoRepeatedFields dgjVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgRepeatedPairFields dgkVar = (ProtoMsgRepeatedPairFields) this.b;
        ProtoMsgRepeatedPairFields dgkVar2 = dgk.c;
        dgjVar.getClass();
        ProtobufList ddrVar = dgkVar.b;
        if (!ddrVar.c()) {
            dgkVar.b = GeneratedMessageLite.z(ddrVar);
        }
        dgkVar.b.add(dgjVar);
    }

    public final void w(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgRepeatedPairFields dgkVar = (ProtoMsgRepeatedPairFields) this.b;
        ProtoMsgRepeatedPairFields dgkVar2 = dgk.c;
        LazyStringList ddpVar = dgkVar.a;
        if (!ddpVar.c()) {
            dgkVar.a = GeneratedMessageLite.v(ddpVar);
        }
        dgkVar.a.g(NavInstructionTypeEnum - 1);
    }

    public final void x(ProtoMsgTwoRepeatedFields dgjVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgIntAndObject dglVar = (ProtoMsgIntAndObject) this.b;
        ProtoMsgIntAndObject dglVar2 = dgl.c;
        dgjVar.getClass();
        dglVar.b = dgjVar;
        dglVar.a = 2;
    }

    public final void y(ProtoMsgRepeatedPairFields dgkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgIntAndObject dglVar = (ProtoMsgIntAndObject) this.b;
        ProtoMsgIntAndObject dglVar2 = dgl.c;
        dgkVar.getClass();
        dglVar.b = dgkVar;
        dglVar.a = 3;
    }

    public final void z(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        ProtoMsgIntAndObject dglVar = (ProtoMsgIntAndObject) this.b;
        ProtoMsgIntAndObject dglVar2 = dgl.c;
        dglVar.b = Integer.valueOf(NavInstructionTypeEnum - 1);
        dglVar.a = 1;
    }

    public ProtoMsgHoldingMessageAndBool(GeneratedMessageLite ddkVar) {
        this.a = ddkVar;
        this.b = (GeneratedMessageLite) ddkVar.E(4);
        this.c = false;
    }
}
