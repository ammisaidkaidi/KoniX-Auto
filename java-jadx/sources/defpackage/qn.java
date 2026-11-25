package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class qn implements Runnable {
    final /* synthetic */ RecyclerView a;

    public qn(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        qv qvVar = this.a.B;
        if (qvVar != null) {
            boolean isEmpty = qvVar.b.isEmpty();
            boolean z = !isEmpty;
            boolean isEmpty2 = qvVar.d.isEmpty();
            boolean z2 = !isEmpty2;
            boolean z3 = !qvVar.e.isEmpty();
            boolean z4 = !qvVar.c.isEmpty();
            if (!z && !z2 && !z4) {
                if (z3) {
                    z3 = true;
                }
            }
            ArrayList arrayList = qvVar.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                rr rrVar = (rr) arrayList.get(i);
                View view = rrVar.itemView;
                ViewPropertyAnimator animate = view.animate();
                qvVar.k.add(rrVar);
                animate.setDuration(120L).alpha(0.0f).setListener(new ov(qvVar, rrVar, animate, view)).start();
            }
            qvVar.b.clear();
            if (z2) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(qvVar.d);
                qvVar.g.add(arrayList2);
                qvVar.d.clear();
                ou ouVar = new ou(qvVar, arrayList2, 1);
                if (z) {
                    hs.s(((pb) arrayList2.get(0)).a.itemView, ouVar, 120L);
                } else {
                    ouVar.run();
                }
            }
            if (z3) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(qvVar.e);
                qvVar.h.add(arrayList3);
                qvVar.e.clear();
                ou ouVar2 = new ou(qvVar, arrayList3, 0);
                if (z) {
                    j = 120;
                    hs.s(((pa) arrayList3.get(0)).a.itemView, ouVar2, 120L);
                } else {
                    j = 120;
                    ouVar2.run();
                }
            } else {
                j = 120;
            }
            if (z4) {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.addAll(qvVar.c);
                qvVar.f.add(arrayList4);
                qvVar.c.clear();
                ou ouVar3 = new ou(qvVar, arrayList4, 2);
                if (z || z2 || z3) {
                    if (true == isEmpty) {
                        j = 0;
                    }
                    hs.s(((rr) arrayList4.get(0)).itemView, ouVar3, j + Math.max(true != isEmpty2 ? 250L : 0L, true == z3 ? 250L : 0L));
                } else {
                    ouVar3.run();
                }
            }
        }
        this.a.K = false;
    }
}
