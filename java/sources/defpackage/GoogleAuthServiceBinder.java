package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GoogleAuthServiceBinder extends GeneratedMessageLite implements MessageOrBuilder {
    public static final GoogleAuthServiceBinder b;
    private static volatile ProtoParser d;
    public int a;
    private int c;

    static {
        GoogleAuthServiceBinder bhkVar = new GoogleAuthServiceBinder();
        b = bhkVar;
        GeneratedMessageLite.D(GoogleAuthServiceBinder.class, bhkVar);
    }

    private GoogleAuthServiceBinder() {
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
                return C(b, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"c", "a", ReleaseChannelEnum.c()});
            case 3:
                return new GoogleAuthServiceBinder();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = d;
                if (dexVar == null) {
                    synchronized (GoogleAuthServiceBinder.class) {
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
