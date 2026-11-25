package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgEmpty extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgEmpty a;
    private static volatile ProtoParser b;

    static {
        ProtoMsgEmpty dbzVar = new ProtoMsgEmpty();
        a = dbzVar;
        GeneratedMessageLite.D(ProtoMsgEmpty.class, dbzVar);
    }

    private ProtoMsgEmpty() {
        ByteString dclVar = dcl.b;
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
                return C(a, "\u0000\u0000", null);
            case 3:
                return new ProtoMsgEmpty();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = b;
                if (dexVar == null) {
                    synchronized (ProtoMsgEmpty.class) {
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
