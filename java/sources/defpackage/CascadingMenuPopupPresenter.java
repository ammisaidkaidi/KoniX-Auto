package defpackage;

import android.content.Context;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CascadingMenuPopupPresenter extends MenuPopupPresenterBase implements MenuPresenterCallbackInterface {
    public final MenuBuilderImpl a;
    public MenuItemClickDispatcherInterface b;
    final /* synthetic */ DecorToolbarActionBar c;
    private final Context f;
    private WeakReference g;

    public CascadingMenuPopupPresenter(DecorToolbarActionBar khVar, Context context, MenuItemClickDispatcherInterface knVar) {
        this.c = khVar;
        this.f = context;
        this.b = knVar;
        MenuBuilderImpl loVar = new MenuBuilderImpl(context);
        loVar.D();
        this.a = loVar;
        loVar.b = this;
    }

    @Override // defpackage.MenuPresenterCallbackInterface
    public final boolean D(MenuBuilderImpl loVar, MenuItem menuItem) {
        MenuItemClickDispatcherInterface knVar = this.b;
        if (knVar != null) {
            return knVar.b(this, menuItem);
        }
        return false;
    }

    @Override // defpackage.MenuPresenterCallbackInterface
    public final void I() {
        if (this.b == null) {
            return;
        }
        g();
        this.c.e.n();
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final Menu a() {
        return this.a;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final MenuInflater b() {
        return new SupportMenuInflater(this.f);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final View c() {
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final CharSequence d() {
        return this.c.e.h;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final CharSequence e() {
        return this.c.e.g;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void g() {
        if (this.c.g != this) {
            return;
        }
        this.a.s();
        try {
            this.b.d(this, this.a);
        } finally {
            this.a.r();
        }
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void h(View view) {
        this.c.e.j(view);
        this.g = new WeakReference(view);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void i(int i) {
        j(this.c.a.getResources().getString(NavInstructionTypeEnum));
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void j(CharSequence charSequence) {
        this.c.e.k(charSequence);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void k(int i) {
        l(this.c.a.getResources().getString(NavInstructionTypeEnum));
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void l(CharSequence charSequence) {
        this.c.e.l(charSequence);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void m(boolean z) {
        this.e = z;
        this.c.e.m(IcuMessageFormat);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final boolean n() {
        return this.c.e.j;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void f() {
        DecorToolbarActionBar khVar = this.c;
        if (khVar.g != this) {
            return;
        }
        if (DecorToolbarActionBar.k(khVar.l, false)) {
            this.b.a(this);
        } else {
            DecorToolbarActionBar khVar2 = this.c;
            khVar2.h = this;
            khVar2.i = this.b;
        }
        this.b = null;
        this.c.g(false);
        ActionBarContextView actionBarContextView = this.c.e;
        if (actionBarContextView.i == null) {
            actionBarContextView.i();
        }
        this.c.d.c().sendAccessibilityEvent(32);
        DecorToolbarActionBar khVar3 = this.c;
        khVar3.b.l(khVar3.n);
        this.c.g = null;
    }
}
