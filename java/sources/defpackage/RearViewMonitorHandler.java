package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RearViewMonitorHandler extends Handler {
    final /* synthetic */ RearViewMonitor a;
    private int b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public RearViewMonitorHandler(RearViewMonitor aziVar, Looper looper) {
        super(looper);
        this.a = aziVar;
        this.b = 0;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.b == message.what) {
            return;
        }
        switch (message.what) {
            case 1:
                if (this.a.c.x()) {
                    this.a.c.h.d(DisplayType.DISPLAY_TYPE_MAIN, 2);
                    break;
                } else {
                    return;
                }
            case 2:
                ProjectionSession bblVar = this.a.c.h;
                if (bblVar != null) {
                    bblVar.d(DisplayType.DISPLAY_TYPE_MAIN, 1);
                    break;
                } else {
                    return;
                }
        }
        this.b = message.what;
    }
}
