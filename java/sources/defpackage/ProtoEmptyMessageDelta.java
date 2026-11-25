package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoEmptyMessageDelta extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoEmptyMessageDelta a;
    private static volatile ProtoParser e;
    private int b;
    private ProtoMessageDphStringsAndCxu c;
    private byte d = 2;

    static {
        ProtoEmptyMessageDelta dpuVar = new ProtoEmptyMessageDelta();
        a = dpuVar;
        GeneratedMessageLite.D(ProtoEmptyMessageDelta.class, dpuVar);
    }

    private ProtoEmptyMessageDelta() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.d);
            case 1:
            default:
                this.d = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"b", "c"});
            case 3:
                return new ProtoEmptyMessageDelta();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoEmptyMessageDelta.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
