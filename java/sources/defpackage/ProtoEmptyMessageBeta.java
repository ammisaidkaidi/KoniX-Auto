package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoEmptyMessageBeta extends ProtoMsgWithAndroidBuildData implements MessageOrBuilder {
    public static final ProtoEmptyMessageBeta a;
    private static volatile ProtoParser c;
    private byte b = 2;

    static {
        ProtoEmptyMessageBeta dotVar = new ProtoEmptyMessageBeta();
        a = dotVar;
        GeneratedMessageLite.D(ProtoEmptyMessageBeta.class, dotVar);
    }

    private ProtoEmptyMessageBeta() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.b);
            case 1:
            default:
                this.b = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(a, "\u0001\u0000", null);
            case 3:
                return new ProtoEmptyMessageBeta();
            case 4:
                return new ProtoMsgSubclassOfDdf(SingleStringProtoMessage);
            case 5:
                return a;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (ProtoEmptyMessageBeta.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(SingleStringProtoMessage);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
