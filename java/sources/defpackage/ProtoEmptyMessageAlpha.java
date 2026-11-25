package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoEmptyMessageAlpha extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoEmptyMessageAlpha a;
    private static volatile ProtoParser b;

    static {
        ProtoEmptyMessageAlpha dooVar = new ProtoEmptyMessageAlpha();
        a = dooVar;
        GeneratedMessageLite.D(ProtoEmptyMessageAlpha.class, dooVar);
    }

    private ProtoEmptyMessageAlpha() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(a, "\u0001\u0000", null);
            case 3:
                return new ProtoEmptyMessageAlpha();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = b;
                if (dexVar == null) {
                    synchronized (ProtoEmptyMessageAlpha.class) {
                        dexVar = b;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            b = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
