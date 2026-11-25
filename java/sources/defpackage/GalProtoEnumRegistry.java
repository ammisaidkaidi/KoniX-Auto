package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GalProtoEnumRegistry implements EnumVerifier {
    private final /* synthetic */ int v;
    public static final EnumVerifier u = new GalProtoEnumRegistry(20);
    public static final EnumVerifier t = new GalProtoEnumRegistry(19);
    public static final EnumVerifier s = new GalProtoEnumRegistry(18);
    public static final EnumVerifier r = new GalProtoEnumRegistry(17);
    public static final EnumVerifier q = new GalProtoEnumRegistry(16);
    public static final EnumVerifier p = new GalProtoEnumRegistry(15);
    public static final EnumVerifier o = new GalProtoEnumRegistry(14);
    public static final EnumVerifier n = new GalProtoEnumRegistry(13);
    static final EnumVerifier m = new GalProtoEnumRegistry(12);
    static final EnumVerifier l = new GalProtoEnumRegistry(11);
    static final EnumVerifier k = new GalProtoEnumRegistry(10);
    static final EnumVerifier j = new GalProtoEnumRegistry(9);
    static final EnumVerifier i = new GalProtoEnumRegistry(8);
    static final EnumVerifier h = new GalProtoEnumRegistry(7);
    static final EnumVerifier g = new GalProtoEnumRegistry(6);
    static final EnumVerifier f = new GalProtoEnumRegistry(5);
    static final EnumVerifier e = new GalProtoEnumRegistry(4);
    static final EnumVerifier d = new GalProtoEnumRegistry(3);
    static final EnumVerifier c = new GalProtoEnumRegistry(2);
    public static final EnumVerifier b = new GalProtoEnumRegistry(1);
    static final EnumVerifier a = new GalProtoEnumRegistry(0);

    private GalProtoEnumRegistry(int i2) {
        this.v = i2;
    }

    @Override // defpackage.EnumVerifier
    public final boolean a(int i2) {
        switch (this.v) {
            case 0:
                return FrameDurationCalculator.c(i2) != 0;
            case 1:
                return GalAudioStreamTypes.a(i2) != 0;
            case 2:
                return FrameDurationCalculator.b(i2) != 0;
            case 3:
                return NetworkMetricServiceBase.f(i2) != 0;
            case 4:
                return NavigationManeuverType.b(i2) != null;
            case 5:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                        return true;
                    default:
                        return false;
                }
            case 6:
                return VideoResolution.b(i2) != null;
            case 7:
                return NetworkMetricServiceBase.e(i2) != 0;
            case 8:
                switch (i2) {
                    case 0:
                    case 1:
                        return true;
                    default:
                        return false;
                }
            case 9:
                return StartupTraceTracker.g(i2) != 0;
            case 10:
                return ProjectionStartReason.b(i2) != null;
            case 11:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        return true;
                    default:
                        return false;
                }
            case 12:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 8:
                    case 12:
                    case 20:
                    case 24:
                    case 28:
                        return true;
                    default:
                        return false;
                }
            case 13:
                return ViewCompatApi19Statics.i(i2) != 0;
            case 14:
                return ViewCompatApi19Statics.h(i2) != 0;
            case 15:
                return AlertDialogAndInsetsApiHelper.j(i2) != 0;
            case 16:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    case 64:
                    case 65:
                    case 66:
                    case 128:
                    case 256:
                    case 1024:
                    case 1025:
                    case 2048:
                    case 3000:
                    case 3100:
                    case 3200:
                    case 3300:
                    case 3400:
                    case 3500:
                    case 3600:
                        return true;
                    default:
                        return false;
                }
            case 17:
                return AlertDialogAndInsetsApiHelper.i(i2) != 0;
            case 18:
                return AlertDialogAndInsetsApiHelper.h(i2) != 0;
            case 19:
                return AlertDialogAndInsetsApiHelper.g(i2) != 0;
            default:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        return true;
                    default:
                        return false;
                }
        }
    }
}
