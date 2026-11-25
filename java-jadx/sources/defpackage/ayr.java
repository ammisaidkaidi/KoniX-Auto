package defpackage;

import android.car.hardware.CarSensorEvent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ayr extends Handler {
    final /* synthetic */ ays a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ayr(ays aysVar, Looper looper) {
        super(looper);
        this.a = aysVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.a.b((CarSensorEvent) message.obj);
    }
}
