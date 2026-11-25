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
public final class kp extends ko implements lm {
    public final lo a;
    private final Context b;
    private final ActionBarContextView c;
    private final kn f;
    private WeakReference g;
    private boolean h;

    public kp(Context context, ActionBarContextView actionBarContextView, kn knVar) {
        this.b = context;
        this.c = actionBarContextView;
        this.f = knVar;
        lo loVar = new lo(actionBarContextView.getContext());
        loVar.D();
        this.a = loVar;
        loVar.b = this;
    }

    @Override // defpackage.lm
    public final boolean D(lo loVar, MenuItem menuItem) {
        return this.f.b(this, menuItem);
    }

    @Override // defpackage.lm
    public final void I() {
        g();
        this.c.n();
    }

    @Override // defpackage.ko
    public final Menu a() {
        return this.a;
    }

    @Override // defpackage.ko
    public final MenuInflater b() {
        return new ku(this.c.getContext());
    }

    @Override // defpackage.ko
    public final View c() {
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // defpackage.ko
    public final CharSequence d() {
        return this.c.h;
    }

    @Override // defpackage.ko
    public final CharSequence e() {
        return this.c.g;
    }

    @Override // defpackage.ko
    public final void f() {
        if (this.h) {
            return;
        }
        this.h = true;
        this.c.sendAccessibilityEvent(32);
        this.f.a(this);
    }

    @Override // defpackage.ko
    public final void g() {
        this.f.d(this, this.a);
    }

    @Override // defpackage.ko
    public final void h(View view) {
        this.c.j(view);
        this.g = view != null ? new WeakReference(view) : null;
    }

    @Override // defpackage.ko
    public final void i(int i) {
        j(this.b.getString(i));
    }

    @Override // defpackage.ko
    public final void j(CharSequence charSequence) {
        this.c.k(charSequence);
    }

    @Override // defpackage.ko
    public final void k(int i) {
        l(this.b.getString(i));
    }

    @Override // defpackage.ko
    public final void l(CharSequence charSequence) {
        this.c.l(charSequence);
    }

    @Override // defpackage.ko
    public final void m(boolean z) {
        this.e = z;
        this.c.m(z);
    }

    @Override // defpackage.ko
    public final boolean n() {
        return this.c.j;
    }
}
