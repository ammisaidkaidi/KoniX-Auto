package com.google.android.apps.auto.aareceiver.telecom;

import android.content.Intent;
import android.os.IBinder;
import android.telecom.Call;
import defpackage.bcv;
import defpackage.bcw;
import defpackage.bcx;
import defpackage.bcy;

/* compiled from: PG */
/* loaded from: classes.dex */
public class InCallServiceImpl extends bcv {
    private final bcy b = new bcy(this);
    public bcx a = new bcw(1);

    @Override // android.telecom.InCallService, android.app.Service
    public final IBinder onBind(Intent intent) {
        return "inCallServiceLocalBindingAction".equals(intent.getAction()) ? this.b : super.onBind(intent);
    }

    @Override // android.telecom.InCallService
    public final void onCallAdded(Call call) {
        this.a.a(call);
    }

    @Override // android.telecom.InCallService
    public final void onCallRemoved(Call call) {
        this.a.b(call);
    }
}
