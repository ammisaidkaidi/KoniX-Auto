package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HelperWidgetRun extends WidgetRun {
    public HelperWidgetRun(ConstraintWidget vxVar) {
        super(vxVar);
        vxVar.h.d();
        vxVar.i.d();
        this.g = ((ContainerWidget) vxVar).aq;
    }

    private final void g(DimensionDependencyNode wkVar) {
        this.i.j.add(wkVar);
        wkVar.k.add(this.i);
    }

    @Override // defpackage.WidgetRun
    public final void b() {
        ConstraintWidget vxVar = this.d;
        ContainerWidget waVar = (ContainerWidget) vxVar;
        int i = waVar.b;
        int i2 = waVar.c;
        float f = waVar.a;
        if (waVar.aq == 1) {
            if (NavInstructionTypeEnum != -1) {
                this.i.k.add(vxVar.T.h.i);
                this.d.T.h.i.j.add(this.i);
                this.i.e = i;
            } else if (i2 != -1) {
                this.i.k.add(vxVar.T.h.j);
                this.d.T.h.j.j.add(this.i);
                this.i.e = -i2;
            } else {
                DimensionDependencyNode wkVar = this.i;
                wkVar.b = true;
                wkVar.k.add(vxVar.T.h.j);
                this.d.T.h.j.j.add(this.i);
            }
            g(this.d.h.i);
            g(this.d.h.j);
            return;
        }
        if (NavInstructionTypeEnum != -1) {
            this.i.k.add(vxVar.T.i.i);
            this.d.T.i.i.j.add(this.i);
            this.i.e = i;
        } else if (i2 != -1) {
            this.i.k.add(vxVar.T.i.j);
            this.d.T.i.j.j.add(this.i);
            this.i.e = -i2;
        } else {
            DimensionDependencyNode wkVar2 = this.i;
            wkVar2.b = true;
            wkVar2.k.add(vxVar.T.i.j);
            this.d.T.i.j.j.add(this.i);
        }
        g(this.d.i.i);
        g(this.d.i.j);
    }

    @Override // defpackage.WidgetRun
    public final void c() {
        ConstraintWidget vxVar = this.d;
        if (((ContainerWidget) vxVar).aq == 1) {
            vxVar.Y = this.i.f;
        } else {
            vxVar.Z = this.i.f;
        }
    }

    @Override // defpackage.WidgetRun
    public final void d() {
        this.i.b();
    }

    @Override // defpackage.WidgetRun
    public final boolean e() {
        return false;
    }

    @Override // defpackage.WidgetRun, defpackage.WidgetRunDependency
    public final void f() {
        DimensionDependencyNode wkVar = this.i;
        if (wkVar.c && !wkVar.i) {
            DimensionDependencyNode wkVar2 = (DimensionDependencyNode) wkVar.k.get(0);
            ContainerWidget waVar = (ContainerWidget) this.d;
            this.i.c((int) ((wkVar2.f * waVar.a) + 0.5f));
        }
    }
}
