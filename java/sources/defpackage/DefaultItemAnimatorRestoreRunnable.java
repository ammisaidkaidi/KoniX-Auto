package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DefaultItemAnimatorRestoreRunnable implements Runnable {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ DefaultItemAnimator b;
    private final /* synthetic */ int c;

    public DefaultItemAnimatorRestoreRunnable(DefaultItemAnimator qvVar, ArrayList arrayList, int i) {
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
                while (NavInstructionTypeEnum < size) {
                    ItemAnimatorChangeInfo paVar = (ItemAnimatorChangeInfo) arrayList.get(NavInstructionTypeEnum);
                    DefaultItemAnimator qvVar = this.b;
                    RecyclerViewViewHolder rrVar = paVar.a;
                    View view = rrVar == null ? null : rrVar.itemView;
                    RecyclerViewViewHolder rrVar2 = paVar.b;
                    View view2 = rrVar2 != null ? rrVar2.itemView : null;
                    if (view != null) {
                        ViewPropertyAnimator duration = view.animate().setDuration(250L);
                        qvVar.l.add(paVar.a);
                        duration.translationX(paVar.e - paVar.c);
                        duration.translationY(paVar.f - paVar.d);
                        duration.alpha(0.0f).setListener(new ItemAnimatorChangeOldListener(qvVar, paVar, duration, view)).start();
                    }
                    if (view2 != null) {
                        ViewPropertyAnimator animate = view2.animate();
                        qvVar.l.add(paVar.b);
                        animate.translationX(0.0f).translationY(0.0f).setDuration(250L).alpha(1.0f).setListener(new ItemAnimatorChangeNewListener(qvVar, paVar, animate, view2)).start();
                    }
                    i++;
                }
                this.a.clear();
                this.b.h.remove(this.a);
                break;
            case 1:
                ArrayList arrayList2 = this.a;
                int size2 = arrayList2.size();
                while (NavInstructionTypeEnum < size2) {
                    ItemAnimatorMoveInfo pbVar = (ItemAnimatorMoveInfo) arrayList2.get(NavInstructionTypeEnum);
                    DefaultItemAnimator qvVar2 = this.b;
                    RecyclerViewViewHolder rrVar3 = pbVar.a;
                    int i2 = pbVar.b;
                    int i3 = pbVar.c;
                    int i4 = pbVar.d;
                    int i5 = pbVar.e;
                    View view3 = rrVar3.itemView;
                    int i6 = i4 - i2;
                    int i7 = i5 - i3;
                    if (i6 != 0) {
                        view3.animate().translationX(NavManeuverTypeEnum);
                    }
                    if (i7 != 0) {
                        view3.animate().translationY(NavManeuverTypeEnum);
                    }
                    ViewPropertyAnimator animate2 = view3.animate();
                    qvVar2.j.add(rrVar3);
                    animate2.setDuration(250L).setListener(new ItemAnimatorAddListener(qvVar2, rrVar3, i6, view3, i7, animate2)).start();
                    i++;
                    f = 0.0f;
                }
                this.a.clear();
                this.b.g.remove(this.a);
                break;
            default:
                ArrayList arrayList3 = this.a;
                int size3 = arrayList3.size();
                while (NavInstructionTypeEnum < size3) {
                    RecyclerViewViewHolder rrVar4 = (RecyclerViewViewHolder) arrayList3.get(NavInstructionTypeEnum);
                    DefaultItemAnimator qvVar3 = this.b;
                    View view4 = rrVar4.itemView;
                    ViewPropertyAnimator animate3 = view4.animate();
                    qvVar3.i.add(rrVar4);
                    animate3.alpha(1.0f).setDuration(120L).setListener(new ItemAnimatorRemoveListener(qvVar3, rrVar4, view4, animate3)).start();
                    i++;
                }
                this.a.clear();
                this.b.f.remove(this.a);
                break;
        }
    }
}
