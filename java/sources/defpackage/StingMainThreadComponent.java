package defpackage;

import android.os.Looper;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StingMainThreadComponent extends ViewModelBase {
    public final DaggerMultiProvider a;

    public StingMainThreadComponent(DaggerMultiProvider astVar) {
        this.a = astVar;
    }

    @Override // defpackage.ViewModelBase
    public final void c() {
        StingEmptyComponentHolder a = ((StingServiceScopeInterface) CommonObjectsAndPreconditionsUtil.s(this.a, StingServiceScopeInterface.class)).a();
        if (dpx.a == null) {
            dpx.a = Looper.getMainLooper().getThread();
        }
        if (Thread.currentThread() != dpx.a) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            ((StingActivityScopeInterface) it.next()).a();
        }
    }
}
