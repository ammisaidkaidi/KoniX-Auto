package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewPredicateAdapter implements ObjectPredicate {
    public final /* synthetic */ View a;
    private final /* synthetic */ int b;

    public /* synthetic */ arw(View view, int i) {
        this.b = i;
        this.a = view;
    }

    @Override // defpackage.ObjectPredicate
    public final boolean a(Object obj) {
        switch (this.b) {
            case 0:
                if (obj != this.a) {
                    View view = (View) obj;
                    if (!view.isSelected() || !ViewParentCompatStatics.p(view)) {
                    }
                }
                break;
            case 1:
                if (obj == this.a || !ViewParentCompatStatics.p((View) obj)) {
                }
                break;
            case 2:
                if (obj != this.a) {
                    View view2 = (View) obj;
                    if (!view2.isFocusedByDefault() || !ViewParentCompatStatics.p(view2)) {
                    }
                }
                break;
            default:
                if (obj != this.a) {
                    View view3 = (View) obj;
                    if (ViewParentCompatStatics.s(view3) || !ViewParentCompatStatics.p(view3) || !ViewParentCompatStatics.t(view3)) {
                    }
                }
                break;
        }
        return true;
    }
}
