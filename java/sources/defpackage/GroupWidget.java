package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GroupWidget extends ConstraintWidget {
    public ArrayList aH = new ArrayList();

    public void T() {
        ArrayList arrayList = this.aH;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ConstraintWidget vxVar = (ConstraintWidget) this.aH.get(NavInstructionTypeEnum);
            if (vxVar instanceof GroupWidget) {
                ((GroupWidget) vxVar).T();
            }
        }
    }

    public final void Y(ConstraintWidget vxVar) {
        this.aH.remove(vxVar);
        vxVar.s();
    }

    @Override // defpackage.ConstraintWidget
    public void s() {
        this.aH.clear();
        super.s();
    }

    @Override // defpackage.ConstraintWidget
    public final void u(SolverCache vmVar) {
        super.u(vmVar);
        int size = this.aH.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((ConstraintWidget) this.aH.get(NavInstructionTypeEnum)).u(vmVar);
        }
    }
}
