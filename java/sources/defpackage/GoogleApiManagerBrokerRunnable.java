package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleApiManagerBrokerRunnable implements Runnable {
    final /* synthetic */ ConnectionResultCodes a;
    final /* synthetic */ SignInFailureListener b;

    public GoogleApiManagerBrokerRunnable(SignInFailureListener blmVar, ConnectionResultCodes bizVar) {
        this.b = blmVar;
        this.a = bizVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SignInFailureListener blmVar = this.b;
        GoogleApiManagerClientQueue bljVar = (GoogleApiManagerClientQueue) blmVar.e.k.get(blmVar.b);
        if (bljVar == null) {
            return;
        }
        if (!this.a.c()) {
            bljVar.i(this.a);
            return;
        }
        SignInFailureListener blmVar2 = this.b;
        blmVar2.d = true;
        if (blmVar2.a.o()) {
            this.b.c();
            return;
        }
        try {
            GoogleApiClientInterface bjxVar = this.b.a;
            bjxVar.t(null, bjxVar.j());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            this.b.a.e("Failed to get service from broker.");
            bljVar.i(new ConnectionResultCodes(10));
        }
    }
}
