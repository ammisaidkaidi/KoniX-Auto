package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgLongStringAndLists extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgLongStringAndLists f;
    private static volatile ProtoParser h;
    public long d;
    private int g;
    public ProtobufList a = dfa.b;
    public ByteString b = dcl.b;
    public String c = "";
    public LazyStringList e = ddl.b;

    static {
        ProtoMsgLongStringAndLists dbkVar = new ProtoMsgLongStringAndLists();
        f = dbkVar;
        GeneratedMessageLite.D(ProtoMsgLongStringAndLists.class, dbkVar);
    }

    private ProtoMsgLongStringAndLists() {
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
                return C(f, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0002\u0000\u0001\u001b\u0002ည\u0000\u0003ဈ\u0001\u0004ဂ\u0002\u0006\u0016", new Object[]{"g", "a", ProtoMsgCompositeWithDbnAndDbh.class, "b", "c", "d", "e"});
            case 3:
                return new ProtoMsgLongStringAndLists();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (ProtoMsgLongStringAndLists.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavManeuverTypeEnum);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
