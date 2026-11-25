package defpackage;

import android.graphics.Rect;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class qm {
    public final ra a;
    public int b = Integer.MIN_VALUE;
    final Rect c = new Rect();

    public qm(ra raVar) {
        this.a = raVar;
    }

    public static qm p(ra raVar) {
        return new qk(raVar);
    }

    public static qm q(ra raVar, int i) {
        switch (i) {
            case 0:
                return p(raVar);
            default:
                return r(raVar);
        }
    }

    public static qm r(ra raVar) {
        return new ql(raVar);
    }

    public abstract int a(View view);

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e();

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l(View view);

    public abstract int m(View view);

    public abstract void n(int i);

    public final int o() {
        if (this.b == Integer.MIN_VALUE) {
            return 0;
        }
        return k() - this.b;
    }
}
