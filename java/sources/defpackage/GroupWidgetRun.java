package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GroupWidgetRun extends WidgetRun {
    public GroupWidgetRun(ConstraintWidget vxVar) {
        super(vxVar);
    }

    private final void g(DimensionDependencyNode wkVar) {
        this.i.j.add(wkVar);
        wkVar.k.add(this.i);
    }

    @Override // defpackage.WidgetRun
    public final void b() {
        ConstraintWidget vxVar = this.d;
        if (vxVar instanceof BarrierWidget) {
            DimensionDependencyNode wkVar = this.i;
            wkVar.b = true;
            BarrierWidget vuVar = (BarrierWidget) vxVar;
            int i = vuVar.a;
            boolean z = vuVar.b;
            int i2 = 0;
            switch (NavInstructionTypeEnum) {
                case 0:
                    wkVar.l = 4;
                    while (i2 < vuVar.ar) {
                        ConstraintWidget vxVar2 = vuVar.aq[i2];
                        if (IcuMessageFormat || vxVar2.ag != 8) {
                            DimensionDependencyNode wkVar2 = vxVar2.h.i;
                            wkVar2.j.add(this.i);
                            this.i.k.add(wkVar2);
                        }
                        i2++;
                    }
                    g(this.d.h.i);
                    g(this.d.h.j);
                    break;
                case 1:
                    wkVar.l = 5;
                    while (i2 < vuVar.ar) {
                        ConstraintWidget vxVar3 = vuVar.aq[i2];
                        if (IcuMessageFormat || vxVar3.ag != 8) {
                            DimensionDependencyNode wkVar3 = vxVar3.h.j;
                            wkVar3.j.add(this.i);
                            this.i.k.add(wkVar3);
                        }
                        i2++;
                    }
                    g(this.d.h.i);
                    g(this.d.h.j);
                    break;
                case 2:
                    wkVar.l = 6;
                    while (i2 < vuVar.ar) {
                        ConstraintWidget vxVar4 = vuVar.aq[i2];
                        if (IcuMessageFormat || vxVar4.ag != 8) {
                            DimensionDependencyNode wkVar4 = vxVar4.i.i;
                            wkVar4.j.add(this.i);
                            this.i.k.add(wkVar4);
                        }
                        i2++;
                    }
                    g(this.d.i.i);
                    g(this.d.i.j);
                    break;
                case 3:
                    wkVar.l = 7;
                    while (i2 < vuVar.ar) {
                        ConstraintWidget vxVar5 = vuVar.aq[i2];
                        if (IcuMessageFormat || vxVar5.ag != 8) {
                            DimensionDependencyNode wkVar5 = vxVar5.i.j;
                            wkVar5.j.add(this.i);
                            this.i.k.add(wkVar5);
                        }
                        i2++;
                    }
                    g(this.d.i.i);
                    g(this.d.i.j);
                    break;
            }
        }
    }

    @Override // defpackage.WidgetRun
    public final void c() {
        ConstraintWidget vxVar = this.d;
        if (vxVar instanceof BarrierWidget) {
            int i = ((BarrierWidget) vxVar).a;
            if (NavInstructionTypeEnum == 0 || i == 1) {
                vxVar.Y = this.i.f;
            } else {
                vxVar.Z = this.i.f;
            }
        }
    }

    @Override // defpackage.WidgetRun
    public final void d() {
        this.e = null;
        this.i.b();
    }

    @Override // defpackage.WidgetRun
    public final boolean e() {
        return false;
    }

    @Override // defpackage.WidgetRun, defpackage.WidgetRunDependency
    public final void f() {
        BarrierWidget vuVar = (BarrierWidget) this.d;
        int i = vuVar.a;
        Iterator it = this.i.k.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((DimensionDependencyNode) it.next()).f;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (NavInstructionTypeEnum == 0 || i == 2) {
            this.i.c(i3 + vuVar.c);
        } else {
            this.i.c(i2 + vuVar.c);
        }
    }
}
