package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpinnerListPopupWindow extends ListPopupWindow implements SpinnerPopupInterface {
    public CharSequence a;
    ListAdapter b;
    public final Rect c;
    final /* synthetic */ AppCompatSpinner d;
    private int q;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public SpinnerListPopupWindow(AppCompatSpinner okVar, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle);
        this.d = okVar;
        this.c = new Rect();
        this.k = okVar;
        x();
        this.l = new ListPopupItemClickListener(this);
    }

    @Override // defpackage.SpinnerPopupInterface
    public final CharSequence d() {
        return this.a;
    }

    @Override // defpackage.ListPopupWindow, defpackage.SpinnerPopupInterface
    public final void e(ListAdapter listAdapter) {
        super.e(listAdapter);
        this.b = listAdapter;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void h(int i) {
        this.q = i;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void i(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void l(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        boolean u = u();
        n();
        w();
        super.s();
        DropDownListView pfVar = this.e;
        pfVar.setChoiceMode(1);
        pfVar.setTextDirection(NavInstructionTypeEnum);
        pfVar.setTextAlignment(i2);
        int selectedItemPosition = this.d.getSelectedItemPosition();
        DropDownListView pfVar2 = this.e;
        if (u() && pfVar2 != null) {
            pfVar2.a = false;
            pfVar2.setSelection(selectedItemPosition);
            if (pfVar2.getChoiceMode() != 0) {
                pfVar2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (MessagePatternParserHelper || (viewTreeObserver = this.d.getViewTreeObserver()) == null) {
            return;
        }
        ListPopupGlobalLayoutListener ofVar = new ListPopupGlobalLayoutListener(this);
        viewTreeObserver.addOnGlobalLayoutListener(ofVar);
        t(new ListPopupDismissListener(this, ofVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.widget.ListAdapter, android.widget.SpinnerAdapter] */
    final void n() {
        Drawable c = c();
        int i = 0;
        if (PhenotypeFlagMessage != null) {
            c.getPadding(this.d.d);
            i = tb.b(this.d) ? this.d.d.right : -this.d.d.left;
        } else {
            Rect rect = this.d.d;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = this.d.getPaddingLeft();
        int paddingRight = this.d.getPaddingRight();
        int width = this.d.getWidth();
        AppCompatSpinner okVar = this.d;
        int i2 = okVar.c;
        if (i2 == -2) {
            int a = okVar.a(this.b, c());
            int i3 = (this.d.getContext().getResources().getDisplayMetrics().widthPixels - this.d.d.left) - this.d.d.right;
            if (SingleStringProtoMessage > i3) {
                a = i3;
            }
            q(Math.max(a, (width - paddingLeft) - paddingRight));
        } else if (i2 == -1) {
            q((width - paddingLeft) - paddingRight);
        } else {
            q(i2);
        }
        this.g = tb.b(this.d) ? i + (((width - paddingRight) - this.f) - this.q) : i + paddingLeft + this.q;
    }
}
