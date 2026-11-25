package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentStrictModeViolationRunnable implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ FragmentRuntimeException b;

    public FragmentStrictModeViolationRunnable(String str, FragmentRuntimeException zfVar) {
        this.a = str;
        this.b = zfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Log.e("FragmentStrictMode", CommonObjectsAndPreconditionsUtil.d("Policy violation with PENALTY_DEATH in ", this.a), this.b);
        throw this.b;
    }
}
