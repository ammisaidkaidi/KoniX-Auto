package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageDphStringsAndCxu extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageDphStringsAndCxu i;
    private static volatile ProtoParser k;
    public int a;
    public boolean b;
    public ProtoMessageWrappingDpg c;
    public int f;
    public EntryListProto h;
    private byte j = 2;
    public String d = "";
    public String e = "";
    public String g = "";

    static {
        ProtoMessageDphStringsAndCxu dpmVar = new ProtoMessageDphStringsAndCxu();
        i = dpmVar;
        GeneratedMessageLite.D(ProtoMessageDphStringsAndCxu.class, dpmVar);
    }

    private ProtoMessageDphStringsAndCxu() {
    }

    @Override // defpackage.GeneratedMessageLite
    protected final Object a(int i2, Object obj) {
        switch (i2 - 1) {
            case 0:
                return Byte.valueOf(this.j);
            case 1:
            default:
                this.j = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return C(i, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0000\u0001\u0001ဇ\u0000\u0002ဉ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဌ\u0004\u0007ဈ\u0007\tᐉ\b", new Object[]{"a", "b", "c", "d", "e", "f", dgh.t, "g", "h"});
            case 3:
                return new ProtoMessageDphStringsAndCxu();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavInstructionTypeEnum);
            case 5:
                return i;
            case 6:
                ProtoParser dexVar = k;
                if (dexVar == null) {
                    synchronized (ProtoMessageDphStringsAndCxu.class) {
                        dexVar = k;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavInstructionTypeEnum);
                            k = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
