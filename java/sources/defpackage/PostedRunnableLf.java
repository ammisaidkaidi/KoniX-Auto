package defpackage;

import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PostedRunnableLf implements Runnable {
    final /* synthetic */ SimpleHolderLh a;
    final /* synthetic */ MenuItem b;
    final /* synthetic */ MenuBuilderImpl c;
    final /* synthetic */ QgCallbackStub d;

    public PostedRunnableLf(QgCallbackStub lgVar, SimpleHolderLh lhVar, MenuItem menuItem, MenuBuilderImpl loVar) {
        this.d = lgVar;
        this.a = lhVar;
        this.b = menuItem;
        this.c = loVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SimpleHolderLh lhVar = this.a;
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
