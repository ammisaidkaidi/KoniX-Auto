package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class GmsClientCallbackBase extends GmsClientHandlerBase {
    public final int a;
    public final Bundle b;
    final /* synthetic */ GmsClientBase c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    protected GmsClientCallbackBase(GmsClientBase bmnVar, int i, Bundle bundle) {
        super(bmnVar, true);
        this.c = bmnVar;
        this.a = i;
        this.b = bundle;
    }

    protected abstract void a(ConnectionResultCodes bizVar);

    @Override // defpackage.GmsClientHandlerBase
    protected final void b() {
    }

    protected abstract boolean c();

    @Override // defpackage.GmsClientHandlerBase
    protected final /* bridge */ /* synthetic */ void d() {
        if (this.a != 0) {
            this.c.F(1, null);
            Bundle bundle = this.b;
            a(new ConnectionResultCodes(this.a, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else {
            if (c()) {
                return;
            }
            this.c.F(1, null);
            a(new ConnectionResultCodes(8, null));
        }
    }
}
