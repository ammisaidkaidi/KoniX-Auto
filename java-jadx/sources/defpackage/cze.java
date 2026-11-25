package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cze extends cyw {
    private List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cze(cqa cqaVar) {
        super(cqaVar, false, true);
        List emptyList = cqaVar.isEmpty() ? Collections.emptyList() : fv.F(cqaVar.size());
        for (int i = 0; i < cqaVar.size(); i++) {
            emptyList.add(null);
        }
        this.c = emptyList;
        r();
    }

    @Override // defpackage.cyw
    public final void n(int i, Object obj) {
        List list = this.c;
        if (list != null) {
            list.set(i, new czd(obj));
        }
    }

    @Override // defpackage.cyw
    public final void q() {
        List<czd> list = this.c;
        if (list != null) {
            ArrayList F = fv.F(list.size());
            for (czd czdVar : list) {
                F.add(czdVar != null ? czdVar.a : null);
            }
            k(Collections.unmodifiableList(F));
        }
    }

    @Override // defpackage.cyw
    public final void s(int i) {
        super.s(i);
        this.c = null;
    }
}
