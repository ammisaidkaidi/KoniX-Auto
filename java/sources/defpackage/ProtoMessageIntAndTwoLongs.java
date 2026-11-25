package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageIntAndTwoLongs extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageIntAndTwoLongs d;
    private static volatile ProtoParser e;
    public int a;
    public long b;
    public long c;

    static {
        ProtoMessageIntAndTwoLongs dpoVar = new ProtoMessageIntAndTwoLongs();
        d = dpoVar;
        GeneratedMessageLite.D(ProtoMessageIntAndTwoLongs.class, dpoVar);
    }

    private ProtoMessageIntAndTwoLongs() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"a", "b", "c"});
            case 3:
                return new ProtoMessageIntAndTwoLongs();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (ProtoMessageIntAndTwoLongs.class) {
                        dexVar = e;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            e = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
