package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum bdf implements ddm {
    UNKNOWN_LATENCY_EVENT(0),
    AP_STARTUP(1),
    RFCOMM_STARTUP(2),
    BT_ADAPTER_STARTUP(3),
    SESSION_STARTUP(10),
    AHU_START_UNTIL_HANDLER_READY(50),
    AHU_START_UNTIL_RENDERER_READY(51),
    AHU_START_UNTIL_FIRST_VIDEO_FRAME(52);

    private final int i;

    bdf(int i) {
        this.i = i;
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.i);
    }
}
