package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public class we extends vx {
    public ArrayList aH = new ArrayList();

    public void T() {
        ArrayList arrayList = this.aH;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            vx vxVar = (vx) this.aH.get(i);
            if (vxVar instanceof we) {
                ((we) vxVar).T();
            }
        }
    }

    public final void Y(vx vxVar) {
        this.aH.remove(vxVar);
        vxVar.s();
    }

    @Override // defpackage.vx
    public void s() {
        this.aH.clear();
        super.s();
    }

    @Override // defpackage.vx
    public final void u(vm vmVar) {
        super.u(vmVar);
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            ((vx) this.aH.get(i)).u(vmVar);
        }
    }
}
