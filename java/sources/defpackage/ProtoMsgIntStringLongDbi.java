package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgIntStringLongDbi extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgIntStringLongDbi f;
    private static volatile ProtoParser g;
    public int a;
    public String b = "";
    public long c;
    public ProtoMsgTwoInts d;
    public long e;

    static {
        ProtoMsgIntStringLongDbi dbpVar = new ProtoMsgIntStringLongDbi();
        f = dbpVar;
        GeneratedMessageLite.D(ProtoMsgIntStringLongDbi.class, dbpVar);
    }

    private ProtoMsgIntStringLongDbi() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဉ\u0002\u0004ဎ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new ProtoMsgIntStringLongDbi();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (ProtoMsgIntStringLongDbi.class) {
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
