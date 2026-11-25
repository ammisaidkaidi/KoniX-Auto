package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothDeviceInfoMessage extends GeneratedMessageLite implements MessageOrBuilder {
    public static final BluetoothDeviceInfoMessage g;
    private static volatile ProtoParser h;
    public int a;
    public String b = "";
    public String c = "";
    public String d = "";
    public int e;
    public int f;

    static {
        BluetoothDeviceInfoMessage clcVar = new BluetoothDeviceInfoMessage();
        g = clcVar;
        GeneratedMessageLite.D(BluetoothDeviceInfoMessage.class, clcVar);
    }

    private BluetoothDeviceInfoMessage() {
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
                return C(g, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဌ\u0003\u0005ဌ\u0004", new Object[]{"a", "b", "c", "d", "e", ckg.m, "f", ckg.i});
            case 3:
                return new BluetoothDeviceInfoMessage();
            case 4:
                return new ProtoMsgHoldingMessageAndBool(ProtoMessageIntAndBooleanG);
            case 5:
                return g;
            case 6:
                ProtoParser dexVar = h;
                if (dexVar == null) {
                    synchronized (BluetoothDeviceInfoMessage.class) {
                        dexVar = h;
                        if (dexVar == null) {
                            dexVar = new ProtoParserForGeneratedMessage(ProtoMessageIntAndBooleanG);
                            h = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
