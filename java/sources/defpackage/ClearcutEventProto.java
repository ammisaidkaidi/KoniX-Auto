package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutEventProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ClearcutEventProto j;
    private static volatile ProtoParser l;
    public int a;
    public ProtoMegaConfigMessage b;
    public long c;
    public long d;
    public long e;
    public long f;
    public int g;
    public ProtoEmptyMessageBeta i;
    private byte k = 2;
    public String h = "";

    static {
        ClearcutEventProto cdlVar = new ClearcutEventProto();
        j = cdlVar;
        GeneratedMessageLite.D(ClearcutEventProto.class, cdlVar);
    }

    private ClearcutEventProto() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.k);
            case 1:
            default:
                this.k = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(j, "\u0001\b\u0000\u0001\u0001\t\b\u0000\u0000\u0001\u0001ဉ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005စ\u0004\u0006င\u0005\u0007ဈ\u0006\tᐉ\b", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h", "i"});
            case 3:
                return new ClearcutEventProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageTwoIntsAndFlagValue);
            case 5:
                return j;
            case 6:
                ProtoParser dexVar = l;
                if (dexVar == null) {
                    synchronized (ClearcutEventProto.class) {
                        dexVar = l;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageTwoIntsAndFlagValue);
                            l = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
