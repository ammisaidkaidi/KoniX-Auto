package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StickyAccountProto extends GeneratedMessageLite implements MessageOrBuilder {
    public static final StickyAccountProto g;
    private static volatile ProtoParser i;
    public String a = "";
    public boolean b;
    public int c;
    public boolean d;
    public boolean e;
    public boolean f;
    private int h;

    static {
        StickyAccountProto cfoVar = new StickyAccountProto();
        g = cfoVar;
        GeneratedMessageLite.D(StickyAccountProto.class, cfoVar);
    }

    private StickyAccountProto() {
        ProtoDoubleArrayList dfaVar = dfa.b;
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(g, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဌ\u0002\u0005ဇ\u0003\u0006ဇ\u0005\u0007ဇ\u0004", new Object[]{"h", "a", "b", "c", ckg.t, "d", "f", "e"});
            case 3:
                return new StickyAccountProto();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageIntAndBooleanG);
            case 5:
                return g;
            case 6:
                ProtoParser dexVar = i;
                if (dexVar == null) {
                    synchronized (StickyAccountProto.class) {
                        dexVar = i;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageIntAndBooleanG);
                            i = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
