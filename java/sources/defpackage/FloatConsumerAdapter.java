package defpackage;

import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FloatConsumerAdapter implements Consumer {
    public final /* synthetic */ float a;
    private final /* synthetic */ int b;

    public /* synthetic */ ayj(float f, int i) {
        this.b = i;
        this.a = f;
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
                float f = this.a;
                FloggerLoggerFactory cszVar = aym.a;
                ((SensorSource) obj).d(NavManeuverTypeEnum);
                break;
            case 1:
                float f2 = this.a;
                FloggerLoggerFactory cszVar2 = aym.a;
                ((SensorSource) obj).i(f2);
                break;
            case 2:
                float f3 = this.a;
                FloggerLoggerFactory cszVar3 = aym.a;
                ((SensorSource) obj).h(f3);
                break;
            case 3:
                float f4 = this.a;
                FloggerLoggerFactory cszVar4 = aym.a;
                ((SensorSource) obj).f(f4);
                break;
            default:
                float f5 = this.a;
                int i = ays.b;
                ((SensorSource) obj).i(f5);
                break;
        }
    }
}
