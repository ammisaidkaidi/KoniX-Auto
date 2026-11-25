package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ny extends SeekBar {
    private final nz a;

    public ny(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        sh.d(this, getContext());
        nz nzVar = new nz(this);
        this.a = nzVar;
        nzVar.a(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        nz nzVar = this.a;
        Drawable drawable = nzVar.c;
        if (drawable != null && drawable.isStateful() && drawable.setState(nzVar.b.getDrawableState())) {
            nzVar.b.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.a.c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        nz nzVar = this.a;
        if (nzVar.c != null) {
            int max = nzVar.b.getMax();
            if (max > 1) {
                int intrinsicWidth = nzVar.c.getIntrinsicWidth();
                int intrinsicHeight = nzVar.c.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth >> 1 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight >> 1 : 1;
                nzVar.c.setBounds(-i, -i2, i, i2);
                float width = ((nzVar.b.getWidth() - nzVar.b.getPaddingLeft()) - nzVar.b.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(nzVar.b.getPaddingLeft(), nzVar.b.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    nzVar.c.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
