package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesLogMessage extends ProtoMsgWithAndroidBuildData implements MessageOrBuilder {
    public static final PrimesLogMessage c;
    private static volatile ProtoParser f;
    public int a;
    public ProtoRootAggregateMessage b;
    private byte e = 2;

    static {
        PrimesLogMessage ccsVar = new PrimesLogMessage();
        c = ccsVar;
        GeneratedMessageLite.D(PrimesLogMessage.class, ccsVar);
    }

    private PrimesLogMessage() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.e);
            case 1:
            default:
                this.e = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(c, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᐉ\u0000", new Object[]{"a", "b"});
            case 3:
                return new PrimesLogMessage();
            case 4:
                return new ProtoMsgSubclassOfDdf(PhenotypeFlagMessage);
            case 5:
                return c;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (PrimesLogMessage.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(PhenotypeFlagMessage);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
