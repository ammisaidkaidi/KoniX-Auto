package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidBuildDataProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final AndroidBuildDataProto b;
    private static volatile ProtoParser d;
    public long a = -1;
    private int c;

    static {
        AndroidBuildDataProto dbbVar = new AndroidBuildDataProto();
        b = dbbVar;
        GeneratedMessageLite.D(AndroidBuildDataProto.class, dbbVar);
    }

    private AndroidBuildDataProto() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0000\u0004ဂ\u0003", new Object[]{"c", "a"});
            case 3:
                return new AndroidBuildDataProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (AndroidBuildDataProto.class) {
                        dexVar = d;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoLiteMessageBase);
                            d = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
