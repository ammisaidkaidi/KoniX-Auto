package defpackage;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class op extends ToggleButton {
    private final nh a;
    private final om b;

    public op(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        sh.d(this, getContext());
        nh nhVar = new nh(this);
        this.a = nhVar;
        nhVar.b(attributeSet, R.attr.buttonStyleToggle);
        om omVar = new om(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.ToggleButton, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(i);
        }
    }
}
