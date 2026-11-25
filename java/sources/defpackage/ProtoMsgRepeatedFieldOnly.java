package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgRepeatedFieldOnly extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgRepeatedFieldOnly b;
    private static volatile ProtoParser c;
    public ProtobufList a = dfa.b;

    static {
        ProtoMsgRepeatedFieldOnly dgvVar = new ProtoMsgRepeatedFieldOnly();
        b = dgvVar;
        GeneratedMessageLite.D(ProtoMsgRepeatedFieldOnly.class, dgvVar);
    }

    private ProtoMsgRepeatedFieldOnly() {
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
                return C(b, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"a", ProtoMsgIntsStringAndLongs.class});
            case 3:
                return new ProtoMsgRepeatedFieldOnly();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoLiteMessageBase);
            case 5:
                return b;
            case 6:
                ProtoParser dexVar = c;
                if (dexVar == null) {
                    synchronized (ProtoMsgRepeatedFieldOnly.class) {
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
