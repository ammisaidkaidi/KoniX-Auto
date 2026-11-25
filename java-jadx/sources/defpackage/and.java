package defpackage;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.view.View;
import com.android.car.ui.baselayout.Insets;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class and implements anc {
    public anc a;
    public Insets b = new Insets();
    private final Activity c;
    private final View d;

    public and(Activity activity, View view) {
        this.c = activity;
        this.d = view;
    }

    @Override // defpackage.anc
    public final void a(Insets insets) {
        boolean z;
        if (this.b.equals(insets)) {
            return;
        }
        this.b = insets;
        anc ancVar = this.a;
        if (ancVar != null) {
            ancVar.a(insets);
            return;
        }
        ComponentCallbacks2 componentCallbacks2 = this.c;
        if (componentCallbacks2 instanceof anc) {
            ((anc) componentCallbacks2).a(insets);
            z = true;
        } else {
            z = false;
        }
        Activity activity = this.c;
        if (activity instanceof bv) {
            for (aex aexVar : ((bv) activity).aI().i()) {
                if (aexVar instanceof anc) {
                    ((anc) aexVar).a(insets);
                    z = true;
                }
            }
        }
        if (z) {
            return;
        }
        this.d.setPadding(insets.getLeft(), insets.getTop(), insets.getRight(), insets.getBottom());
    }
}
