package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class mm extends ViewGroup {
    protected final ml a;
    public final Context b;
    public ActionMenuView c;
    public mz d;
    public int e;
    protected bew f;
    private boolean g;
    private boolean h;

    mm(Context context) {
        this(context, null);
    }

    public static int a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    public static final int e(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, i - view.getMeasuredWidth());
    }

    public static final int f(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
            return -measuredWidth;
        }
        view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        return measuredWidth;
    }

    public void c(int i) {
        throw null;
    }

    public final bew g(int i, long j) {
        bew bewVar = this.f;
        if (bewVar != null) {
            bewVar.a();
        }
        if (i != 0) {
            bew O = hs.O(this);
            O.b(0.0f);
            O.c(j);
            ml mlVar = this.a;
            mlVar.d(O, i);
            O.d(mlVar);
            return O;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        bew O2 = hs.O(this);
        O2.b(1.0f);
        O2.c(j);
        ml mlVar2 = this.a;
        mlVar2.d(O2, 0);
        O2.d(mlVar2);
        return O2;
    }

    @Override // android.view.View
    protected final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, ki.a, R.attr.actionBarStyle, 0);
        c(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        mz mzVar = this.d;
        if (mzVar != null) {
            mzVar.h = hl.j(mzVar.b);
            lo loVar = mzVar.c;
            if (loVar != null) {
                loVar.l(true);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int i = 9;
        if (actionMasked == 9) {
            this.h = false;
            actionMasked = 9;
        }
        if (!this.h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9) {
                if (!onHoverEvent) {
                    this.h = true;
                }
                if (i != 10 || i == 3) {
                    this.h = false;
                }
                return true;
            }
        }
        i = actionMasked;
        if (i != 10) {
        }
        this.h = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.g = false;
            actionMasked = 0;
        }
        if (!this.g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0) {
                if (!onTouchEvent) {
                    this.g = true;
                }
                actionMasked = 0;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.g = false;
        }
        return true;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (i != getVisibility()) {
            bew bewVar = this.f;
            if (bewVar != null) {
                bewVar.a();
            }
            super.setVisibility(i);
        }
    }

    public mm(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public mm(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new ml(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
