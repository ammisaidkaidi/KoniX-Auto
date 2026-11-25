package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContainerRunHelper {
    public final ConstraintWidgetContainer b;
    public final ArrayList a = new ArrayList();
    private final WidgetRunIndexHolder c = new WidgetRunIndexHolder();

    public ContainerRunHelper(ConstraintWidgetContainer vyVar) {
        this.b = vyVar;
    }

    public final void a(ConstraintWidgetContainer vyVar) {
        this.a.clear();
        int size = vyVar.aH.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ConstraintWidget vxVar = (ConstraintWidget) vyVar.aH.get(NavInstructionTypeEnum);
            if (vxVar.N() == 3 || vxVar.O() == 3) {
                this.a.add(vxVar);
            }
        }
        vyVar.c();
    }

    public final void b(ConstraintWidgetContainer vyVar, int i, int i2, int i3) {
        int i4 = vyVar.ab;
        int i5 = vyVar.ac;
        vyVar.C(0);
        vyVar.B(0);
        vyVar.D(i2);
        vyVar.y(i3);
        vyVar.C(i4);
        vyVar.B(i5);
        ConstraintWidgetContainer vyVar2 = this.b;
        vyVar2.c = i;
        vyVar2.T();
    }

    public final boolean c(ConstraintLayoutMeasurer wzVar, ConstraintWidget vxVar, int i) {
        this.c.i = vxVar.N();
        this.c.j = vxVar.O();
        this.c.a = vxVar.j();
        this.c.b = vxVar.h();
        WidgetRunIndexHolder wfVar = this.c;
        wfVar.g = false;
        wfVar.h = i;
        int i2 = wfVar.i;
        int i3 = wfVar.j;
        boolean z = i2 == 3 && vxVar.W > 0.0f;
        boolean z2 = i3 == 3 && vxVar.W > 0.0f;
        if (IcuMessageFormat && vxVar.u[0] == 4) {
            wfVar.i = 1;
        }
        if (z2 && vxVar.u[1] == 4) {
            wfVar.j = 1;
        }
        wzVar.a(vxVar, wfVar);
        vxVar.D(this.c.c);
        vxVar.y(this.c.d);
        WidgetRunIndexHolder wfVar2 = this.c;
        vxVar.F = wfVar2.f;
        vxVar.v(wfVar2.e);
        WidgetRunIndexHolder wfVar3 = this.c;
        wfVar3.h = 0;
        return wfVar3.g;
    }
}
