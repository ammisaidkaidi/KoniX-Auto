package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewScrollRunnable implements Runnable {
    final /* synthetic */ RecyclerView a;

    public RecyclerViewScrollRunnable(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        DefaultItemAnimator qvVar = this.a.B;
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
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) arrayList.get(NavInstructionTypeEnum);
                View view = rrVar.itemView;
                ViewPropertyAnimator animate = view.animate();
                qvVar.k.add(rrVar);
                animate.setDuration(120L).alpha(0.0f).setListener(new ItemAnimatorMoveListener(qvVar, rrVar, animate, view)).start();
            }
            qvVar.b.clear();
            if (z2) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(qvVar.d);
                qvVar.g.add(arrayList2);
                qvVar.d.clear();
                DefaultItemAnimatorRestoreRunnable ouVar = new DefaultItemAnimatorRestoreRunnable(qvVar, arrayList2, 1);
                if (IcuMessageFormat) {
                    ViewCompatAccessibilityStatics.s(((ItemAnimatorMoveInfo) arrayList2.get(0)).a.itemView, ouVar, 120L);
                } else {
                    ouVar.run();
                }
            }
            if (z3) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(qvVar.e);
                qvVar.h.add(arrayList3);
                qvVar.e.clear();
                DefaultItemAnimatorRestoreRunnable ouVar2 = new DefaultItemAnimatorRestoreRunnable(qvVar, arrayList3, 0);
                if (IcuMessageFormat) {
                    j = 120;
                    ViewCompatAccessibilityStatics.s(((ItemAnimatorChangeInfo) arrayList3.get(0)).a.itemView, ouVar2, 120L);
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
                DefaultItemAnimatorRestoreRunnable ouVar3 = new DefaultItemAnimatorRestoreRunnable(qvVar, arrayList4, 2);
                if (IcuMessageFormat || z2 || z3) {
                    if (true == isEmpty) {
                        j = 0;
                    }
                    ViewCompatAccessibilityStatics.s(((RecyclerViewViewHolder) arrayList4.get(0)).itemView, ouVar3, j + Math.max(true != isEmpty2 ? 250L : 0L, true == z3 ? 250L : 0L));
                } else {
                    ouVar3.run();
                }
            }
        }
        this.a.K = false;
    }
}
