package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgSubclassOfDdf extends ProtoMsgHoldingMessageAndBool implements MessageOrBuilder {
    public ProtoMsgSubclassOfDdf() {
        PrimesLogMessage ccsVar = ccs.c;
        throw null;
    }

    @Override // defpackage.ProtoMsgHoldingMessageAndBool, defpackage.MessageLiteBuilder
    /* renamed from: ak, reason: merged with bridge method [inline-methods] */
    public final ProtoMsgWithAndroidBuildData i() {
        if (this.c) {
            return (ProtoMsgWithAndroidBuildData) this.b;
        }
        ((ProtoMsgWithAndroidBuildData) this.b).d.e();
        return (ProtoMsgWithAndroidBuildData) super.i();
    }

    @Override // defpackage.ProtoMsgHoldingMessageAndBool
    public final void k() {
        super.k();
        ProtoMsgWithAndroidBuildData ddiVar = (ProtoMsgWithAndroidBuildData) this.b;
        ddiVar.d = ddiVar.d.clone();
    }

    public ProtoMsgSubclassOfDdf(ProtoMsgWithAndroidBuildData ddiVar) {
        super(ddiVar);
    }
}
