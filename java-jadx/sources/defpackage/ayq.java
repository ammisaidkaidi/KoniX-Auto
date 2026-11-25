package defpackage;

import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ayq implements Consumer {
    public final /* synthetic */ Integer a;
    private final /* synthetic */ int b;

    public /* synthetic */ ayq(Integer num, int i) {
        this.b = i;
        this.a = num;
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
                Integer num = this.a;
                int i = ays.b;
                ((SensorSource) obj).nativeReportGearData(num.intValue());
                break;
            default:
                Integer num2 = this.a;
                csz cszVar = aym.a;
                ((SensorSource) obj).nativeReportGearData(num2.intValue());
                break;
        }
    }
}
