package defpackage;

import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class azd implements Consumer {
    public final /* synthetic */ boolean a;
    private final /* synthetic */ int b;

    public /* synthetic */ azd(boolean z, int i) {
        this.b = i;
        this.a = z;
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.b) {
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                ((SensorSource) obj).nativeReportNightModeData(this.a);
                break;
            default:
                boolean z = this.a;
                csz cszVar = aym.a;
                ((SensorSource) obj).nativeReportParkingBrakeData(z);
                break;
        }
    }
}
