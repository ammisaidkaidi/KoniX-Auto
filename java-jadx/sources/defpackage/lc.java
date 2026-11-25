package defpackage;

import android.content.Context;
import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
class lc {
    final Context a;
    public vi b;

    public lc(Context context) {
        this.a = context;
    }

    final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof eu)) {
            return menuItem;
        }
        eu euVar = (eu) menuItem;
        if (this.b == null) {
            this.b = new vi();
        }
        MenuItem menuItem2 = (MenuItem) this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        lx lxVar = new lx(this.a, euVar);
        this.b.put(euVar, lxVar);
        return lxVar;
    }
}
