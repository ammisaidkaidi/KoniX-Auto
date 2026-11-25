package defpackage;

import android.util.Log;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class blz implements Runnable {
    final /* synthetic */ bqv a;
    final /* synthetic */ bma b;

    public blz(bma bmaVar, bqv bqvVar) {
        this.b = bmaVar;
        this.a = bqvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bma bmaVar = this.b;
        bqv bqvVar = this.a;
        biz bizVar = bqvVar.b;
        if (bizVar.c()) {
            bno bnoVar = bqvVar.c;
            hr.d(bnoVar);
            biz bizVar2 = bnoVar.c;
            if (!bizVar2.c()) {
                String valueOf = String.valueOf(bizVar2);
                String.valueOf(valueOf).length();
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(valueOf)), new Exception());
                bmaVar.f.b(bizVar2);
                bmaVar.e.l();
                return;
            }
            blm blmVar = bmaVar.f;
            bng a = bnoVar.a();
            Set set = bmaVar.c;
            if (a == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                blmVar.b(new biz(4));
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
