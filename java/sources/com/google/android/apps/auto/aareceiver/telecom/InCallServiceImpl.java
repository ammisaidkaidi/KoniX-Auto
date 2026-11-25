package com.google.android.apps.auto.aareceiver.telecom;

import android.content.Intent;
import android.os.IBinder;
import android.telecom.Call;
import defpackage.AareceiverInCallService;
import defpackage.CallAvailabilityStateCallback;
import defpackage.CallAvailabilityCallback;
import defpackage.InCallServiceBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
public class InCallServiceImpl extends AareceiverInCallService {
    private final InCallServiceBinder b = new InCallServiceBinder(this);
    public CallAvailabilityCallback a = new CallAvailabilityStateCallback(1);

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
