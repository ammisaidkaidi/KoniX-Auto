package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FlagConfigProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final FlagConfigProto a;
    private static volatile ProtoParser g;
    private int b;
    private long c;
    private int d;
    private int e;
    private byte f = 2;

    static {
        FlagConfigProto cxqVar = new FlagConfigProto();
        a = cxqVar;
        GeneratedMessageLite.D(FlagConfigProto.class, cxqVar);
    }

    private FlagConfigProto() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.f);
            case 1:
            default:
                this.f = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001ᔂ\u0000\u0002ᔆ\u0001\u0003ᔆ\u0002", new Object[]{"b", "c", "d", "e"});
            case 3:
                return new FlagConfigProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (FlagConfigProto.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
