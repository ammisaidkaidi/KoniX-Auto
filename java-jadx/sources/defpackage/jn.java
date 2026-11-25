package defpackage;

import android.view.Menu;
import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jn implements kn {
    final /* synthetic */ jw a;
    private final kn b;

    public jn(jw jwVar, kn knVar) {
        this.a = jwVar;
        this.b = knVar;
    }

    @Override // defpackage.kn
    public final void a(ko koVar) {
        kq kqVar = (kq) this.b;
        kqVar.a.onDestroyActionMode(kqVar.e(koVar));
        jw jwVar = this.a;
        if (jwVar.m != null) {
            jwVar.g.getDecorView().removeCallbacks(this.a.n);
        }
        jw jwVar2 = this.a;
        if (jwVar2.l != null) {
            jwVar2.z();
            jw jwVar3 = this.a;
            bew O = hs.O(jwVar3.l);
            O.b(0.0f);
            jwVar3.G = O;
            this.a.G.d(new jm(this));
        }
        jw jwVar4 = this.a;
        jwVar4.k = null;
        hs.t(jwVar4.q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kn
    public final boolean b(ko koVar, MenuItem menuItem) {
        kq kqVar = (kq) this.b;
        return kqVar.a.onActionItemClicked(kqVar.e(koVar), new lx(kqVar.b, menuItem));
    }

    @Override // defpackage.kn
    public final boolean c(ko koVar, Menu menu) {
        kq kqVar = (kq) this.b;
        return kqVar.a.onCreateActionMode(kqVar.e(koVar), kqVar.f(menu));
    }

    @Override // defpackage.kn
    public final void d(ko koVar, Menu menu) {
        hs.t(this.a.q);
        kq kqVar = (kq) this.b;
        kqVar.a.onPrepareActionMode(kqVar.e(koVar), kqVar.f(menu));
    }
}
