package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class art implements ary {
    private final /* synthetic */ int k;
    public static final /* synthetic */ art j = new art(9);
    public static final /* synthetic */ art i = new art(8);
    public static final /* synthetic */ art h = new art(7);
    public static final /* synthetic */ art g = new art(6);
    public static final /* synthetic */ art f = new art(5);
    public static final /* synthetic */ art e = new art(4);
    public static final /* synthetic */ art d = new art(3);
    public static final /* synthetic */ art c = new art(2);
    public static final /* synthetic */ art b = new art(1);
    public static final /* synthetic */ art a = new art(0);

    private /* synthetic */ art(int i2) {
        this.k = i2;
    }

    @Override // defpackage.ary
    public final boolean a(Object obj) {
        switch (this.k) {
            case 0:
                return !((View) obj).isShown();
            case 1:
                return !((View) obj).isShown();
            case 2:
                View view = (View) obj;
                return hf.s(view) && hf.p(view);
            case 3:
                return !((View) obj).isShown();
            case 4:
                return !((View) obj).isShown();
            case 5:
                return !((View) obj).isShown();
            case 6:
                return !((View) obj).isShown();
            case 7:
                return obj instanceof arx;
            case 8:
                return !((View) obj).isShown();
            default:
                return hf.r((View) obj);
        }
    }
}
