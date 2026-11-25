package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import defpackage.dhp;
import defpackage.zl;
import defpackage.zq;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhp extends ContextWrapper {
    public br a;
    public LayoutInflater b;
    public LayoutInflater c;
    private final zo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhp(Context context, br brVar) {
        super(context);
        dpx.p(context);
        zo zoVar = new zo() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    dhp dhpVar = dhp.this;
                    dhpVar.a = null;
                    dhpVar.b = null;
                    dhpVar.c = null;
                }
            }
        };
        this.d = zoVar;
        this.b = null;
        this.a = brVar;
        brVar.ac.b(zoVar);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.c == null) {
            if (this.b == null) {
                this.b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
            }
            this.c = this.b.cloneInContext(this);
        }
        return this.c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public dhp(LayoutInflater layoutInflater, br brVar) {
        super(r0);
        dpx.p(layoutInflater);
        Context context = layoutInflater.getContext();
        dpx.p(context);
        zo zoVar = new zo() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1
            @Override // defpackage.zo
            public final void a(zq zqVar, zl zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    dhp dhpVar = dhp.this;
                    dhpVar.a = null;
                    dhpVar.b = null;
                    dhpVar.c = null;
                }
            }
        };
        this.d = zoVar;
        this.b = layoutInflater;
        this.a = brVar;
        brVar.ac.b(zoVar);
    }
}
