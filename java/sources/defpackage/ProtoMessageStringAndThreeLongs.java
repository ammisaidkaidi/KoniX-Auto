package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageStringAndThreeLongs extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageStringAndThreeLongs f;
    private static volatile ProtoParser g;
    public int a;
    public String b = "";
    public long c;
    public long d;
    public long e;

    static {
        ProtoMessageStringAndThreeLongs dpdVar = new ProtoMessageStringAndThreeLongs();
        f = dpdVar;
        GeneratedMessageLite.D(ProtoMessageStringAndThreeLongs.class, dpdVar);
    }

    private ProtoMessageStringAndThreeLongs() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new ProtoMessageStringAndThreeLongs();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (ProtoMessageStringAndThreeLongs.class) {
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
