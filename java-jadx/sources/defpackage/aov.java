package defpackage;

import android.support.v7.widget.GridLayoutManager;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aov extends GridLayoutManager {
    final /* synthetic */ aox F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aov(aox aoxVar, int i, int i2, boolean z) {
        super(i, i2, z);
        this.F = aoxVar;
    }

    @Override // android.support.v7.widget.GridLayoutManager, android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final void o(ro roVar) {
        super.o(roVar);
        Iterator it = new HashSet(this.F.c).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
