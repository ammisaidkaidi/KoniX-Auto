package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetricConfigProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final PrimesMetricConfigProto d;
    private static volatile ProtoParser e;
    public int a;
    public long b;
    public int c;

    static {
        PrimesMetricConfigProto dpyVar = new PrimesMetricConfigProto();
        d = dpyVar;
        GeneratedMessageLite.D(PrimesMetricConfigProto.class, dpyVar);
    }

    private PrimesMetricConfigProto() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဂ\u0001\u0003ဌ\u0002", new Object[]{"a", "b", "c", dpw.a});
            case 3:
                return new PrimesMetricConfigProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = e;
                if (dexVar == null) {
                    synchronized (PrimesMetricConfigProto.class) {
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
