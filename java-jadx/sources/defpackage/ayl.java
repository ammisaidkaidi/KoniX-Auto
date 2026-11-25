package defpackage;

import android.car.hardware.CarPropertyValue;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ayl extends Handler {
    final /* synthetic */ aym a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ayl(aym aymVar, Looper looper) {
        super(looper);
        this.a = aymVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.a.b((CarPropertyValue) message.obj);
    }
}
