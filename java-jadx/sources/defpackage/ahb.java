package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahb {
    public final Handler a = Handler.createAsync(Looper.getMainLooper());

    public final void a(Runnable runnable) {
        this.a.removeCallbacks(runnable);
    }
}
