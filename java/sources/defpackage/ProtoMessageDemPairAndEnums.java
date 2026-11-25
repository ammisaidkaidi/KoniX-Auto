package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageDemPairAndEnums extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageDemPairAndEnums h;
    private static volatile ProtoParser i;
    public ProtoFieldMap a = dem.a;
    public ProtoFieldMap b = dem.a;
    public ProtobufList c = dfa.b;
    public ByteStringList d = deg.b;
    public LazyStringList e = ddl.b;
    public LazyStringList f = ddl.b;
    public ByteStringList g = deg.b;

    static {
        ProtoMessageDemPairAndEnums dqgVar = new ProtoMessageDemPairAndEnums();
        h = dqgVar;
        GeneratedMessageLite.D(ProtoMessageDemPairAndEnums.class, dqgVar);
    }

    private ProtoMessageDemPairAndEnums() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(h, "\u0001\u0007\u0000\u0000\u0002\n\u0007\u0002\u0005\u0000\u00022\u00032\u0006\u001b\u0007%\b'\t'\n%", new Object[]{"a", dqe.a, "b", dqf.a, "c", ProtoMessageIntsDemAndBytes.class, "d", "e", "f", "g"});
            case 3:
                return new ProtoMessageDemPairAndEnums();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (ProtoMessageDemPairAndEnums.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
