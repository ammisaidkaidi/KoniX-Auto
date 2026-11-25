package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class lf implements Runnable {
    final /* synthetic */ lh a;
    final /* synthetic */ MenuItem b;
    final /* synthetic */ lo c;
    final /* synthetic */ lg d;

    public lf(lg lgVar, lh lhVar, MenuItem menuItem, lo loVar) {
        this.d = lgVar;
        this.a = lhVar;
        this.b = menuItem;
        this.c = loVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lh lhVar = this.a;
        if (lhVar != null) {
            this.d.a.f = true;
            lhVar.b.i(false);
            this.d.a.f = false;
        }
        if (this.b.isEnabled() && this.b.hasSubMenu()) {
            this.c.z(this.b, 4);
        }
    }
}
