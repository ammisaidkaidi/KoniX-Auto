package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UrlSanitizerImpl implements UrlSanitizer {
    private final /* synthetic */ int a;

    public UrlSanitizerImpl(int i) {
        this.a = i;
    }

    @Override // defpackage.UrlSanitizer
    public final /* synthetic */ String a(MessageLiteBuilder deqVar) {
        switch (this.a) {
            case 0:
                return ((ProtoEventRecordMessage) ((ProtoMsgHoldingMessageAndBool) deqVar).b).e;
            case 1:
                return ((ProtoRootAggregateMessage) ((ProtoMsgHoldingMessageAndBool) deqVar).b).o;
            default:
                return ((ProtoMessageStringAndFiveLongs) ((ProtoMsgHoldingMessageAndBool) deqVar).b).b;
        }
    }

    @Override // defpackage.UrlSanitizer
    public final /* synthetic */ String b(MessageLiteBuilder deqVar) {
        switch (this.a) {
            case 0:
                return ((ProtoEventRecordMessage) ((ProtoMsgHoldingMessageAndBool) deqVar).b).d;
            case 1:
                return ((ProtoRootAggregateMessage) ((ProtoMsgHoldingMessageAndBool) deqVar).b).d;
            default:
                return ((ProtoMessageStringAndFiveLongs) ((ProtoMsgHoldingMessageAndBool) deqVar).b).d;
        }
    }

    @Override // defpackage.UrlSanitizer
    public final /* synthetic */ void d(MessageLiteBuilder deqVar) {
        switch (this.a) {
            case 0:
                ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) deqVar;
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                ProtoEventRecordMessage dojVar = (ProtoEventRecordMessage) ddfVar.b;
                ProtoEventRecordMessage dojVar2 = doj.k;
                dojVar.a &= -5;
                dojVar.d = ProtoEventRecordMessage.k.d;
                break;
            case 1:
                ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) deqVar;
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) ddfVar2.b;
                ProtoRootAggregateMessage dpzVar2 = dpz.y;
                dpzVar.a &= -5;
                dpzVar.d = ProtoRootAggregateMessage.y.d;
                break;
            default:
                ProtoMsgHoldingMessageAndBool ddfVar3 = (ProtoMsgHoldingMessageAndBool) deqVar;
                if (ddfVar3.c) {
                    ddfVar3.k();
                    ddfVar3.c = false;
                }
                ProtoMessageStringAndFiveLongs dpcVar = (ProtoMessageStringAndFiveLongs) ddfVar3.b;
                ProtoMessageStringAndFiveLongs dpcVar2 = dpc.k;
                dpcVar.a &= -5;
                dpcVar.d = ProtoMessageStringAndFiveLongs.k.d;
                break;
        }
    }

    @Override // defpackage.UrlSanitizer
    public final /* synthetic */ void c(MessageLiteBuilder deqVar, Long l) {
        switch (this.a) {
            case 0:
                if (ProtoMessageSingleStringL == null) {
                    ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    ProtoEventRecordMessage dojVar = (ProtoEventRecordMessage) ddfVar.b;
                    ProtoEventRecordMessage dojVar2 = doj.k;
                    dojVar.a &= -3;
                    dojVar.c = 0L;
                    break;
                } else {
                    long longValue = l.longValue();
                    ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar2.c) {
                        ddfVar2.k();
                        ddfVar2.c = false;
                    }
                    ProtoEventRecordMessage dojVar3 = (ProtoEventRecordMessage) ddfVar2.b;
                    ProtoEventRecordMessage dojVar4 = doj.k;
                    dojVar3.a |= 2;
                    dojVar3.c = longValue;
                    break;
                }
            case 1:
                if (ProtoMessageSingleStringL == null) {
                    ProtoMsgHoldingMessageAndBool ddfVar3 = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) ddfVar3.b;
                    ProtoRootAggregateMessage dpzVar2 = dpz.y;
                    dpzVar.a &= -3;
                    dpzVar.c = 0L;
                    break;
                } else {
                    long longValue2 = l.longValue();
                    ProtoMsgHoldingMessageAndBool ddfVar4 = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar4.c) {
                        ddfVar4.k();
                        ddfVar4.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar3 = (ProtoRootAggregateMessage) ddfVar4.b;
                    ProtoRootAggregateMessage dpzVar4 = dpz.y;
                    dpzVar3.a |= 2;
                    dpzVar3.c = longValue2;
                    break;
                }
            default:
                if (ProtoMessageSingleStringL != null) {
                    long longValue3 = l.longValue();
                    ProtoMsgHoldingMessageAndBool ddfVar5 = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar5.c) {
                        ddfVar5.k();
                        ddfVar5.c = false;
                    }
                    ProtoMessageStringAndFiveLongs dpcVar = (ProtoMessageStringAndFiveLongs) ddfVar5.b;
                    ProtoMessageStringAndFiveLongs dpcVar2 = dpc.k;
                    dpcVar.a |= 2;
                    dpcVar.c = longValue3;
                    break;
                } else {
                    ProtoMsgHoldingMessageAndBool ddfVar6 = (ProtoMsgHoldingMessageAndBool) deqVar;
                    if (ddfVar6.c) {
                        ddfVar6.k();
                        ddfVar6.c = false;
                    }
                    ProtoMessageStringAndFiveLongs dpcVar3 = (ProtoMessageStringAndFiveLongs) ddfVar6.b;
                    ProtoMessageStringAndFiveLongs dpcVar4 = dpc.k;
                    dpcVar3.a &= -3;
                    dpcVar3.c = 0L;
                    break;
                }
        }
    }
}
