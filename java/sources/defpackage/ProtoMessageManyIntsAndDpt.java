package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageManyIntsAndDpt extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageManyIntsAndDpt o;
    private static volatile ProtoParser p;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public ProtoMessageTwoBytesFields i;
    public ProtobufList j = dfa.b;
    public int k;
    public int l;
    public int m;
    public ProtoMessageTwoBytesFields n;

    static {
        ProtoMessageManyIntsAndDpt dpqVar = new ProtoMessageManyIntsAndDpt();
        o = dpqVar;
        GeneratedMessageLite.D(ProtoMessageManyIntsAndDpt.class, dpqVar);
    }

    private ProtoMessageManyIntsAndDpt() {
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
                return C(o, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0003\u0004င\u0006\u0005\u001b\u0006င\b\u0007င\u0002\bင\u0004\tင\u0005\nဉ\u0007\u000bင\t\fင\n\rဉ\u000b", new Object[]{"a", "b", "c", "e", "h", "j", ProtoMessageFourInts.class, "k", "d", "f", "g", "i", "l", "m", "n"});
            case 3:
                return new ProtoMessageManyIntsAndDpt();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(IcuConfigApostropheModeAction);
            case 5:
                return o;
            case 6:
                ProtoParser dexVar = p;
                if (dexVar == null) {
                    synchronized (ProtoMessageManyIntsAndDpt.class) {
                        dexVar = p;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(IcuConfigApostropheModeAction);
                            p = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
