package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ListPopupWindow implements MenuPopupInternalInterface {
    private static Method a;
    private static Method b;
    private final Context c;
    private ListAdapter d;
    public DropDownListView e;
    public int g;
    public boolean h;
    public boolean i;
    public View k;
    public AdapterView.OnItemClickListener l;
    final Handler n;
    public boolean o;
    public final PopupWindow p;
    private int q;
    private boolean r;
    private DataSetObserver s;
    private Rect w;
    public int f = -2;
    public int j = 0;
    final ListPopupWindowResizeRunnable m = new ListPopupWindowResizeRunnable(this, 0);
    private final ListPopupWindowTouchListener t = new ListPopupWindowTouchListener(this);
    private final ListPopupWindowScrollListener u = new ListPopupWindowScrollListener(this);
    private final ListPopupWindowResizeRunnable x = new ListPopupWindowResizeRunnable(this, 1);
    private final Rect v = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
            }
            try {
                b = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this.c = context;
        this.n = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ki.n, i, 0);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.q = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.r = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow ntVar = new AppCompatPopupWindow(context, attributeSet, i);
        this.p = ntVar;
        ntVar.setInputMethodMode(1);
    }

    public final int a() {
        return this.g;
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final ListView aJ() {
        return this.e;
    }

    public final int b() {
        if (this.r) {
            return this.q;
        }
        return 0;
    }

    public final Drawable c() {
        return this.p.getBackground();
    }

    public void e(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.s;
        if (dataSetObserver == null) {
            this.s = new ListPopupWindowDataSetObserver(this);
        } else {
            ListAdapter listAdapter2 = this.d;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.d = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.s);
        }
        DropDownListView pfVar = this.e;
        if (pfVar != null) {
            pfVar.setAdapter(this.d);
        }
    }

    public final void f(Drawable drawable) {
        this.p.setBackgroundDrawable(drawable);
    }

    public final void g(int i) {
        this.g = i;
    }

    public final void j(int i) {
        this.q = i;
        this.r = true;
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void k() {
        this.p.dismiss();
        this.p.setContentView(null);
        this.e = null;
        this.n.removeCallbacks(this.m);
    }

    public DropDownListView o(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    public final void p() {
        DropDownListView pfVar = this.e;
        if (pfVar != null) {
            pfVar.a = true;
            pfVar.requestLayout();
        }
    }

    public final void q(int i) {
        Drawable background = this.p.getBackground();
        if (background == null) {
            this.f = i;
        } else {
            background.getPadding(this.v);
            this.f = this.v.left + this.v.right + i;
        }
    }

    public final void r(Rect rect) {
        this.w = rect != null ? new Rect(rect) : null;
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void s() {
        int i;
        int makeMeasureSpec;
        if (this.e == null) {
            DropDownListView o = o(this.c, !this.o);
            this.e = o;
            o.setAdapter(this.d);
            this.e.setOnItemClickListener(this.l);
            this.e.setFocusable(true);
            this.e.setFocusableInTouchMode(true);
            this.e.setOnItemSelectedListener(new ListPopupWindowItemSelectedListener(this));
            this.e.setOnScrollListener(this.u);
            this.p.setContentView(this.e);
        }
        Drawable background = this.p.getBackground();
        if (background != null) {
            background.getPadding(this.v);
            i = this.v.top + this.v.bottom;
            if (!this.r) {
                this.q = -this.v.top;
            }
        } else {
            this.v.setEmpty();
            i = 0;
        }
        int maxAvailableHeight = this.p.getMaxAvailableHeight(this.k, this.q, this.p.getInputMethodMode() == 2);
        int i2 = this.f;
        switch (i2) {
            case -2:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.v.left + this.v.right), Integer.MIN_VALUE);
                break;
            case -1:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.v.left + this.v.right), 1073741824);
                break;
            default:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                break;
        }
        int b2 = this.e.b(makeMeasureSpec, maxAvailableHeight);
        int paddingTop = b2 + (b2 > 0 ? i + this.e.getPaddingTop() + this.e.getPaddingBottom() : 0);
        v();
        ConstraintLayoutStateParser.b(this.p, 1002);
        if (this.p.isShowing()) {
            if (ViewCompatAccessibilityStatics.F(this.k)) {
                int i3 = this.f;
                if (i3 == -1) {
                    i3 = -1;
                } else if (i3 == -2) {
                    i3 = this.k.getWidth();
                }
                this.p.setOutsideTouchable(true);
                this.p.update(this.k, this.g, this.q, i3 < 0 ? -1 : i3, paddingTop < 0 ? -1 : paddingTop);
                return;
            }
            return;
        }
        int i4 = this.f;
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = this.k.getWidth();
        }
        this.p.setWidth(i4);
        this.p.setHeight(paddingTop);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = a;
            if (method != null) {
                try {
                    method.invoke(this.p, true);
                } catch (Exception e) {
                }
            }
        } else {
            this.p.setIsClippedToScreen(true);
        }
        this.p.setOutsideTouchable(true);
        this.p.setTouchInterceptor(this.t);
        if (this.i) {
            ConstraintLayoutStateParser.a(this.p, this.h);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = b;
            if (method2 != null) {
                try {
                    method2.invoke(this.p, this.w);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.p.setEpicenterBounds(this.w);
        }
        ir.a(this.p, this.k, this.g, this.q, this.j);
        this.e.setSelection(-1);
        if (!this.o || this.e.isInTouchMode()) {
            p();
        }
        if (this.o) {
            return;
        }
        this.n.post(this.x);
    }

    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.p.setOnDismissListener(onDismissListener);
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final boolean u() {
        return this.p.isShowing();
    }

    public final boolean v() {
        return this.p.getInputMethodMode() == 2;
    }

    public final void w() {
        this.p.setInputMethodMode(2);
    }

    public final void x() {
        this.o = true;
        this.p.setFocusable(true);
    }
}
