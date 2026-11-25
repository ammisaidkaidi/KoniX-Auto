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
final class oh extends qf implements oj {
    public CharSequence a;
    ListAdapter b;
    public final Rect c;
    final /* synthetic */ ok d;
    private int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oh(ok okVar, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle);
        this.d = okVar;
        this.c = new Rect();
        this.k = okVar;
        x();
        this.l = new oe(this);
    }

    @Override // defpackage.oj
    public final CharSequence d() {
        return this.a;
    }

    @Override // defpackage.qf, defpackage.oj
    public final void e(ListAdapter listAdapter) {
        super.e(listAdapter);
        this.b = listAdapter;
    }

    @Override // defpackage.oj
    public final void h(int i) {
        this.q = i;
    }

    @Override // defpackage.oj
    public final void i(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // defpackage.oj
    public final void l(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        boolean u = u();
        n();
        w();
        super.s();
        pf pfVar = this.e;
        pfVar.setChoiceMode(1);
        pfVar.setTextDirection(i);
        pfVar.setTextAlignment(i2);
        int selectedItemPosition = this.d.getSelectedItemPosition();
        pf pfVar2 = this.e;
        if (u() && pfVar2 != null) {
            pfVar2.a = false;
            pfVar2.setSelection(selectedItemPosition);
            if (pfVar2.getChoiceMode() != 0) {
                pfVar2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (u || (viewTreeObserver = this.d.getViewTreeObserver()) == null) {
            return;
        }
        of ofVar = new of(this);
        viewTreeObserver.addOnGlobalLayoutListener(ofVar);
        t(new og(this, ofVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.widget.ListAdapter, android.widget.SpinnerAdapter] */
    final void n() {
        Drawable c = c();
        int i = 0;
        if (c != null) {
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
        ok okVar = this.d;
        int i2 = okVar.c;
        if (i2 == -2) {
            int a = okVar.a(this.b, c());
            int i3 = (this.d.getContext().getResources().getDisplayMetrics().widthPixels - this.d.d.left) - this.d.d.right;
            if (a > i3) {
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
