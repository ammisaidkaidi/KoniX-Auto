package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageDemPairBytesAndEnums extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageDemPairBytesAndEnums f;
    private static volatile ProtoParser g;
    public ProtoFieldMap a = dem.a;
    public ProtoFieldMap b = dem.a;
    public ProtobufList c = dfa.b;
    public LazyStringList d = ddl.b;
    public ProtobufList e = dfa.b;

    static {
        ProtoMessageDemPairBytesAndEnums dqjVar = new ProtoMessageDemPairBytesAndEnums();
        f = dqjVar;
        GeneratedMessageLite.D(ProtoMessageDemPairBytesAndEnums.class, dqjVar);
    }

    private ProtoMessageDemPairBytesAndEnums() {
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
                return C(f, "\u0001\u0005\u0000\u0000\u0001\u0005\u0005\u0002\u0003\u0000\u00012\u00022\u0003\u001b\u0004'\u0005\u001b", new Object[]{"a", dqh.a, "b", dqi.a, "c", ProtoMessageDemPairAndEnums.class, "d", "e", ProtoMessageBytesAndTwoInts.class});
            case 3:
                return new ProtoMessageDemPairBytesAndEnums();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (ProtoMessageDemPairBytesAndEnums.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavManeuverTypeEnum);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
