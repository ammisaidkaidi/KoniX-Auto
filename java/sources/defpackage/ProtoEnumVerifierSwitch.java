package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoEnumVerifierSwitch implements EnumVerifier {
    private final /* synthetic */ int v;
    public static final EnumVerifier u = new ProtoEnumVerifierSwitch(20);
    public static final EnumVerifier t = new ProtoEnumVerifierSwitch(19);
    public static final EnumVerifier s = new ProtoEnumVerifierSwitch(18);
    public static final EnumVerifier r = new ProtoEnumVerifierSwitch(17);
    public static final EnumVerifier q = new ProtoEnumVerifierSwitch(16);
    public static final EnumVerifier p = new ProtoEnumVerifierSwitch(15);
    public static final EnumVerifier o = new ProtoEnumVerifierSwitch(14);
    public static final EnumVerifier n = new ProtoEnumVerifierSwitch(13);
    public static final EnumVerifier m = new ProtoEnumVerifierSwitch(12);
    public static final EnumVerifier l = new ProtoEnumVerifierSwitch(11);
    public static final EnumVerifier k = new ProtoEnumVerifierSwitch(10);
    public static final EnumVerifier j = new ProtoEnumVerifierSwitch(9);
    public static final EnumVerifier i = new ProtoEnumVerifierSwitch(8);
    public static final EnumVerifier h = new ProtoEnumVerifierSwitch(7);
    public static final EnumVerifier g = new ProtoEnumVerifierSwitch(6);
    public static final EnumVerifier f = new ProtoEnumVerifierSwitch(5);
    public static final EnumVerifier e = new ProtoEnumVerifierSwitch(4);
    public static final EnumVerifier d = new ProtoEnumVerifierSwitch(3);
    public static final EnumVerifier c = new ProtoEnumVerifierSwitch(2);
    public static final EnumVerifier b = new ProtoEnumVerifierSwitch(1);
    static final EnumVerifier a = new ProtoEnumVerifierSwitch(0);

    private ProtoEnumVerifierSwitch(int i2) {
        this.v = i2;
    }

    @Override // defpackage.EnumVerifier
    public final boolean a(int i2) {
        switch (this.v) {
            case 0:
                if (ProtoEnumValueUtil.b(i2) != 0) {
                }
                break;
            case 1:
                if (ViewCompatCore.L(i2) != 0) {
                }
                break;
            case 2:
                if (ProtoGeneratedClassHelper.a(i2) != 0) {
                }
                break;
            case 3:
                if (CommonObjectsAndPreconditionsUtil.v(i2) != 0) {
                }
                break;
            case 4:
                if (ReleaseChannelEnum.b(i2) != null) {
                }
                break;
            case 5:
                switch (i2) {
                }
            case 6:
                switch (i2) {
                }
            case 7:
                if (CommonObjectsAndPreconditionsUtil.t(i2) != 0) {
                }
                break;
            case 8:
                switch (i2) {
                }
            case 9:
                switch (i2) {
                }
            case 10:
                if (CommonObjectsAndPreconditionsUtil.c(i2) != 0) {
                }
                break;
            case 11:
                if (PrimesLifecycleEventEnum.b(i2) != null) {
                }
                break;
            case 12:
                switch (i2) {
                }
            case 13:
                switch (i2) {
                }
            case 14:
                switch (i2) {
                }
            case 15:
                switch (i2) {
                }
            case 16:
                switch (i2) {
                }
            case 17:
                if (CommonObjectsAndPreconditionsUtil.b(i2) != 0) {
                }
                break;
            case 18:
                switch (i2) {
                }
            case 19:
                switch (i2) {
                }
            default:
                switch (i2) {
                }
        }
        return false;
    }
}
