package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoCompositeMessageK extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoCompositeMessageK e;
    private static volatile ProtoParser f;
    public ProtobufList a = dfa.b;
    public ProtobufList b = dfa.b;
    public ProtoMessageSingleStringL c;
    public int d;

    static {
        ProtoCompositeMessageK kVar = new ProtoCompositeMessageK();
        e = kVar;
        GeneratedMessageLite.D(ProtoCompositeMessageK.class, kVar);
    }

    private ProtoCompositeMessageK() {
    }

    public final void b() {
        ProtobufList ddrVar = this.a;
        if (ddrVar.c()) {
            return;
        }
        this.a = GeneratedMessageLite.z(ddrVar);
    }

    public final void c() {
        ProtobufList ddrVar = this.b;
        if (ddrVar.c()) {
            return;
        }
        this.b = GeneratedMessageLite.z(ddrVar);
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
                return C(e, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\t\u0004\f", new Object[]{"a", m.class, "b", c.class, "c", "d"});
            case 3:
                return new ProtoCompositeMessageK();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoFlagValueMessage);
            case 5:
                return e;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoCompositeMessageK.class) {
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
