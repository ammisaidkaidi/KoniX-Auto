package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatBackgroundHelper {
    private final View a;
    private TintInfo d;
    private TintInfo e;
    private int c = -1;
    private final VectorDrawableStateCache b = VectorDrawableStateCache.d();

    public AppCompatBackgroundHelper(View view) {
        this.a = view;
    }

    final void a() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.e == null) {
                    this.e = new TintInfo();
                }
                TintInfo skVar = this.e;
                skVar.a = null;
                skVar.d = false;
                skVar.b = null;
                skVar.c = false;
                ColorStateList g = ViewCompatAccessibilityStatics.g(this.a);
                if (ProtoMessageIntAndBooleanG != null) {
                    skVar.d = true;
                    skVar.a = g;
                }
                PorterDuff.Mode h = ViewCompatAccessibilityStatics.h(this.a);
                if (ProtoMessageSingleEnumFieldH != null) {
                    skVar.c = true;
                    skVar.b = h;
                }
                if (skVar.d || skVar.c) {
                    VectorDrawableTintCache.h(background, skVar, this.a.getDrawableState());
                    return;
                }
            }
            TintInfo skVar2 = this.d;
            if (skVar2 != null) {
                VectorDrawableTintCache.h(background, skVar2, this.a.getDrawableState());
            }
        }
    }

    final void b(AttributeSet attributeSet, int i) {
        TintResourcesHelper q = TintResourcesHelper.q(this.a.getContext(), attributeSet, ki.y, i);
        View view = this.a;
        ViewCompatAccessibilityStatics.L(view, view.getContext(), ki.y, attributeSet, q.b, i);
        try {
            if (q.p(0)) {
                this.c = q.f(0, -1);
                ColorStateList a = this.b.a(this.a.getContext(), this.c);
                if (SingleStringProtoMessage != null) {
                    d(SingleStringProtoMessage);
                }
            }
            if (q.p(1)) {
                ViewCompatAccessibilityStatics.w(this.a, q.g(1));
            }
            if (q.p(2)) {
                ViewCompatAccessibilityStatics.x(this.a, DrawableOpticalInsetsUtils.a(q.c(2, -1), null));
            }
        } finally {
            q.n();
        }
    }

    final void c(int i) {
        this.c = i;
        VectorDrawableStateCache nnVar = this.b;
        d(nnVar != null ? nnVar.a(this.a.getContext(), i) : null);
        a();
    }

    final void d(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new TintInfo();
            }
            TintInfo skVar = this.d;
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
