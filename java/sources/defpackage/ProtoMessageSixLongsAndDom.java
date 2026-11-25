package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMessageSixLongsAndDom extends GeneratedMessageLite implements MessageOrBuilder {
    public static final ProtoMessageSixLongsAndDom i;
    private static volatile ProtoParser j;
    public int a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public ProtoMessageLongAndString h;

    static {
        ProtoMessageSixLongsAndDom dopVar = new ProtoMessageSixLongsAndDom();
        i = dopVar;
        GeneratedMessageLite.D(ProtoMessageSixLongsAndDom.class, dopVar);
    }

    private ProtoMessageSixLongsAndDom() {
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
                return C(i, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဉ\u0006", new Object[]{"a", "b", "c", "d", "e", "f", "g", "h"});
            case 3:
                return new ProtoMessageSixLongsAndDom();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(NavInstructionTypeEnum);
            case 5:
                return i;
            case 6:
                ProtoParser dexVar = j;
                if (dexVar == null) {
                    synchronized (ProtoMessageSixLongsAndDom.class) {
                        dexVar = j;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(NavInstructionTypeEnum);
                            j = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
