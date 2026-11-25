package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoConfigMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final VideoConfigMessage f;
    private static volatile ProtoParser g;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;

    static {
        VideoConfigMessage ckeVar = new VideoConfigMessage();
        f = ckeVar;
        GeneratedMessageLite.D(VideoConfigMessage.class, ckeVar);
    }

    private VideoConfigMessage() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001\u0003ဋ\u0002\u0004ဋ\u0003", new Object[]{"a", "b", "c", "d", "e"});
            case 3:
                return new VideoConfigMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (VideoConfigMessage.class) {
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
