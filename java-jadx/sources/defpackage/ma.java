package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ma {
    public View a;
    public int b;
    public PopupWindow.OnDismissListener c;
    private final Context d;
    private final lo e;
    private final boolean f;
    private final int g;
    private boolean h;
    private mb i;
    private ly j;
    private final PopupWindow.OnDismissListener k;

    public ma(Context context, lo loVar, View view, boolean z) {
        this(context, loVar, view, z, R.attr.actionOverflowMenuStyle);
    }

    public final ly a() {
        if (this.j == null) {
            Display defaultDisplay = ((WindowManager) this.d.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            ly liVar = Math.min(point.x, point.y) >= this.d.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width) ? new li(this.d, this.a, this.g, this.f) : new mj(this.d, this.e, this.a, this.g, this.f);
            liVar.j(this.e);
            liVar.p(this.k);
            liVar.l(this.a);
            liVar.d(this.i);
            liVar.m(this.h);
            liVar.n(this.b);
            this.j = liVar;
        }
        return this.j;
    }

    public final void b() {
        if (g()) {
            this.j.k();
        }
    }

    protected void c() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.c;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(boolean z) {
        this.h = z;
        ly lyVar = this.j;
        if (lyVar != null) {
            lyVar.m(z);
        }
    }

    public final void e(mb mbVar) {
        this.i = mbVar;
        ly lyVar = this.j;
        if (lyVar != null) {
            lyVar.d(mbVar);
        }
    }

    public final void f(int i, int i2, boolean z, boolean z2) {
        ly a = a();
        a.q(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.b, hs.c(this.a)) & 7) == 5) {
                i -= this.a.getWidth();
            }
            a.o(i);
            a.r(i2);
            int i3 = (int) ((this.d.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a.g = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        a.s();
    }

    public final boolean g() {
        ly lyVar = this.j;
        return lyVar != null && lyVar.u();
    }

    public final boolean h() {
        if (g()) {
            return true;
        }
        if (this.a == null) {
            return false;
        }
        f(0, 0, false, false);
        return true;
    }

    public ma(Context context, lo loVar, View view, boolean z, int i) {
        this.b = 8388611;
        this.k = new lz(this);
        this.d = context;
        this.e = loVar;
        this.a = view;
        this.f = z;
        this.g = i;
    }
}
