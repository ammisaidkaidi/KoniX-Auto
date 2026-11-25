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
public final class kg extends ko implements lm {
    public final lo a;
    public kn b;
    final /* synthetic */ kh c;
    private final Context f;
    private WeakReference g;

    public kg(kh khVar, Context context, kn knVar) {
        this.c = khVar;
        this.f = context;
        this.b = knVar;
        lo loVar = new lo(context);
        loVar.D();
        this.a = loVar;
        loVar.b = this;
    }

    @Override // defpackage.lm
    public final boolean D(lo loVar, MenuItem menuItem) {
        kn knVar = this.b;
        if (knVar != null) {
            return knVar.b(this, menuItem);
        }
        return false;
    }

    @Override // defpackage.lm
    public final void I() {
        if (this.b == null) {
            return;
        }
        g();
        this.c.e.n();
    }

    @Override // defpackage.ko
    public final Menu a() {
        return this.a;
    }

    @Override // defpackage.ko
    public final MenuInflater b() {
        return new ku(this.f);
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
        return this.c.e.h;
    }

    @Override // defpackage.ko
    public final CharSequence e() {
        return this.c.e.g;
    }

    @Override // defpackage.ko
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

    @Override // defpackage.ko
    public final void h(View view) {
        this.c.e.j(view);
        this.g = new WeakReference(view);
    }

    @Override // defpackage.ko
    public final void i(int i) {
        j(this.c.a.getResources().getString(i));
    }

    @Override // defpackage.ko
    public final void j(CharSequence charSequence) {
        this.c.e.k(charSequence);
    }

    @Override // defpackage.ko
    public final void k(int i) {
        l(this.c.a.getResources().getString(i));
    }

    @Override // defpackage.ko
    public final void l(CharSequence charSequence) {
        this.c.e.l(charSequence);
    }

    @Override // defpackage.ko
    public final void m(boolean z) {
        this.e = z;
        this.c.e.m(z);
    }

    @Override // defpackage.ko
    public final boolean n() {
        return this.c.e.j;
    }

    @Override // defpackage.ko
    public final void f() {
        kh khVar = this.c;
        if (khVar.g != this) {
            return;
        }
        if (kh.k(khVar.l, false)) {
            this.b.a(this);
        } else {
            kh khVar2 = this.c;
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
        kh khVar3 = this.c;
        khVar3.b.l(khVar3.n);
        this.c.g = null;
    }
}
