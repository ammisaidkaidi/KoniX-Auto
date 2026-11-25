package defpackage;

import android.util.Log;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SignInCoordinatorCallback implements Runnable {
    final /* synthetic */ SignInResponseParcel a;
    final /* synthetic */ GoogleSignInClientImpl b;

    public SignInCoordinatorCallback(GoogleSignInClientImpl bmaVar, SignInResponseParcel bqvVar) {
        this.b = bmaVar;
        this.a = bqvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleSignInClientImpl bmaVar = this.b;
        SignInResponseParcel bqvVar = this.a;
        ConnectionResultCodes bizVar = bqvVar.b;
        if (bizVar.c()) {
            AccountAccessorResultParcel bnoVar = bqvVar.c;
            ThreadAndNullChecksUtil.d(bnoVar);
            ConnectionResultCodes bizVar2 = bnoVar.c;
            if (!bizVar2.c()) {
                String valueOf = String.valueOf(bizVar2);
                String.valueOf(valueOf).length();
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(valueOf)), new Exception());
                bmaVar.f.b(bizVar2);
                bmaVar.e.l();
                return;
            }
            SignInFailureListener blmVar = bmaVar.f;
            AccountAccessorProxy a = bnoVar.a();
            Set set = bmaVar.c;
            if (SingleStringProtoMessage == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                blmVar.b(new ConnectionResultCodes(4));
            } else {
                blmVar.f = a;
                blmVar.c = set;
                blmVar.c();
            }
        } else {
            bmaVar.f.b(bizVar);
        }
        bmaVar.e.l();
    }
}
