package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class rn {
    public int a;
    public RecyclerView b;
    public ra c;
    public boolean d;
    public boolean e;
    public View f;
    public boolean g;
    protected final LinearInterpolator h;
    protected final DecelerateInterpolator i;
    protected PointF j;
    protected int k;
    protected int l;
    private final rl m;
    private final DisplayMetrics n;
    private boolean o;
    private float p;

    public rn(Context context) {
        this.a = -1;
        this.m = new rl();
        this.h = new LinearInterpolator();
        this.i = new DecelerateInterpolator();
        this.o = false;
        this.k = 0;
        this.l = 0;
        this.n = context.getResources().getDisplayMetrics();
    }

    public static int h(int i, int i2, int i3, int i4, int i5) {
        switch (i5) {
            case -1:
                return i3 - i;
            case 0:
                int i6 = i3 - i;
                if (i6 > 0) {
                    return i6;
                }
                int i7 = i4 - i2;
                if (i7 < 0) {
                    return i7;
                }
                return 0;
            default:
                return i4 - i2;
        }
    }

    public static final int i(View view) {
        rr h = RecyclerView.h(view);
        if (h != null) {
            return h.getLayoutPosition();
        }
        return -1;
    }

    private static int k(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    public final PointF a(int i) {
        Object obj = this.c;
        if (obj instanceof rm) {
            return ((rm) obj).K(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement ".concat(String.valueOf(rm.class.getCanonicalName())));
        return null;
    }

    final void b(int i, int i2) {
        PointF a;
        RecyclerView recyclerView = this.b;
        if (this.a == -1 || recyclerView == null) {
            c();
        }
        if (this.d && this.f == null && this.c != null && (a = a(this.a)) != null && (a.x != 0.0f || a.y != 0.0f)) {
            recyclerView.V((int) Math.signum(a.x), (int) Math.signum(a.y), null);
        }
        this.d = false;
        View view = this.f;
        if (view != null) {
            if (i(view) == this.a) {
                View view2 = this.f;
                ro roVar = recyclerView.H;
                j(view2, this.m);
                this.m.a(recyclerView);
                c();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.e) {
            ro roVar2 = recyclerView.H;
            rl rlVar = this.m;
            if (this.b.l.ak() == 0) {
                c();
            } else {
                this.k = k(this.k, i);
                int k = k(this.l, i2);
                this.l = k;
                if (this.k == 0 && k == 0) {
                    PointF a2 = a(this.a);
                    if (a2 == null || (a2.x == 0.0f && a2.y == 0.0f)) {
                        rlVar.a = this.a;
                        c();
                    } else {
                        float sqrt = (float) Math.sqrt((a2.x * a2.x) + (a2.y * a2.y));
                        a2.x /= sqrt;
                        a2.y /= sqrt;
                        this.j = a2;
                        this.k = (int) (a2.x * 10000.0f);
                        this.l = (int) (a2.y * 10000.0f);
                        rlVar.b((int) (this.k * 1.2f), (int) (this.l * 1.2f), (int) (f(10000) * 1.2f), this.h);
                    }
                }
            }
            rl rlVar2 = this.m;
            int i3 = rlVar2.a;
            rlVar2.a(recyclerView);
            if (i3 < 0 || !this.e) {
                return;
            }
            this.d = true;
            recyclerView.E.a();
        }
    }

    public final void c() {
        if (this.e) {
            this.e = false;
            this.l = 0;
            this.k = 0;
            this.j = null;
            this.b.H.a = -1;
            this.f = null;
            this.a = -1;
            this.d = false;
            ra raVar = this.c;
            if (raVar.u == this) {
                raVar.u = null;
            }
            this.c = null;
            this.b = null;
        }
    }

    public final int d(View view, int i) {
        ra raVar = this.c;
        if (raVar == null || !raVar.X()) {
            return 0;
        }
        rb rbVar = (rb) view.getLayoutParams();
        return h(ra.bf(view) - rbVar.topMargin, ra.ba(view) + rbVar.bottomMargin, raVar.at(), raVar.E - raVar.aq(), i);
    }

    protected int e(int i) {
        double f = f(i);
        Double.isNaN(f);
        return (int) Math.ceil(f / 0.3356d);
    }

    protected int f(int i) {
        float abs = Math.abs(i);
        if (!this.o) {
            this.p = 25.0f / this.n.densityDpi;
            this.o = true;
        }
        return (int) Math.ceil(abs * this.p);
    }

    protected int g() {
        PointF pointF = this.j;
        if (pointF == null || pointF.y == 0.0f) {
            return 0;
        }
        return this.j.y <= 0.0f ? -1 : 1;
    }

    protected void j(View view, rl rlVar) {
        PointF pointF = this.j;
        int i = 0;
        int i2 = pointF != null ? pointF.x == 0.0f ? 0 : this.j.x > 0.0f ? 1 : -1 : 0;
        ra raVar = this.c;
        if (raVar != null && raVar.W()) {
            rb rbVar = (rb) view.getLayoutParams();
            i = h(ra.bb(view) - rbVar.leftMargin, ra.be(view) + rbVar.rightMargin, raVar.ar(), raVar.D - raVar.as(), i2);
        }
        int d = d(view, g());
        int e = e((int) Math.sqrt((i * i) + (d * d)));
        if (e > 0) {
            rlVar.b(-i, -d, e, this.i);
        }
    }

    public rn() {
        this.a = -1;
        this.m = new rl();
    }
}
