package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoSinkConfigMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final VideoSinkConfigMessage f;
    private static volatile ProtoParser g;
    public int a;
    public VideoConfigMessage b;
    public VideoConfigMessage c;
    public VideoConfigMessage d;
    public int e;

    static {
        VideoSinkConfigMessage ckxVar = new VideoSinkConfigMessage();
        f = ckxVar;
        GeneratedMessageLite.D(VideoSinkConfigMessage.class, ckxVar);
    }

    private VideoSinkConfigMessage() {
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
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဌ\u0003", new Object[]{"a", "b", "c", "d", "e", ckg.f});
            case 3:
                return new VideoSinkConfigMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (VideoSinkConfigMessage.class) {
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
