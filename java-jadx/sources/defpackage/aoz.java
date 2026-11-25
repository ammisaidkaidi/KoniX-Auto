package defpackage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aoz extends rc {
    public final Context d;
    public RecyclerView e;
    private qm f;
    private qm g;

    public aoz(Context context) {
        this.d = context;
    }

    public static float h(View view, qm qmVar) {
        int j = qmVar.j();
        int f = qmVar.f();
        int d = qmVar.d(view);
        int a = qmVar.a(view);
        if (d >= j && a <= f) {
            return 1.0f;
        }
        if (a > j && d < f) {
            return (d > j || a < f) ? d < j ? (a - j) / qmVar.b(view) : (f - d) / qmVar.b(view) : (f - j) / qmVar.b(view);
        }
        return 0.0f;
    }

    private static int l(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    private static int m(View view, qm qmVar) {
        return qmVar.d(view) - qmVar.j();
    }

    private final qm n(ra raVar) {
        return raVar.X() ? j(raVar) : i(raVar);
    }

    private static boolean o(View view, qm qmVar) {
        return qmVar.b(view) <= qmVar.k();
    }

    @Override // defpackage.rc
    public final int[] b(int i, int i2) {
        int[] b = super.b(i, i2);
        RecyclerView recyclerView = this.e;
        if (recyclerView == null) {
            return b;
        }
        ra raVar = recyclerView.l;
        if (raVar == null || raVar.ak() == 0) {
            return b;
        }
        int ak = k(raVar) ? 0 : raVar.ak() - 1;
        qm n = n(raVar);
        View aw = raVar.aw(ak);
        aw.getClass();
        float h = h(aw, n);
        int i3 = raVar.E;
        if (h > 0.0f) {
            i3 -= ra.bc(aw);
        }
        int i4 = -i3;
        b[0] = l(b[0], i4, i3);
        b[1] = l(b[1], i4, i3);
        return b;
    }

    @Override // defpackage.rc
    public final View d(ra raVar) {
        int ak = raVar.ak();
        if (ak == 0) {
            return null;
        }
        qm n = n(raVar);
        if (ak == 1) {
            View aw = raVar.aw(0);
            if (o(aw, n)) {
                return aw;
            }
            return null;
        }
        RecyclerView recyclerView = this.e;
        if (recyclerView == null) {
            return null;
        }
        View childAt = recyclerView.getChildAt(0);
        if (childAt.getHeight() > this.e.getHeight() && n.d(childAt) < 0 && n.a(childAt) > this.e.getHeight() * 0.3f) {
            return null;
        }
        View aw2 = raVar.aw(ak - 1);
        aw2.getClass();
        int bg = ra.bg(aw2);
        int am = raVar.am() - 1;
        float f = 0.0f;
        float h = bg == am ? h(aw2, n) : 0.0f;
        int i = Preference.DEFAULT_ORDER;
        View view = null;
        for (int i2 = 0; i2 < ak; i2++) {
            View aw3 = raVar.aw(i2);
            int d = n.d(aw3);
            if (Math.abs(d) < i) {
                float h2 = h(aw3, n);
                if (h2 > 0.5f && h2 > f) {
                    view = aw3;
                    i = d;
                    f = h2;
                }
            }
        }
        if (view != null && (bg != am || h <= f)) {
            aw2 = view;
        }
        if (o(aw2, n)) {
            return aw2;
        }
        return null;
    }

    @Override // defpackage.rc
    public final int[] e(ra raVar, View view) {
        int[] iArr = new int[2];
        if (!this.e.isInTouchMode()) {
            return iArr;
        }
        if (raVar.W()) {
            iArr[0] = m(view, i(raVar));
        }
        if (raVar.X()) {
            iArr[1] = m(view, j(raVar));
        }
        return iArr;
    }

    public final qm i(ra raVar) {
        qm qmVar = this.g;
        if (qmVar == null || qmVar.a != raVar) {
            this.g = qm.p(raVar);
        }
        return this.g;
    }

    public final qm j(ra raVar) {
        qm qmVar = this.f;
        if (qmVar == null || qmVar.a != raVar) {
            this.f = qm.r(raVar);
        }
        return this.f;
    }

    public final boolean k(ra raVar) {
        if (raVar == null || raVar.ak() == 0) {
            return true;
        }
        int ak = raVar.ak();
        qm j = raVar.X() ? j(raVar) : i(raVar);
        View aw = raVar.aw(ak - 1);
        aw.getClass();
        return ra.bg(aw) == raVar.am() + (-1) && ra.ba(aw) <= j.f();
    }
}
