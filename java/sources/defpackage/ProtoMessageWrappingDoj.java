package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageWrappingDoj extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageWrappingDoj c;
    private static volatile ProtoParser e;
    public int a;
    public ProtoEventRecordMessage b;
    private byte d = 2;

    static {
        ProtoMessageWrappingDoj dokVar = new ProtoMessageWrappingDoj();
        c = dokVar;
        GeneratedMessageLite.D(ProtoMessageWrappingDoj.class, dokVar);
    }

    private ProtoMessageWrappingDoj() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.d);
            case 1:
            default:
                this.d = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"a", "b"});
            case 3:
                return new ProtoMessageWrappingDoj();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageWrappingDoj.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
