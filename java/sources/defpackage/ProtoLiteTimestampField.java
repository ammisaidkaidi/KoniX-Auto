package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoLiteTimestampField extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoLiteTimestampField b;
    private static volatile ProtoParser c;
    public long a;

    static {
        ProtoLiteTimestampField nVar = new ProtoLiteTimestampField();
        b = nVar;
        GeneratedMessageLite.D(ProtoLiteTimestampField.class, nVar);
    }

    private ProtoLiteTimestampField() {
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
                return C(b, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002", new Object[]{"a"});
            case 3:
                return new ProtoLiteTimestampField();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (ProtoLiteTimestampField.class) {
                        dexVar = c;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoLiteMessageBase);
                            c = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
