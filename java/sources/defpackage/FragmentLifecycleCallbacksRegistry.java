package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentLifecycleCallbacksRegistry {
    private final CopyOnWriteArrayList a = new CopyOnWriteArrayList();
    private final FragmentManagerImpl b;

    public FragmentLifecycleCallbacksRegistry(FragmentManagerImpl crVar) {
        this.b = crVar;
    }

    final void a(AndroidxFragment brVar, Bundle bundle, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.a(brVar, bundle, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void b(AndroidxFragment brVar, boolean z) {
        FragmentManagerImpl crVar = this.b;
        Context context = crVar.j.c;
        AndroidxFragment brVar2 = crVar.l;
        if (brVar2 != null) {
            brVar2.A().g.b(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void c(AndroidxFragment brVar, Bundle bundle, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.c(brVar, bundle, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void d(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.d(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void e(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.e(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void f(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.f(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void g(AndroidxFragment brVar, boolean z) {
        FragmentManagerImpl crVar = this.b;
        Context context = crVar.j.c;
        AndroidxFragment brVar2 = crVar.l;
        if (brVar2 != null) {
            brVar2.A().g.g(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void h(AndroidxFragment brVar, Bundle bundle, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.h(brVar, bundle, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void i(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.i(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void j(AndroidxFragment brVar, Bundle bundle, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.j(brVar, bundle, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void k(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.k(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void l(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.l(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void m(AndroidxFragment brVar, View view, Bundle bundle, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.m(brVar, view, bundle, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }

    final void n(AndroidxFragment brVar, boolean z) {
        AndroidxFragment brVar2 = this.b.l;
        if (brVar2 != null) {
            brVar2.A().g.n(brVar, true);
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            FragmentStateEntry cfVar = (FragmentStateEntry) it.next();
            if (!z) {
                IcuMessagePattern rVar = cfVar.b;
                throw null;
            }
            boolean z2 = cfVar.a;
        }
    }
}
