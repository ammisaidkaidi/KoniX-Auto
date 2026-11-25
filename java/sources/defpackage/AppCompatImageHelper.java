package defpackage;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatImageHelper {
    private final ImageView a;

    public AppCompatImageHelper(ImageView imageView) {
        this.a = imageView;
    }

    final void a() {
        if (this.a.getDrawable() != null) {
            Rect rect = pc.a;
        }
    }

    public final void b(AttributeSet attributeSet, int i) {
        int f;
        TintResourcesHelper q = TintResourcesHelper.q(this.a.getContext(), attributeSet, ki.f, i);
        ImageView imageView = this.a;
        ViewCompatAccessibilityStatics.L(imageView, imageView.getContext(), ki.f, attributeSet, q.b, i);
        try {
            Drawable drawable = this.a.getDrawable();
            if (drawable == null && (NavManeuverTypeEnum = q.f(1, -1)) != -1 && (drawable = SimpleHolderKj.b(this.a.getContext(), f)) != null) {
                this.a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                Rect rect = pc.a;
            }
            if (q.p(2)) {
                this.a.setImageTintList(q.g(2));
            }
            if (q.p(3)) {
                this.a.setImageTintMode(DrawableOpticalInsetsUtils.a(q.c(3, -1), null));
            }
        } finally {
            q.n();
        }
    }

    public final void c(int i) {
        if (NavInstructionTypeEnum != 0) {
            Drawable b = SimpleHolderKj.b(this.a.getContext(), i);
            if (ProtoLiteMessageBase != null) {
                Rect rect = pc.a;
            }
            this.a.setImageDrawable(ProtoLiteMessageBase);
        } else {
            this.a.setImageDrawable(null);
        }
        a();
    }

    final boolean d() {
        return !(this.a.getBackground() instanceof RippleDrawable);
    }
}
