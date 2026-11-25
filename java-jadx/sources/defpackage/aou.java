package defpackage;

import android.support.v7.widget.LinearLayoutManager;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aou extends LinearLayoutManager {
    final /* synthetic */ aox a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aou(aox aoxVar, int i, boolean z) {
        super(i, z);
        this.a = aoxVar;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, defpackage.ra
    public final void o(ro roVar) {
        super.o(roVar);
        Iterator it = new HashSet(this.a.c).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
