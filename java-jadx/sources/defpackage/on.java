package defpackage;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public class on extends TextView {
    private final nh a;
    private final om b;
    private boolean c;

    public on(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
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

    @Override // android.widget.TextView
    public final int getAutoSizeTextType() {
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.widget.TextView
    public final int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public final int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        om.e(this, onCreateInputConnection, editorInfo);
        hm.b(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
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

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? kj.b(context, i) : null, i2 != 0 ? kj.b(context, i2) : null, i3 != 0 ? kj.b(context, i3) : null, i4 != 0 ? kj.b(context, i4) : null);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? kj.b(context, i) : null, i2 != 0 ? kj.b(context, i2) : null, i3 != 0 ? kj.b(context, i3) : null, i4 != 0 ? kj.b(context, i4) : null);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i) {
        hh.c(this, i);
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        om omVar = this.b;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        if (this.c) {
            return;
        }
        Typeface typeface2 = null;
        if (typeface != null && i > 0) {
            typeface2 = ek.a(getContext(), typeface, i);
        }
        this.c = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.c = false;
        }
    }

    public on(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public on(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        sj.a(context);
        this.c = false;
        sh.d(this, getContext());
        nh nhVar = new nh(this);
        this.a = nhVar;
        nhVar.b(attributeSet, i);
        om omVar = new om(this);
        this.b = omVar;
        omVar.b(attributeSet, i);
        omVar.a();
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }
}
