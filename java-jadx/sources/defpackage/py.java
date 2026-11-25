package defpackage;

import android.view.View;
import androidx.preference.Preference;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class py {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int k;
    public boolean m;
    public boolean a = true;
    public int h = 0;
    public int i = 0;
    public boolean j = false;
    public List l = null;

    public final View a(rh rhVar) {
        List list = this.l;
        if (list == null) {
            View c = rhVar.c(this.d);
            this.d += this.e;
            return c;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view = ((rr) this.l.get(i)).itemView;
            rb rbVar = (rb) view.getLayoutParams();
            if (!rbVar.c() && this.d == rbVar.a()) {
                c(view);
                return view;
            }
        }
        return null;
    }

    public final void b() {
        c(null);
    }

    public final void c(View view) {
        int a;
        int size = this.l.size();
        View view2 = null;
        int i = Preference.DEFAULT_ORDER;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            View view3 = ((rr) this.l.get(i2)).itemView;
            rb rbVar = (rb) view3.getLayoutParams();
            if (view3 != view && !rbVar.c() && (a = (rbVar.a() - this.d) * this.e) >= 0 && a < i) {
                if (a == 0) {
                    view2 = view3;
                    break;
                } else {
                    view2 = view3;
                    i = a;
                }
            }
            i2++;
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((rb) view2.getLayoutParams()).a();
        }
    }

    public final boolean d(ro roVar) {
        int i = this.d;
        return i >= 0 && i < roVar.a();
    }
}
