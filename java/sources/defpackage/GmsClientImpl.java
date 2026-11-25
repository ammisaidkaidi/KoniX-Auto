package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsClientImpl extends GmsClientCallbackBase {
    public final IBinder g;
    final /* synthetic */ GmsClientBase h;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public GmsClientImpl(GmsClientBase bmnVar, int i, IBinder iBinder, Bundle bundle) {
        super(bmnVar, i, bundle);
        this.h = bmnVar;
        this.g = iBinder;
    }

    @Override // defpackage.GmsClientCallbackBase
    protected final void a(ConnectionResultCodes bizVar) {
        UnregisterListenerAdapter bmxVar = this.h.p;
        if (bmxVar != null) {
            bmxVar.a(bizVar);
        }
        System.currentTimeMillis();
    }

    @Override // defpackage.GmsClientCallbackBase
    protected final boolean c() {
        try {
            IBinder iBinder = this.g;
            ThreadAndNullChecksUtil.d(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.h.c().equals(interfaceDescriptor)) {
                String c = this.h.c();
                StringBuilder sb = new StringBuilder(c.length() + 34 + String.valueOf(interfaceDescriptor).length());
                StaggeredGridLayoutParams.append("service descriptor mismatch: ");
                StaggeredGridLayoutParams.append(PhenotypeFlagMessage);
                StaggeredGridLayoutParams.append(" vs. ");
                StaggeredGridLayoutParams.append(interfaceDescriptor);
                Log.w("GmsClient", StaggeredGridLayoutParams.toString());
                return false;
            }
            IInterface b = this.h.b(this.g);
            if (ProtoLiteMessageBase == null || !(this.h.y(2, 4, b) || this.h.y(3, 4, b))) {
                return false;
            }
            GmsClientBase bmnVar = this.h;
            bmnVar.k = null;
            ConnectionListenerAdapter bmwVar = bmnVar.o;
            if (bmwVar == null) {
                return true;
            }
            bmwVar.a.b();
            return true;
        } catch (RemoteException e) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
