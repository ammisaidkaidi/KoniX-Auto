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
public final class StandardMenuPopupPresenter extends MenuPopupPresenterBase implements MenuPresenterCallbackInterface {
    public final MenuBuilderImpl a;
    private final Context b;
    private final ActionBarContextView c;
    private final MenuItemClickDispatcherInterface f;
    private WeakReference g;
    private boolean h;

    public StandardMenuPopupPresenter(Context context, ActionBarContextView actionBarContextView, MenuItemClickDispatcherInterface knVar) {
        this.b = context;
        this.c = actionBarContextView;
        this.f = knVar;
        MenuBuilderImpl loVar = new MenuBuilderImpl(actionBarContextView.getContext());
        loVar.D();
        this.a = loVar;
        loVar.b = this;
    }

    @Override // defpackage.MenuPresenterCallbackInterface
    public final boolean D(MenuBuilderImpl loVar, MenuItem menuItem) {
        return this.f.b(this, menuItem);
    }

    @Override // defpackage.MenuPresenterCallbackInterface
    public final void I() {
        g();
        this.c.n();
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final Menu a() {
        return this.a;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final MenuInflater b() {
        return new SupportMenuInflater(this.c.getContext());
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
        return this.c.h;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final CharSequence e() {
        return this.c.g;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void f() {
        if (this.h) {
            return;
        }
        this.h = true;
        this.c.sendAccessibilityEvent(32);
        this.f.a(this);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void g() {
        this.f.d(this, this.a);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void h(View view) {
        this.c.j(view);
        this.g = view != null ? new WeakReference(view) : null;
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void i(int i) {
        j(this.b.getString(NavInstructionTypeEnum));
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void j(CharSequence charSequence) {
        this.c.k(charSequence);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void k(int i) {
        l(this.b.getString(NavInstructionTypeEnum));
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void l(CharSequence charSequence) {
        this.c.l(charSequence);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final void m(boolean z) {
        this.e = z;
        this.c.m(IcuMessageFormat);
    }

    @Override // defpackage.MenuPopupPresenterBase
    public final boolean n() {
        return this.c.j;
    }
}
