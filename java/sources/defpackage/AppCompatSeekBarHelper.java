package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {
    public final SeekBar b;
    public Drawable c;
    private ColorStateList d;
    private PorterDuff.Mode e;
    private boolean f;
    private boolean g;

    public AppCompatSeekBarHelper(SeekBar seekBar) {
        super(seekBar);
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = false;
        this.b = seekBar;
    }

    private final void b() {
        Drawable drawable = this.c;
        if (drawable != null) {
            if (this.f || this.g) {
                Drawable mutate = drawable.mutate();
                this.c = mutate;
                if (this.f) {
                    mutate.setTintList(this.d);
                }
                if (this.g) {
                    this.c.setTintMode(this.e);
                }
                if (this.c.isStateful()) {
                    this.c.setState(this.b.getDrawableState());
                }
            }
        }
    }

    @Override // defpackage.AppCompatProgressBarHelper
    public final void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, R.attr.seekBarStyle);
        TintResourcesHelper q = TintResourcesHelper.q(this.b.getContext(), attributeSet, ki.g, R.attr.seekBarStyle);
        SeekBar seekBar = this.b;
        ViewCompatAccessibilityStatics.L(seekBar, seekBar.getContext(), ki.g, attributeSet, q.b, R.attr.seekBarStyle);
        Drawable i2 = q.i(0);
        if (i2 != null) {
            this.b.setThumb(i2);
        }
        Drawable h = q.h(1);
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.c = h;
        if (ProtoMessageSingleEnumFieldH != null) {
            h.setCallback(this.b);
            h.setLayoutDirection(ViewCompatAccessibilityStatics.c(this.b));
            if (h.isStateful()) {
                h.setState(this.b.getDrawableState());
            }
            b();
        }
        this.b.invalidate();
        if (q.p(3)) {
            this.e = DrawableOpticalInsetsUtils.a(q.c(3, -1), this.e);
            this.g = true;
        }
        if (q.p(2)) {
            this.d = q.g(2);
            this.f = true;
        }
        q.n();
        b();
    }
}
