package defpackage;

import android.view.ViewGroup;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dm {
    public final ViewGroup a;
    final ArrayList b = new ArrayList();
    final ArrayList c = new ArrayList();
    boolean d = false;

    public dm(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    static dm b(ViewGroup viewGroup, cr crVar) {
        crVar.aa();
        return g(viewGroup);
    }

    public static void f(dl dlVar) {
        r.o(dlVar.e, dlVar.a.P);
    }

    static dm g(ViewGroup viewGroup) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof dm) {
            return (dm) tag;
        }
        dm dmVar = new dm(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, dmVar);
        return dmVar;
    }

    public final dl a(br brVar) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            dl dlVar = (dl) arrayList.get(i);
            if (dlVar.a.equals(brVar) && !dlVar.c) {
                return dlVar;
            }
        }
        return null;
    }

    final void c() {
        String str;
        String str2;
        boolean F = hs.F(this.a);
        synchronized (this.b) {
            d();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((dl) it.next()).b();
            }
            Iterator it2 = new ArrayList(this.c).iterator();
            while (it2.hasNext()) {
                dl dlVar = (dl) it2.next();
                if (cr.R(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (F) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(dlVar);
                }
                dlVar.d();
            }
            Iterator it3 = new ArrayList(this.b).iterator();
            while (it3.hasNext()) {
                dl dlVar2 = (dl) it3.next();
                if (cr.R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (F) {
                        str = "";
                    } else {
                        str = "Container " + this.a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(dlVar2);
                }
                dlVar2.d();
            }
        }
    }

    public final void d() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            dl dlVar = (dl) arrayList.get(i);
            if (dlVar.f == 2) {
                dlVar.f(r.m(dlVar.a.B().getVisibility()), 1);
            }
        }
    }

    public final void e(int i, int i2, cx cxVar) {
        synchronized (this.b) {
            xv xvVar = new xv();
            dl a = a(cxVar.c);
            if (a != null) {
                a.f(i, i2);
                return;
            }
            dj djVar = new dj(i, i2, cxVar, xvVar);
            this.b.add(djVar);
            djVar.c(new di(this, djVar, 1));
            djVar.c(new di(this, djVar, 0));
        }
    }
}
