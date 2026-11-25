package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class nh {
    private final View a;
    private sk d;
    private sk e;
    private int c = -1;
    private final nn b = nn.d();

    public nh(View view) {
        this.a = view;
    }

    final void a() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.e == null) {
                    this.e = new sk();
                }
                sk skVar = this.e;
                skVar.a = null;
                skVar.d = false;
                skVar.b = null;
                skVar.c = false;
                ColorStateList g = hs.g(this.a);
                if (g != null) {
                    skVar.d = true;
                    skVar.a = g;
                }
                PorterDuff.Mode h = hs.h(this.a);
                if (h != null) {
                    skVar.c = true;
                    skVar.b = h;
                }
                if (skVar.d || skVar.c) {
                    rv.h(background, skVar, this.a.getDrawableState());
                    return;
                }
            }
            sk skVar2 = this.d;
            if (skVar2 != null) {
                rv.h(background, skVar2, this.a.getDrawableState());
            }
        }
    }

    final void b(AttributeSet attributeSet, int i) {
        sm q = sm.q(this.a.getContext(), attributeSet, ki.y, i);
        View view = this.a;
        hs.L(view, view.getContext(), ki.y, attributeSet, q.b, i);
        try {
            if (q.p(0)) {
                this.c = q.f(0, -1);
                ColorStateList a = this.b.a(this.a.getContext(), this.c);
                if (a != null) {
                    d(a);
                }
            }
            if (q.p(1)) {
                hs.w(this.a, q.g(1));
            }
            if (q.p(2)) {
                hs.x(this.a, pc.a(q.c(2, -1), null));
            }
        } finally {
            q.n();
        }
    }

    final void c(int i) {
        this.c = i;
        nn nnVar = this.b;
        d(nnVar != null ? nnVar.a(this.a.getContext(), i) : null);
        a();
    }

    final void d(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new sk();
            }
            sk skVar = this.d;
            skVar.a = colorStateList;
            skVar.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    final void e() {
        this.c = -1;
        d(null);
        a();
    }
}
