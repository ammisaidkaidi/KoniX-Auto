package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MenuPresenterBaseImpl implements MenuPresenterInterface {
    protected final Context a;
    public Context b;
    public MenuBuilderImpl c;
    public final LayoutInflater d;
    public MenuPopupCallbackInterface e;
    public SimpleInterfaceMe f;

    public MenuPresenterBaseImpl(Context context) {
        this.a = context;
        this.d = LayoutInflater.from(context);
    }

    public View a(MenuItemImpl lrVar, View view, ViewGroup viewGroup) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public void b(Context context, MenuBuilderImpl loVar) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public void c(MenuBuilderImpl loVar, boolean z) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void d(MenuPopupCallbackInterface mbVar) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public boolean e() {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public boolean f(SubMenuBuilder mkVar) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean g(MenuItemImpl lrVar) {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean h(MenuItemImpl lrVar) {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public void i() {
        throw null;
    }
}
