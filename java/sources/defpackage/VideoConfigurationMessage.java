package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoConfigurationMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final VideoConfigurationMessage m;
    private static volatile ProtoParser n;
    public int a;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public VideoSinkConfigMessage l;
    public int b = 1;
    public int c = 1;
    public int k = 1;

    static {
        VideoConfigurationMessage ckzVar = new VideoConfigurationMessage();
        m = ckzVar;
        GeneratedMessageLite.D(VideoConfigurationMessage.class, ckzVar);
    }

    private VideoConfigurationMessage() {
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
                return C(m, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဋ\u0002\u0004ဋ\u0003\u0005ဋ\u0004\u0006ဋ\u0005\u0007ဋ\u0006\bဋ\u0007\tဋ\b\nဌ\t\u000bဉ\n", new Object[]{"a", "b", VideoResolution.c(), "c", ckg.h, "d", "e", "f", "g", "h", "i", "j", "k", ckg.a, "l"});
            case 3:
                return new VideoConfigurationMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoCompositeMessageM);
            case 5:
                return m;
            case 6:
                ProtoParser dexVar = n;
                if (dexVar == null) {
                    synchronized (VideoConfigurationMessage.class) {
                        dexVar = n;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoCompositeMessageM);
                            n = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
