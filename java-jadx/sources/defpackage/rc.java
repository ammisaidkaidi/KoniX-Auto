package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Scroller;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public class rc {
    public RecyclerView a;
    public Scroller b;
    public final re c = new ry(this);
    private qm d;
    private qm e;

    private static int h(View view, qm qmVar) {
        return (qmVar.d(view) + (qmVar.b(view) / 2)) - (qmVar.j() + (qmVar.k() / 2));
    }

    private static View i(ra raVar, qm qmVar) {
        int ak = raVar.ak();
        View view = null;
        if (ak == 0) {
            return null;
        }
        int j = qmVar.j() + (qmVar.k() / 2);
        int i = Preference.DEFAULT_ORDER;
        int i2 = 0;
        while (i2 < ak) {
            View aw = raVar.aw(i2);
            int abs = Math.abs((qmVar.d(aw) + (qmVar.b(aw) / 2)) - j);
            int i3 = abs < i ? abs : i;
            if (abs < i) {
                view = aw;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    public final void a() {
        ra raVar;
        View d;
        RecyclerView recyclerView = this.a;
        if (recyclerView == null || (raVar = recyclerView.l) == null || (d = d(raVar)) == null) {
            return;
        }
        int[] e = e(raVar, d);
        int i = 0;
        int i2 = e[0];
        if (i2 != 0) {
            i = i2;
        } else if (e[1] == 0) {
            return;
        }
        this.a.ab(i, e[1]);
    }

    public int[] b(int i, int i2) {
        this.b.fling(0, 0, i, i2, Integer.MIN_VALUE, Preference.DEFAULT_ORDER, Integer.MIN_VALUE, Preference.DEFAULT_ORDER);
        return new int[]{this.b.getFinalX(), this.b.getFinalY()};
    }

    public final int c(ra raVar, qm qmVar, int i, int i2) {
        int[] b = b(i, i2);
        int ak = raVar.ak();
        float f = 1.0f;
        if (ak != 0) {
            int i3 = Preference.DEFAULT_ORDER;
            int i4 = Integer.MIN_VALUE;
            View view = null;
            View view2 = null;
            for (int i5 = 0; i5 < ak; i5++) {
                View aw = raVar.aw(i5);
                int bg = ra.bg(aw);
                if (bg != -1) {
                    int i6 = bg < i3 ? bg : i3;
                    if (bg < i3) {
                        view = aw;
                    }
                    if (bg > i4) {
                        view2 = aw;
                        i4 = bg;
                    }
                    i3 = i6;
                }
            }
            if (view != null && view2 != null) {
                int max = Math.max(qmVar.a(view), qmVar.a(view2)) - Math.min(qmVar.d(view), qmVar.d(view2));
                if (max != 0) {
                    f = max / ((i4 - i3) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(b[0]) > Math.abs(b[1]) ? b[0] : b[1]) / f);
    }

    public View d(ra raVar) {
        if (raVar.X()) {
            return i(raVar, g(raVar));
        }
        if (raVar.W()) {
            return i(raVar, f(raVar));
        }
        return null;
    }

    public int[] e(ra raVar, View view) {
        int[] iArr = new int[2];
        if (raVar.W()) {
            iArr[0] = h(view, f(raVar));
        } else {
            iArr[0] = 0;
        }
        if (raVar.X()) {
            iArr[1] = h(view, g(raVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final qm f(ra raVar) {
        qm qmVar = this.e;
        if (qmVar == null || qmVar.a != raVar) {
            this.e = qm.p(raVar);
        }
        return this.e;
    }

    public final qm g(ra raVar) {
        qm qmVar = this.d;
        if (qmVar == null || qmVar.a != raVar) {
            this.d = qm.r(raVar);
        }
        return this.d;
    }
}
