package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ou implements Runnable {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ qv b;
    private final /* synthetic */ int c;

    public ou(qv qvVar, ArrayList arrayList, int i) {
        this.c = i;
        this.b = qvVar;
        this.a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        float f = 0.0f;
        switch (this.c) {
            case 0:
                ArrayList arrayList = this.a;
                int size = arrayList.size();
                while (i < size) {
                    pa paVar = (pa) arrayList.get(i);
                    qv qvVar = this.b;
                    rr rrVar = paVar.a;
                    View view = rrVar == null ? null : rrVar.itemView;
                    rr rrVar2 = paVar.b;
                    View view2 = rrVar2 != null ? rrVar2.itemView : null;
                    if (view != null) {
                        ViewPropertyAnimator duration = view.animate().setDuration(250L);
                        qvVar.l.add(paVar.a);
                        duration.translationX(paVar.e - paVar.c);
                        duration.translationY(paVar.f - paVar.d);
                        duration.alpha(0.0f).setListener(new oy(qvVar, paVar, duration, view)).start();
                    }
                    if (view2 != null) {
                        ViewPropertyAnimator animate = view2.animate();
                        qvVar.l.add(paVar.b);
                        animate.translationX(0.0f).translationY(0.0f).setDuration(250L).alpha(1.0f).setListener(new oz(qvVar, paVar, animate, view2)).start();
                    }
                    i++;
                }
                this.a.clear();
                this.b.h.remove(this.a);
                break;
            case 1:
                ArrayList arrayList2 = this.a;
                int size2 = arrayList2.size();
                while (i < size2) {
                    pb pbVar = (pb) arrayList2.get(i);
                    qv qvVar2 = this.b;
                    rr rrVar3 = pbVar.a;
                    int i2 = pbVar.b;
                    int i3 = pbVar.c;
                    int i4 = pbVar.d;
                    int i5 = pbVar.e;
                    View view3 = rrVar3.itemView;
                    int i6 = i4 - i2;
                    int i7 = i5 - i3;
                    if (i6 != 0) {
                        view3.animate().translationX(f);
                    }
                    if (i7 != 0) {
                        view3.animate().translationY(f);
                    }
                    ViewPropertyAnimator animate2 = view3.animate();
                    qvVar2.j.add(rrVar3);
                    animate2.setDuration(250L).setListener(new ox(qvVar2, rrVar3, i6, view3, i7, animate2)).start();
                    i++;
                    f = 0.0f;
                }
                this.a.clear();
                this.b.g.remove(this.a);
                break;
            default:
                ArrayList arrayList3 = this.a;
                int size3 = arrayList3.size();
                while (i < size3) {
                    rr rrVar4 = (rr) arrayList3.get(i);
                    qv qvVar3 = this.b;
                    View view4 = rrVar4.itemView;
                    ViewPropertyAnimator animate3 = view4.animate();
                    qvVar3.i.add(rrVar4);
                    animate3.alpha(1.0f).setDuration(120L).setListener(new ow(qvVar3, rrVar4, view4, animate3)).start();
                    i++;
                }
                this.a.clear();
                this.b.f.remove(this.a);
                break;
        }
    }
}
