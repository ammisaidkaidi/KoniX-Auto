package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMsgWithDgrChild extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMsgWithDgrChild d;
    private static volatile ProtoParser f;
    public int a;
    public int b;
    public ProtoMsgManyStringsConfig c;
    private byte e = 2;

    static {
        ProtoMsgWithDgrChild dgsVar = new ProtoMsgWithDgrChild();
        d = dgsVar;
        GeneratedMessageLite.D(ProtoMsgWithDgrChild.class, dgsVar);
    }

    private ProtoMsgWithDgrChild() {
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
                return C(d, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ဌ\u0000\u0002ᐉ\u0003", new Object[]{"a", "b", dgh.f, "c"});
            case 3:
                return new ProtoMsgWithDgrChild();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMsgIntStringInt);
            case 5:
                return d;
            case 6:
                ProtoParser dexVar = f;
                if (dexVar == null) {
                    synchronized (ProtoMsgWithDgrChild.class) {
                        dexVar = f;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMsgIntStringInt);
                            f = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
