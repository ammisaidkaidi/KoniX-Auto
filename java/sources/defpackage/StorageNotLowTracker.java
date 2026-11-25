package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StorageNotLowTracker extends BroadcastConstraintTracker {
    static {
        WorkLogger.b("StorageNotLowTracker");
    }

    public StorageNotLowTracker(Context context, WorkTaskExecutorHolder amhVar) {
        super(context, amhVar);
    }

    @Override // defpackage.BroadcastConstraintTracker
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r0.equals("android.intent.action.DEVICE_STORAGE_LOW") != false) goto L17;
     */
    @Override // defpackage.ConstraintTrackerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ Object b() {
        Intent registerReceiver = this.a.registerReceiver(null, a());
        char c = 1;
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            return true;
        }
        String action = registerReceiver.getAction();
        switch (action.hashCode()) {
            case -1181163412:
                break;
            case -730838620:
                if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (PhenotypeFlagMessage) {
            case 0:
                return true;
            case 1:
                return false;
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.BroadcastConstraintTracker
    public final void c(Intent intent) {
        char c;
        if (intent.getAction() == null) {
        }
        WorkLogger a = WorkLogger.a();
        String.format("Received %s", intent.getAction());
        a.d(new Throwable[0]);
        String action = intent.getAction();
        switch (action.hashCode()) {
            case -1181163412:
                if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -730838620:
                if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (PhenotypeFlagMessage) {
            case 0:
                g(true);
                break;
            case 1:
                g(false);
                break;
        }
    }
}
