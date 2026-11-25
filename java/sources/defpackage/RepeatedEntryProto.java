package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RepeatedEntryProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final RepeatedEntryProto f;
    private static volatile ProtoParser h;
    public int a;
    public long d;
    private byte g = 2;
    public String b = "";
    public String c = "";
    public ProtobufList e = dfa.b;

    static {
        RepeatedEntryProto cxtVar = new RepeatedEntryProto();
        f = cxtVar;
        GeneratedMessageLite.D(RepeatedEntryProto.class, cxtVar);
    }

    private RepeatedEntryProto() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001ᔈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004б", new Object[]{"a", "b", "c", "d", "e", SyncConfigProto.class});
            case 3:
                return new RepeatedEntryProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (RepeatedEntryProto.class) {
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
