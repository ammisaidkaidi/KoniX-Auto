package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PredicateFilterAdapter implements ObjectPredicate {
    private final /* synthetic */ int k;
    public static final /* synthetic */ PredicateFilterAdapter j = new PredicateFilterAdapter(9);
    public static final /* synthetic */ PredicateFilterAdapter i = new PredicateFilterAdapter(8);
    public static final /* synthetic */ PredicateFilterAdapter h = new PredicateFilterAdapter(7);
    public static final /* synthetic */ PredicateFilterAdapter g = new PredicateFilterAdapter(6);
    public static final /* synthetic */ PredicateFilterAdapter f = new PredicateFilterAdapter(5);
    public static final /* synthetic */ PredicateFilterAdapter e = new PredicateFilterAdapter(4);
    public static final /* synthetic */ PredicateFilterAdapter d = new PredicateFilterAdapter(3);
    public static final /* synthetic */ PredicateFilterAdapter c = new PredicateFilterAdapter(2);
    public static final /* synthetic */ PredicateFilterAdapter b = new PredicateFilterAdapter(1);
    public static final /* synthetic */ PredicateFilterAdapter a = new PredicateFilterAdapter(0);

    private /* synthetic */ art(int i2) {
        this.k = i2;
    }

    @Override // defpackage.ObjectPredicate
    public final boolean a(Object obj) {
        switch (this.k) {
            case 0:
                return !((View) obj).isShown();
            case 1:
                return !((View) obj).isShown();
            case 2:
                View view = (View) obj;
                return ViewParentCompatStatics.s(view) && ViewParentCompatStatics.p(view);
            case 3:
                return !((View) obj).isShown();
            case 4:
                return !((View) obj).isShown();
            case 5:
                return !((View) obj).isShown();
            case 6:
                return !((View) obj).isShown();
            case 7:
                return obj instanceof RotaryScrollHandler;
            case 8:
                return !((View) obj).isShown();
            default:
                return ViewParentCompatStatics.r((View) obj);
        }
    }
}
