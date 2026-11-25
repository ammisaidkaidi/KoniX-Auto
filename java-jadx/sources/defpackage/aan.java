package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aan extends zz implements aat {
    public final int j = 54321;
    public final aau k;
    public aao l;
    private zq m;

    public aan(aau aauVar) {
        this.k = aauVar;
        if (aauVar.e != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        aauVar.e = this;
        aauVar.d = 54321;
    }

    @Override // defpackage.zy
    protected final void d() {
        if (aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("  Starting: ");
            sb.append(this);
        }
        aau aauVar = this.k;
        aauVar.g = true;
        aauVar.i = false;
        aauVar.h = false;
        aas aasVar = (aas) aauVar;
        List list = aasVar.c;
        if (list != null) {
            aasVar.b(list);
            return;
        }
        aauVar.d();
        aasVar.a = new aar(aasVar);
        aasVar.a();
    }

    @Override // defpackage.zy
    protected final void e() {
        if (aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("  Stopping: ");
            sb.append(this);
        }
        aau aauVar = this.k;
        aauVar.g = false;
        aauVar.d();
    }

    @Override // defpackage.zy
    public final void f(aaa aaaVar) {
        super.f(aaaVar);
        this.m = null;
        this.l = null;
    }

    public final void i() {
        zq zqVar = this.m;
        aao aaoVar = this.l;
        if (zqVar == null || aaoVar == null) {
            return;
        }
        super.f(aaoVar);
        c(zqVar, aaoVar);
    }

    public final void j() {
        if (aam.b(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("  Destroying: ");
            sb.append(this);
        }
        this.k.d();
        this.k.h = true;
        aao aaoVar = this.l;
        if (aaoVar != null) {
            f(aaoVar);
            if (aaoVar.c) {
                if (aam.b(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Resetting: ");
                    sb2.append(aaoVar.a);
                }
                chf chfVar = (chf) aaoVar.b;
                chfVar.a.clear();
                chfVar.a.notifyDataSetChanged();
            }
        }
        aau aauVar = this.k;
        aat aatVar = aauVar.e;
        if (aatVar == null) {
            throw new IllegalStateException("No listener register");
        }
        if (aatVar != this) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        aauVar.e = null;
        aauVar.i = true;
        aauVar.g = false;
        aauVar.h = false;
        aauVar.j = false;
    }

    public final void k(zq zqVar, aal aalVar) {
        aao aaoVar = new aao(this.k, aalVar);
        c(zqVar, aaoVar);
        aaa aaaVar = this.l;
        if (aaaVar != null) {
            f(aaaVar);
        }
        this.m = zqVar;
        this.l = aaoVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.j);
        sb.append(" : ");
        sb.append(this.k.getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this.k)));
        sb.append("}}");
        return sb.toString();
    }
}
