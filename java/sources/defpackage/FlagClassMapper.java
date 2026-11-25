package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagClassMapper implements FlagValueFunction {
    private final /* synthetic */ int r;
    public static final /* synthetic */ FlagClassMapper q = new FlagClassMapper(16);
    public static final /* synthetic */ FlagClassMapper p = new FlagClassMapper(15);
    public static final /* synthetic */ FlagClassMapper o = new FlagClassMapper(14);
    public static final /* synthetic */ FlagClassMapper n = new FlagClassMapper(13);
    public static final /* synthetic */ FlagClassMapper m = new FlagClassMapper(12);
    public static final /* synthetic */ FlagClassMapper l = new FlagClassMapper(11);
    public static final /* synthetic */ FlagClassMapper k = new FlagClassMapper(10);
    public static final /* synthetic */ FlagClassMapper j = new FlagClassMapper(9);
    public static final /* synthetic */ FlagClassMapper i = new FlagClassMapper(8);
    public static final /* synthetic */ FlagClassMapper h = new FlagClassMapper(7);
    public static final /* synthetic */ FlagClassMapper g = new FlagClassMapper(6);
    public static final /* synthetic */ FlagClassMapper f = new FlagClassMapper(5);
    public static final /* synthetic */ FlagClassMapper e = new FlagClassMapper(4);
    public static final /* synthetic */ FlagClassMapper d = new FlagClassMapper(3);
    public static final /* synthetic */ FlagClassMapper c = new FlagClassMapper(2);
    public static final /* synthetic */ FlagClassMapper b = new FlagClassMapper(1);
    public static final /* synthetic */ FlagClassMapper a = new FlagClassMapper(0);

    private /* synthetic */ cgk(int i2) {
        this.r = i2;
    }

    @Override // defpackage.FlagValueFunction
    public final Object a(Object obj) {
        switch (this.r) {
            case 0:
                return Boolean.valueOf(Boolean.parseBoolean((String) obj));
            case 1:
                return (String) obj;
            case 2:
                return Long.valueOf(Long.parseLong((String) obj));
            case 3:
                return (ProtoMsgSingleRepeatedField) GeneratedMessageLite.p(dgp.b, (byte[]) obj);
            case 4:
                return (ProtoBytesWrapperMessage) GeneratedMessageLite.p(doh.b, (byte[]) obj);
            case 5:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 6:
                return (PrimesProtoMessageA) GeneratedMessageLite.p(bxe.a, (byte[]) obj);
            case 7:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 8:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 9:
                return (PrimesProtoMessageC) GeneratedMessageLite.p(byn.d, (byte[]) obj);
            case 10:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 11:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 12:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 13:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 14:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            case 15:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
            default:
                return (PrimesMetricConfigProto) GeneratedMessageLite.p(dpy.d, (byte[]) obj);
        }
    }
}
