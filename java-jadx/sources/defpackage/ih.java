package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ih {
    public static final ih a;
    private final ig b;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            a = C0004if.c;
        } else {
            a = ig.d;
        }
    }

    public ih(ih ihVar) {
        this.b = new ig(this);
    }

    static eh e(eh ehVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, ehVar.b - i);
        int max2 = Math.max(0, ehVar.c - i2);
        int max3 = Math.max(0, ehVar.d - i3);
        int max4 = Math.max(0, ehVar.e - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? ehVar : eh.b(max, max2, max3, max4);
    }

    public static ih k(WindowInsets windowInsets) {
        return l(windowInsets, null);
    }

    public static ih l(WindowInsets windowInsets, View view) {
        ez.m(windowInsets);
        ih ihVar = new ih(windowInsets);
        if (view != null && hs.F(view)) {
            ihVar.p(hs.l(view));
            ihVar.n(view.getRootView());
        }
        return ihVar;
    }

    @Deprecated
    public int a() {
        return this.b.a().e;
    }

    @Deprecated
    public int b() {
        return this.b.a().b;
    }

    @Deprecated
    public int c() {
        return this.b.a().d;
    }

    @Deprecated
    public int d() {
        return this.b.a().c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ih) {
            return Objects.equals(this.b, ((ih) obj).b);
        }
        return false;
    }

    @Deprecated
    public ih f() {
        return this.b.m();
    }

    @Deprecated
    public ih g() {
        return this.b.h();
    }

    @Deprecated
    public ih h() {
        return this.b.i();
    }

    public int hashCode() {
        ig igVar = this.b;
        if (igVar == null) {
            return 0;
        }
        return igVar.hashCode();
    }

    public ih i(int i, int i2, int i3, int i4) {
        return this.b.b(i, i2, i3, i4);
    }

    @Deprecated
    public ih j(int i, int i2, int i3, int i4) {
        hx hxVar = new hx(this);
        hxVar.b(eh.b(i, i2, i3, i4));
        return hxVar.a();
    }

    public WindowInsets m() {
        ig igVar = this.b;
        if (igVar instanceof ib) {
            return ((ib) igVar).a;
        }
        return null;
    }

    public void n(View view) {
        this.b.c(view);
    }

    public void o(eh[] ehVarArr) {
        this.b.e();
    }

    public void p(ih ihVar) {
        this.b.f();
    }

    public void q(eh ehVar) {
        this.b.j(ehVar);
    }

    public boolean r() {
        return this.b.k();
    }

    private ih(WindowInsets windowInsets) {
        this.b = Build.VERSION.SDK_INT >= 30 ? new C0004if(this, windowInsets) : Build.VERSION.SDK_INT >= 29 ? new ie(this, windowInsets) : new id(this, windowInsets);
    }
}
