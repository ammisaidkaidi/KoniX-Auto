package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SignInFailureListener implements ConnectionProgressListener {
    public final GoogleApiClientInterface a;
    public final ApiKey b;
    final /* synthetic */ GoogleApiHandler e;
    public AccountAccessorProxy f = null;
    public Set c = null;
    public boolean d = false;

    public SignInFailureListener(GoogleApiHandler blnVar, GoogleApiClientInterface bjxVar, ApiKey bksVar) {
        this.e = blnVar;
        this.a = bjxVar;
        this.b = bksVar;
    }

    @Override // defpackage.ConnectionProgressListener
    public final void a(ConnectionResultCodes bizVar) {
        this.e.l.post(new GoogleApiManagerBrokerRunnable(this, bizVar));
    }

    public final void b(ConnectionResultCodes bizVar) {
        GoogleApiManagerClientQueue bljVar = (GoogleApiManagerClientQueue) this.e.k.get(this.b);
        if (bljVar != null) {
            ThreadAndNullChecksUtil.g(bljVar.j.l);
            GoogleApiClientInterface bjxVar = bljVar.b;
            String name = bjxVar.getClass().getName();
            String valueOf = String.valueOf(bizVar);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(valueOf).length());
            StaggeredGridLayoutParams.append("onSignInFailed for ");
            StaggeredGridLayoutParams.append(name);
            StaggeredGridLayoutParams.append(" with ");
            StaggeredGridLayoutParams.append(valueOf);
            bjxVar.e(StaggeredGridLayoutParams.toString());
            bljVar.i(bizVar);
        }
    }

    public final void c() {
        AccountAccessorProxy bngVar;
        if (!this.d || (bngVar = this.f) == null) {
            return;
        }
        this.a.t(bngVar, this.c);
    }
}
