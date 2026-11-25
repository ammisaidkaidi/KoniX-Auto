package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bml extends bmf {
    public final IBinder g;
    final /* synthetic */ bmn h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bml(bmn bmnVar, int i, IBinder iBinder, Bundle bundle) {
        super(bmnVar, i, bundle);
        this.h = bmnVar;
        this.g = iBinder;
    }

    @Override // defpackage.bmf
    protected final void a(biz bizVar) {
        bmx bmxVar = this.h.p;
        if (bmxVar != null) {
            bmxVar.a(bizVar);
        }
        System.currentTimeMillis();
    }

    @Override // defpackage.bmf
    protected final boolean c() {
        try {
            IBinder iBinder = this.g;
            hr.d(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.h.c().equals(interfaceDescriptor)) {
                String c = this.h.c();
                StringBuilder sb = new StringBuilder(c.length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(c);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.w("GmsClient", sb.toString());
                return false;
            }
            IInterface b = this.h.b(this.g);
            if (b == null || !(this.h.y(2, 4, b) || this.h.y(3, 4, b))) {
                return false;
            }
            bmn bmnVar = this.h;
            bmnVar.k = null;
            bmw bmwVar = bmnVar.o;
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
