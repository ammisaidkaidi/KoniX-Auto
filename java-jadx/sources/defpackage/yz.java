package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class yz implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ zf b;

    public yz(String str, zf zfVar) {
        this.a = str;
        this.b = zfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Log.e("FragmentStrictMode", dpx.d("Policy violation with PENALTY_DEATH in ", this.a), this.b);
        throw this.b;
    }
}
