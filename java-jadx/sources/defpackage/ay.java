package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ay implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ dl b;

    public ay(List list, dl dlVar) {
        this.a = list;
        this.b = dlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.contains(this.b)) {
            this.a.remove(this.b);
            dm.f(this.b);
        }
    }
}
