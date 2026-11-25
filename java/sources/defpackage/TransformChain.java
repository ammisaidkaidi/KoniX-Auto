package defpackage;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TransformChain implements MobStoreTransform {
    public BackendStreamPair[] a;

    @Override // defpackage.MobStoreTransform
    public final /* bridge */ /* synthetic */ Object a(BackendFileSpec chkVar) {
        OutputStream j = chkVar.a.j(chkVar.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ProtoMessageTwoIntsAndFlagValue);
        if (!chkVar.c.isEmpty()) {
            List list = chkVar.c;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MobStoreOutputChannel b = ((MobStoreChannelFactory) it.next()).b();
                if (ProtoLiteMessageBase != null) {
                    arrayList2.add(ProtoLiteMessageBase);
                }
            }
            MobStoreOutputStream chiVar = !arrayList2.isEmpty() ? new MobStoreOutputStream(j, arrayList2) : null;
            if (chiVar != null) {
                arrayList.add(chiVar);
            }
        }
        for (DataStoreFileBackend cilVar : chkVar.b) {
            arrayList.add(cilVar.d());
        }
        Collections.reverse(arrayList);
        BackendStreamPair[] chsVarArr = this.a;
        if (chsVarArr != null) {
            BackendStreamPair chsVar = chsVarArr[0];
            OutputStream outputStream = (OutputStream) GuavaCollectPreconditionsUtil.I(arrayList);
            if (outputStream instanceof OutputStreamFileHandle) {
                chsVar.b = (OutputStreamFileHandle) outputStream;
                chsVar.a = (OutputStream) arrayList.get(0);
            }
        }
        return (OutputStream) arrayList.get(0);
    }
}
