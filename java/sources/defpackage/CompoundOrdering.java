package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompoundOrdering extends GuavaOrdering implements Serializable {
    static final GuavaOrdering a = new CompoundOrdering();
    private static final long serialVersionUID = 0;

    private CompoundOrdering() {
    }

    @Override // defpackage.GuavaOrdering, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        GuavaRange crvVar = (GuavaRange) obj;
        GuavaRange crvVar2 = (GuavaRange) obj2;
        return GuavaComparisonChain.b.b(crvVar.b, crvVar2.b).b(crvVar.c, crvVar2.c).a();
    }
}
