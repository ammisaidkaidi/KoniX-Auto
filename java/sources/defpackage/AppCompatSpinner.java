package defpackage;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatSpinner extends Spinner {
    private static final int[] e = {R.attr.spinnerMode};
    public final Context a;
    public SpinnerPopupInterface b;
    int c;
    final Rect d;
    private final AppCompatBackgroundHelper f;
    private ForwardingListener g;
    private SpinnerAdapter h;
    private final boolean i;

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.google.android.embedded.projection.R.attr.spinnerStyle);
        TypedArray typedArray;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        this.d = new Rect();
        ThemeUtilsCompat.d(this, getContext());
        TintResourcesHelper q = TintResourcesHelper.q(context, attributeSet, ki.t, com.google.android.embedded.projection.R.attr.spinnerStyle);
        this.f = new AppCompatBackgroundHelper(this);
        int f = q.f(4, 0);
        if (NavManeuverTypeEnum != 0) {
            this.a = new OverrideConfigurationContextWrapper(context, f);
        } else {
            this.a = context;
        }
        TypedArray typedArray2 = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, e, com.google.android.embedded.projection.R.attr.spinnerStyle, 0);
            try {
                int i = typedArray.hasValue(0) ? typedArray.getInt(0, 0) : -1;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                switch (NavInstructionTypeEnum) {
                    case 0:
                        SpinnerDialogPopup ocVar = new SpinnerDialogPopup(this);
                        this.b = ocVar;
                        ocVar.i(q.m(2));
                        break;
                    case 1:
                        SpinnerListPopupWindow ohVar = new SpinnerListPopupWindow(this, this.a, attributeSet);
                        TintResourcesHelper q2 = TintResourcesHelper.q(this.a, attributeSet, ki.t, com.google.android.embedded.projection.R.attr.spinnerStyle);
                        this.c = q2.e(3, -2);
                        ohVar.f(q2.h(1));
                        ohVar.a = q.m(2);
                        q2.n();
                        this.b = ohVar;
                        this.g = new SpinnerPopupForwardingListener(this, this, ohVar);
                        break;
                }
            } catch (Exception e2) {
                if (typedArray != null) {
                    typedArray.recycle();
                }
                textArray = q.b.getTextArray(0);
                if (textArray != null) {
                }
                q.n();
                this.i = true;
                spinnerAdapter = this.h;
                if (spinnerAdapter != null) {
                }
                this.f.b(attributeSet, com.google.android.embedded.projection.R.attr.spinnerStyle);
            } catch (Throwable th) {
                th = th;
                typedArray2 = typedArray;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception e3) {
            typedArray = null;
        } catch (Throwable th2) {
            th = th2;
        }
        textArray = q.b.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter.setDropDownViewResource(com.google.android.embedded.projection.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        q.n();
        this.i = true;
        spinnerAdapter = this.h;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.h = null;
        }
        this.f.b(attributeSet, com.google.android.embedded.projection.R.attr.spinnerStyle);
    }

    final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view = null;
        int i2 = 0;
        while (max2 < min) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            int i3 = itemViewType != i ? itemViewType : i;
            if (itemViewType != i) {
                view = null;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            max2++;
            i = i3;
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.d);
        return i2 + this.d.left + this.d.right;
    }

    final void b() {
        this.b.l(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper nhVar = this.f;
        if (nhVar != null) {
            nhVar.a();
        }
    }

    @Override // android.widget.Spinner
    public final int getDropDownHorizontalOffset() {
        SpinnerPopupInterface ojVar = this.b;
        return ojVar != null ? ojVar.a() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownVerticalOffset() {
        SpinnerPopupInterface ojVar = this.b;
        return ojVar != null ? ojVar.b() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownWidth() {
        return this.b != null ? this.c : super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public final Drawable getPopupBackground() {
        SpinnerPopupInterface ojVar = this.b;
        return ojVar != null ? ojVar.c() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public final Context getPopupContext() {
        return this.a;
    }

    @Override // android.widget.Spinner
    public final CharSequence getPrompt() {
        SpinnerPopupInterface ojVar = this.b;
        return ojVar != null ? ojVar.d() : super.getPrompt();
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar == null || !ojVar.u()) {
            return;
        }
        this.b.k();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b == null || View.MeasureSpec.getMode(NavInstructionTypeEnum) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(NavInstructionTypeEnum)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SpinnerSavedState oiVar = (SpinnerSavedState) parcelable;
        super.onRestoreInstanceState(oiVar.getSuperState());
        if (!oiVar.a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new SpinnerGlobalLayoutListener(this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        SpinnerSavedState oiVar = new SpinnerSavedState(super.onSaveInstanceState());
        SpinnerPopupInterface ojVar = this.b;
        boolean z = false;
        if (ojVar != null && ojVar.u()) {
            z = true;
        }
        oiVar.a = z;
        return oiVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener pmVar = this.g;
        if (pmVar == null || !pmVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar == null) {
            return super.performClick();
        }
        if (ojVar.u()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper nhVar = this.f;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(NavInstructionTypeEnum);
        AppCompatBackgroundHelper nhVar = this.f;
        if (nhVar != null) {
            nhVar.c(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownHorizontalOffset(int i) {
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar == null) {
            super.setDropDownHorizontalOffset(NavInstructionTypeEnum);
        } else {
            ojVar.h(NavInstructionTypeEnum);
            this.b.g(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownVerticalOffset(int i) {
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar != null) {
            ojVar.j(NavInstructionTypeEnum);
        } else {
            super.setDropDownVerticalOffset(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownWidth(int i) {
        if (this.b != null) {
            this.c = i;
        } else {
            super.setDropDownWidth(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundDrawable(Drawable drawable) {
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar != null) {
            ojVar.f(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(SimpleHolderKj.b(this.a, i));
    }

    @Override // android.widget.Spinner
    public final void setPrompt(CharSequence charSequence) {
        SpinnerPopupInterface ojVar = this.b;
        if (ojVar != null) {
            ojVar.i(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.i) {
            this.h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.b != null) {
            Context context = this.a;
            if (context == null) {
                context = getContext();
            }
            this.b.e(new SpinnerDropDownAdapter(spinnerAdapter, context.getTheme()));
        }
    }
}
