package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageLongBoolIntString extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageLongBoolIntString f;
    private static volatile ProtoParser g;
    public int a;
    public long b;
    public boolean c;
    public int d;
    public String e = "";

    static {
        ProtoMessageLongBoolIntString dpgVar = new ProtoMessageLongBoolIntString();
        f = dpgVar;
        GeneratedMessageLite.D(ProtoMessageLongBoolIntString.class, dpgVar);
    }

    private ProtoMessageLongBoolIntString() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004ဈ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new ProtoMessageLongBoolIntString();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (ProtoMessageLongBoolIntString.class) {
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
