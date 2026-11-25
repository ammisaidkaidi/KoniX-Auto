package defpackage;

import android.view.View;
import androidx.preference.Preference;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OrientationHelperStateHolder {
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

    public final View a(RecyclerViewRecycler rhVar) {
        List list = this.l;
        if (list == null) {
            View c = rhVar.c(this.d);
            this.d += this.e;
            return c;
        }
        int size = list.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            View view = ((RecyclerViewViewHolder) this.l.get(NavInstructionTypeEnum)).itemView;
            RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
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
            View view3 = ((RecyclerViewViewHolder) this.l.get(i2)).itemView;
            RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view3.getLayoutParams();
            if (view3 != view && !rbVar.c() && (SingleStringProtoMessage = (rbVar.a() - this.d) * this.e) >= 0 && SingleStringProtoMessage < i) {
                if (SingleStringProtoMessage == 0) {
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
            this.d = ((RecyclerViewLayoutParams) view2.getLayoutParams()).a();
        }
    }

    public final boolean d(RecyclerViewState roVar) {
        int i = this.d;
        return i >= 0 && NavInstructionTypeEnum < roVar.a();
    }
}
