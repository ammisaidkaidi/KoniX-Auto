package defpackage;

import android.os.Binder;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgd extends Binder {
    public final dag a;
    public WeakReference b;

    public bgd(dag dagVar) {
        this.a = dagVar;
    }

    public final void a() {
        this.b.clear();
    }
}
