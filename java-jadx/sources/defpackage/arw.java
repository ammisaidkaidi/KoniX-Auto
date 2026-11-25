package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class arw implements ary {
    public final /* synthetic */ View a;
    private final /* synthetic */ int b;

    public /* synthetic */ arw(View view, int i) {
        this.b = i;
        this.a = view;
    }

    @Override // defpackage.ary
    public final boolean a(Object obj) {
        switch (this.b) {
            case 0:
                if (obj != this.a) {
                    View view = (View) obj;
                    if (!view.isSelected() || !hf.p(view)) {
                    }
                }
                break;
            case 1:
                if (obj == this.a || !hf.p((View) obj)) {
                }
                break;
            case 2:
                if (obj != this.a) {
                    View view2 = (View) obj;
                    if (!view2.isFocusedByDefault() || !hf.p(view2)) {
                    }
                }
                break;
            default:
                if (obj != this.a) {
                    View view3 = (View) obj;
                    if (hf.s(view3) || !hf.p(view3) || !hf.t(view3)) {
                    }
                }
                break;
        }
        return true;
    }
}
