package defpackage;

import android.os.Looper;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dhf extends aaf {
    public final ast a;

    public dhf(ast astVar) {
        this.a = astVar;
    }

    @Override // defpackage.aaf
    public final void c() {
        dhh a = ((dhg) dpx.s(this.a, dhg.class)).a();
        if (dpx.a == null) {
            dpx.a = Looper.getMainLooper().getThread();
        }
        if (Thread.currentThread() != dpx.a) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            ((dha) it.next()).a();
        }
    }
}
