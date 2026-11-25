package defpackage;

import com.google.android.apps.auto.aareceiver.transport.usb.NewDeviceActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdz implements tq {
    final /* synthetic */ bea a;

    public bdz(bea beaVar) {
        this.a = beaVar;
    }

    @Override // defpackage.tq
    public final void a() {
        bea beaVar = this.a;
        if (beaVar.a) {
            return;
        }
        beaVar.a = true;
        Object aT = beaVar.aT();
        NewDeviceActivity newDeviceActivity = (NewDeviceActivity) beaVar;
        ass assVar = (ass) aT;
        newDeviceActivity.b = (bah) assVar.a.p.a();
        newDeviceActivity.c = (bby) assVar.a.m.a();
        newDeviceActivity.d = (awh) assVar.a.E.a();
        newDeviceActivity.e = (azy) assVar.a.z.a();
        newDeviceActivity.l = assVar.a.d();
        newDeviceActivity.m = (bde) assVar.a.x.a();
        newDeviceActivity.n = (bef) assVar.a.L.a();
    }
}
