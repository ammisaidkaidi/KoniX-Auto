package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageWithDowDphDov extends ProtoMsgWithAndroidBuildData implements MessageOrBuilder {
    public static final ProtoMessageWithDowDphDov h;
    private static volatile ProtoParser j;
    public int a;
    public ProtoMessageWrappingDou b;
    public ProtoMessageWrappingDpg c;
    public int e;
    public ProtoMessageIntAndBoolean f;
    private byte i = 2;
    public String g = "";

    static {
        ProtoMessageWithDowDphDov doxVar = new ProtoMessageWithDowDphDov();
        h = doxVar;
        GeneratedMessageLite.D(ProtoMessageWithDowDphDov.class, doxVar);
    }

    private ProtoMessageWithDowDphDov() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i, Object obj) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                return Byte.valueOf(this.i);
            case 1:
            default:
                this.i = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(h, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဌ\u0002\u0004ဉ\u0003\u0005ဈ\u0004", new Object[]{"a", "b", "c", "e", dgh.m, "f", "g"});
            case 3:
                return new ProtoMessageWithDowDphDov();
            case 4:
                return new ProtoMsgSubclassOfDdf(ProtoMessageSingleEnumFieldH);
            case 5:
                return h;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (ProtoMessageWithDowDphDov.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageSingleEnumFieldH);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
