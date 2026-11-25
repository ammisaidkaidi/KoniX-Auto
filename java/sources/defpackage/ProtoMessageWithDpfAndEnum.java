package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageWithDpfAndEnum extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageWithDpfAndEnum f;
    private static volatile ProtoParser h;
    public int a;
    public long b;
    public int c;
    public ProtoMessageManyLongFields e;
    private byte g = 2;
    public ProtobufList d = dfa.b;

    static {
        ProtoMessageWithDpfAndEnum dpbVar = new ProtoMessageWithDpfAndEnum();
        f = dpbVar;
        GeneratedMessageLite.D(ProtoMessageWithDpfAndEnum.class, dpbVar);
    }

    private ProtoMessageWithDpfAndEnum() {
    }

    public final void c() {
        ProtobufList ddrVar = this.d;
        if (ddrVar.c()) {
            return;
        }
        this.d = GeneratedMessageLite.z(ddrVar);
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.g);
            case 1:
            default:
                this.g = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(f, "\u0001\u0004\u0000\u0001\u0001\u0006\u0004\u0000\u0001\u0001\u0001စ\u0000\u0002Л\u0003ဌ\u0001\u0006ဉ\u0004", new Object[]{"a", "b", "d", ProtoMessageStringAndFiveLongs.class, "c", dgh.p, "e"});
            case 3:
                return new ProtoMessageWithDpfAndEnum();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavManeuverTypeEnum);
            case 5:
                return f;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (ProtoMessageWithDpfAndEnum.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavManeuverTypeEnum);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
