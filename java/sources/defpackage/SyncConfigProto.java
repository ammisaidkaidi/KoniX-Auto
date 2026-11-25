package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SyncConfigProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final SyncConfigProto f;
    private static volatile ProtoParser h;
    public int a;
    public int e;
    private byte g = 2;
    public String b = "";
    public String c = "";
    public String d = "";

    static {
        SyncConfigProto cxsVar = new SyncConfigProto();
        f = cxsVar;
        GeneratedMessageLite.D(SyncConfigProto.class, cxsVar);
    }

    private SyncConfigProto() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.g);
            case 1:
            default:
                this.g = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(f, "\u0001\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0003\u0005ᔈ\u0000\u0006ᔈ\u0001\u0007ဈ\u0002\bᔄ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new SyncConfigProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (SyncConfigProto.class) {
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
