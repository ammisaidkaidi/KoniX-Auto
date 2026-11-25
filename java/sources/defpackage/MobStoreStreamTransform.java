package defpackage;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MobStoreStreamTransform implements MobStoreTransform {
    public static final InputStream b(BackendFileSpec chkVar) {
        InputStream d = chkVar.a.d(chkVar.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ProtoMsgIntStringInt);
        if (!chkVar.c.isEmpty()) {
            List list = chkVar.c;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MobStoreInputChannel a = ((MobStoreChannelFactory) it.next()).a();
                if (SingleStringProtoMessage != null) {
                    arrayList2.add(SingleStringProtoMessage);
                }
            }
            MobStoreInputStream chhVar = !arrayList2.isEmpty() ? new MobStoreInputStream(d, arrayList2) : null;
            if (chhVar != null) {
                arrayList.add(chhVar);
            }
        }
        for (DataStoreFileBackend cilVar : chkVar.b) {
            arrayList.add(cilVar.c());
        }
        Collections.reverse(arrayList);
        return (InputStream) arrayList.get(0);
    }

    @Override // defpackage.MobStoreTransform
    public final /* bridge */ /* synthetic */ Object a(BackendFileSpec chkVar) {
        return b(chkVar);
    }
}
