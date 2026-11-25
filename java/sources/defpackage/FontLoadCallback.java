package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontLoadCallback implements SimpleCallbackInterfaceGc {
    final /* synthetic */ String a;

    public FontLoadCallback(String str) {
        this.a = str;
    }

    @Override // defpackage.SimpleCallbackInterfaceGc
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        synchronized (yk.c) {
            ArrayList arrayList = (ArrayList) yk.d.get(this.a);
            if (arrayList == null) {
                return;
            }
            yk.d.remove(this.a);
            for (int i = 0; NavInstructionTypeEnum < arrayList.size(); i++) {
                ((SimpleCallbackInterfaceGc) arrayList.get(NavInstructionTypeEnum)).a(obj);
            }
        }
    }
}
