package defpackage;

import android.content.Context;
import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
class MenuWrapperBase {
    final Context a;
    public SimpleArrayMap b;

    public MenuWrapperBase(Context context) {
        this.a = context;
    }

    final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof MenuItemWrapperInterface)) {
            return menuItem;
        }
        MenuItemWrapperInterface euVar = (MenuItemWrapperInterface) menuItem;
        if (this.b == null) {
            this.b = new SimpleArrayMap();
        }
        MenuItem menuItem2 = (MenuItem) this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperBase lxVar = new MenuItemWrapperBase(this.a, euVar);
        this.b.put(euVar, lxVar);
        return lxVar;
    }
}
