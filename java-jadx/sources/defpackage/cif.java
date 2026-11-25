package defpackage;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cif implements chl {
    public chs[] a;

    @Override // defpackage.chl
    public final /* bridge */ /* synthetic */ Object a(chk chkVar) {
        OutputStream j = chkVar.a.j(chkVar.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(j);
        if (!chkVar.c.isEmpty()) {
            List list = chkVar.c;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                cij b = ((cik) it.next()).b();
                if (b != null) {
                    arrayList2.add(b);
                }
            }
            chi chiVar = !arrayList2.isEmpty() ? new chi(j, arrayList2) : null;
            if (chiVar != null) {
                arrayList.add(chiVar);
            }
        }
        for (cil cilVar : chkVar.b) {
            arrayList.add(cilVar.d());
        }
        Collections.reverse(arrayList);
        chs[] chsVarArr = this.a;
        if (chsVarArr != null) {
            chs chsVar = chsVarArr[0];
            OutputStream outputStream = (OutputStream) fv.I(arrayList);
            if (outputStream instanceof chz) {
                chsVar.b = (chz) outputStream;
                chsVar.a = (OutputStream) arrayList.get(0);
            }
        }
        return (OutputStream) arrayList.get(0);
    }
}
