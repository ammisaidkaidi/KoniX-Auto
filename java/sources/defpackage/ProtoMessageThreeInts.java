package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageThreeInts extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageThreeInts d;
    private static volatile ProtoParser g;
    public int a;
    public int b;
    private ProtoEmptyMessageDelta e;
    private byte f = 2;
    public int c = 1;

    static {
        ProtoMessageThreeInts dpvVar = new ProtoMessageThreeInts();
        d = dpvVar;
        GeneratedMessageLite.D(ProtoMessageThreeInts.class, dpvVar);
    }

    private ProtoMessageThreeInts() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.f);
            case 1:
            default:
                this.f = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(d, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ဌ\u0000\u0002င\u0001\u0003ᐉ\u0002", new Object[]{"a", "b", dgh.u, "c", "e"});
            case 3:
                return new ProtoMessageThreeInts();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = g;
                if (dexVar == null) {
                    synchronized (ProtoMessageThreeInts.class) {
                        dexVar = g;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            g = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
