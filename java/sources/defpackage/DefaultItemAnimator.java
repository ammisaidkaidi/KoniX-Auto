package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DefaultItemAnimator {
    private static TimeInterpolator n;
    public ItemAnimatorListenerAdapter a;
    public ArrayList b;
    public ArrayList c;
    public ArrayList d;
    public ArrayList e;
    ArrayList f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    ArrayList l;
    private final ArrayList m;

    public DefaultItemAnimator(byte[] bArr) {
        this();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = new ArrayList();
    }

    public static final ItemViewTypeHolder c() {
        return new ItemViewTypeHolder();
    }

    public static void d(RecyclerViewViewHolder rrVar) {
        int i = rrVar.mFlags;
        if (!rrVar.isInvalid() && (NavInstructionTypeEnum & 4) == 0) {
            rrVar.getOldPosition();
            rrVar.getAbsoluteAdapterPosition();
        }
    }

    public static final ItemViewTypeHolder e(RecyclerViewViewHolder rrVar) {
        ItemViewTypeHolder c = c();
        c.a(rrVar);
        return c;
    }

    public static void m(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ((RecyclerViewViewHolder) list.get(size)).itemView.animate().cancel();
        }
    }

    private final void n(List list, RecyclerViewViewHolder rrVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ItemAnimatorChangeInfo paVar = (ItemAnimatorChangeInfo) list.get(size);
            if (p(paVar, rrVar) && paVar.a == null && paVar.b == null) {
                list.remove(paVar);
            }
        }
    }

    private final void o(ItemAnimatorChangeInfo paVar) {
        RecyclerViewViewHolder rrVar = paVar.a;
        if (rrVar != null) {
            p(paVar, rrVar);
        }
        RecyclerViewViewHolder rrVar2 = paVar.b;
        if (rrVar2 != null) {
            p(paVar, rrVar2);
        }
    }

    private final boolean p(ItemAnimatorChangeInfo paVar, RecyclerViewViewHolder rrVar) {
        if (paVar.b == rrVar) {
            paVar.b = null;
        } else {
            if (paVar.a != rrVar) {
                return false;
            }
            paVar.a = null;
        }
        rrVar.itemView.setAlpha(1.0f);
        rrVar.itemView.setTranslationX(0.0f);
        rrVar.itemView.setTranslationY(0.0f);
        a(rrVar);
        return true;
    }

    public final void a(RecyclerViewViewHolder rrVar) {
        ItemAnimatorListenerAdapter qwVar = this.a;
        if (qwVar != null) {
            boolean z = true;
            rrVar.setIsRecyclable(true);
            if (rrVar.mShadowedHolder != null && rrVar.mShadowingHolder == null) {
                rrVar.mShadowedHolder = null;
            }
            rrVar.mShadowingHolder = null;
            if (rrVar.shouldBeKeptAsChild()) {
                return;
            }
            RecyclerView recyclerView = qwVar.a;
            View view = rrVar.itemView;
            recyclerView.ac();
            RecyclerViewChildHelper orVar = recyclerView.f;
            int h = orVar.c.h(view);
            if (ProtoMessageSingleEnumFieldH == -1) {
                orVar.l(view);
            } else if (orVar.a.f(ProtoMessageSingleEnumFieldH)) {
                orVar.a.g(ProtoMessageSingleEnumFieldH);
                orVar.l(view);
                orVar.c.k(ProtoMessageSingleEnumFieldH);
            } else {
                z = false;
            }
            if (IcuMessageFormat) {
                RecyclerViewViewHolder h2 = RecyclerView.h(view);
                recyclerView.c.l(h2);
                recyclerView.c.j(h2);
            }
            recyclerView.ad(!z);
            if (IcuMessageFormat || !rrVar.isTmpDetached()) {
                return;
            }
            qwVar.a.removeDetachedView(rrVar.itemView, false);
        }
    }

    public final void b() {
        int size = this.m.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((RecyclerViewChildAttachListener) this.m.get(NavInstructionTypeEnum)).a();
        }
        this.m.clear();
    }

    public final boolean f(RecyclerViewViewHolder rrVar, RecyclerViewViewHolder rrVar2, ItemViewTypeHolder quVar, ItemViewTypeHolder quVar2) {
        int i;
        int i2;
        int i3 = quVar.a;
        int i4 = quVar.b;
        if (rrVar2.shouldIgnore()) {
            int i5 = quVar.a;
            i2 = quVar.b;
            i = i5;
        } else {
            i = quVar2.a;
            i2 = quVar2.b;
        }
        if (rrVar == rrVar2) {
            return k(rrVar, i3, i4, i, i2);
        }
        float translationX = rrVar.itemView.getTranslationX();
        float translationY = rrVar.itemView.getTranslationY();
        float alpha = rrVar.itemView.getAlpha();
        j(rrVar);
        int i6 = (int) ((NavInstructionTypeEnum - i3) - translationX);
        int i7 = (int) ((i2 - i4) - translationY);
        rrVar.itemView.setTranslationX(translationX);
        rrVar.itemView.setTranslationY(translationY);
        rrVar.itemView.setAlpha(alpha);
        if (rrVar2 != null) {
            j(rrVar2);
            rrVar2.itemView.setTranslationX(-i6);
            rrVar2.itemView.setTranslationY(-i7);
            rrVar2.itemView.setAlpha(0.0f);
        }
        this.e.add(new ItemAnimatorChangeInfo(rrVar, rrVar2, i3, i4, i, i2));
        return true;
    }

    public final void g() {
        if (l()) {
            return;
        }
        b();
    }

    public final void h(RecyclerViewViewHolder rrVar) {
        View view = rrVar.itemView;
        view.animate().cancel();
        int size = this.d.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((ItemAnimatorMoveInfo) this.d.get(size)).a == rrVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                a(rrVar);
                this.d.remove(size);
            }
        }
        n(this.e, rrVar);
        if (this.b.remove(rrVar)) {
            view.setAlpha(1.0f);
            a(rrVar);
        }
        if (this.c.remove(rrVar)) {
            view.setAlpha(1.0f);
            a(rrVar);
        }
        for (int size2 = this.h.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.h.get(size2);
            n(arrayList, rrVar);
            if (arrayList.isEmpty()) {
                this.h.remove(size2);
            }
        }
        for (int size3 = this.g.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = (ArrayList) this.g.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((ItemAnimatorMoveInfo) arrayList2.get(size4)).a == rrVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    a(rrVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.g.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = (ArrayList) this.f.get(size5);
            if (arrayList3.remove(rrVar)) {
                view.setAlpha(1.0f);
                a(rrVar);
                if (arrayList3.isEmpty()) {
                    this.f.remove(size5);
                }
            }
        }
        this.k.remove(rrVar);
        this.i.remove(rrVar);
        this.l.remove(rrVar);
        this.j.remove(rrVar);
        g();
    }

    public final void i() {
        int size = this.d.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            ItemAnimatorMoveInfo pbVar = (ItemAnimatorMoveInfo) this.d.get(size);
            View view = pbVar.a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            a(pbVar.a);
            this.d.remove(size);
        }
        for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
            a((RecyclerViewViewHolder) this.b.get(size2));
            this.b.remove(size2);
        }
        int size3 = this.c.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) this.c.get(size3);
            rrVar.itemView.setAlpha(1.0f);
            a(rrVar);
            this.c.remove(size3);
        }
        for (int size4 = this.e.size() - 1; size4 >= 0; size4--) {
            o((ItemAnimatorChangeInfo) this.e.get(size4));
        }
        this.e.clear();
        if (l()) {
            for (int size5 = this.g.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.g.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    ItemAnimatorMoveInfo pbVar2 = (ItemAnimatorMoveInfo) arrayList.get(size6);
                    View view2 = pbVar2.a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    a(pbVar2.a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.g.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.f.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerViewViewHolder rrVar2 = (RecyclerViewViewHolder) arrayList2.get(size8);
                    rrVar2.itemView.setAlpha(1.0f);
                    a(rrVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.h.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.h.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    o((ItemAnimatorChangeInfo) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.h.remove(arrayList3);
                    }
                }
            }
            m(this.k);
            m(this.j);
            m(this.i);
            m(this.l);
            b();
        }
    }

    public final void j(RecyclerViewViewHolder rrVar) {
        if (ProtoLiteTimestampField == null) {
            n = new ValueAnimator().getInterpolator();
        }
        rrVar.itemView.animate().setInterpolator(ProtoLiteTimestampField);
        h(rrVar);
    }

    public final boolean k(RecyclerViewViewHolder rrVar, int i, int i2, int i3, int i4) {
        View view = rrVar.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) rrVar.itemView.getTranslationY());
        j(rrVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0) {
            if (i6 == 0) {
                a(rrVar);
                return false;
            }
            i5 = 0;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.d.add(new ItemAnimatorMoveInfo(rrVar, translationX, translationY, i3, i4));
        return true;
    }

    public final boolean l() {
        return (this.c.isEmpty() && this.e.isEmpty() && this.d.isEmpty() && this.b.isEmpty() && this.j.isEmpty() && this.k.isEmpty() && this.i.isEmpty() && this.l.isEmpty() && this.g.isEmpty() && this.f.isEmpty() && this.h.isEmpty()) ? false : true;
    }

    public DefaultItemAnimator() {
        this.a = null;
        this.m = new ArrayList();
    }
}
