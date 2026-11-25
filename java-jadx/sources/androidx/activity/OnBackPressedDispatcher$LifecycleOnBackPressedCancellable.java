package androidx.activity;

import defpackage.td;
import defpackage.tl;
import defpackage.tm;
import defpackage.tn;
import defpackage.zl;
import defpackage.zn;
import defpackage.zo;
import defpackage.zq;

/* compiled from: PG */
/* loaded from: classes.dex */
public class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements zo, td {
    final /* synthetic */ tn a;
    private final zn b;
    private final tl c;
    private td d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(tn tnVar, zn znVar, tl tlVar) {
        this.a = tnVar;
        this.b = znVar;
        this.c = tlVar;
        znVar.b(this);
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
        if (zlVar == zl.ON_START) {
            tn tnVar = this.a;
            tl tlVar = this.c;
            tnVar.a.add(tlVar);
            tm tmVar = new tm(tnVar, tlVar);
            tlVar.a(tmVar);
            this.d = tmVar;
            return;
        }
        if (zlVar != zl.ON_STOP) {
            if (zlVar == zl.ON_DESTROY) {
                b();
            }
        } else {
            td tdVar = this.d;
            if (tdVar != null) {
                tdVar.b();
            }
        }
    }

    @Override // defpackage.td
    public final void b() {
        this.b.d(this);
        this.c.b(this);
        td tdVar = this.d;
        if (tdVar != null) {
            tdVar.b();
            this.d = null;
        }
    }
}
