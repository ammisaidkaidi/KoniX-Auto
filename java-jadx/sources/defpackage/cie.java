package defpackage;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cie implements chl {
    public static final InputStream b(chk chkVar) {
        InputStream d = chkVar.a.d(chkVar.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(d);
        if (!chkVar.c.isEmpty()) {
            List list = chkVar.c;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                cii a = ((cik) it.next()).a();
                if (a != null) {
                    arrayList2.add(a);
                }
            }
            chh chhVar = !arrayList2.isEmpty() ? new chh(d, arrayList2) : null;
            if (chhVar != null) {
                arrayList.add(chhVar);
            }
        }
        for (cil cilVar : chkVar.b) {
            arrayList.add(cilVar.c());
        }
        Collections.reverse(arrayList);
        return (InputStream) arrayList.get(0);
    }

    @Override // defpackage.chl
    public final /* bridge */ /* synthetic */ Object a(chk chkVar) {
        return b(chkVar);
    }
}
