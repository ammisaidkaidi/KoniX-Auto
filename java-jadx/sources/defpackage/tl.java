package defpackage;

import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class tl {
    final /* synthetic */ cr c;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public boolean a = false;

    public tl(cr crVar) {
        this.c = crVar;
    }

    public final void a(td tdVar) {
        this.b.add(tdVar);
    }

    public final void b(td tdVar) {
        this.b.remove(tdVar);
    }

    public tl() {
    }
}
