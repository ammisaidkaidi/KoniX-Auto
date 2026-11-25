package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageIntsDemAndBytes extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageIntsDemAndBytes e;
    private static volatile ProtoParser f;
    public int a;
    public int b;
    public ProtoFieldMap c = dem.a;
    public LazyStringList d;

    static {
        ProtoMessageIntsDemAndBytes dqcVar = new ProtoMessageIntsDemAndBytes();
        e = dqcVar;
        GeneratedMessageLite.D(ProtoMessageIntsDemAndBytes.class, dqcVar);
    }

    private ProtoMessageIntsDemAndBytes() {
        ProtoDoubleArrayList dfaVar = dfa.b;
        this.d = ddl.b;
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
                return C(e, "\u0001\u0003\u0000\u0001\u0002\u0005\u0003\u0001\u0001\u0000\u0002င\u0001\u00032\u0005'", new Object[]{"a", "b", "c", dqb.a, "d"});
            case 3:
                return new ProtoMessageIntsDemAndBytes();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMessageIntsDemAndBytes.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoFlagValueMessage);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
