package defpackage;

import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ayo implements Consumer {
    public final /* synthetic */ int a;
    private final /* synthetic */ int b;

    public /* synthetic */ ayo(int i, int i2) {
        this.b = i2;
        this.a = i;
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
                int i = this.a;
                int i2 = ays.b;
                ((SensorSource) obj).g(i);
                break;
            case 1:
                int i3 = this.a;
                csz cszVar = aym.a;
                ((SensorSource) obj).g(i3);
                break;
            default:
                int i4 = this.a;
                SensorSource sensorSource = (SensorSource) obj;
                int i5 = ayu.a;
                int i6 = sensorSource.d;
                if (i6 != Integer.MIN_VALUE) {
                    i4 = i6;
                }
                sensorSource.nativeReportDrivingStatusData(i4);
                break;
        }
    }
}
