package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class rh {
    public final ArrayList a;
    public ArrayList b;
    public final ArrayList c;
    public final List d;
    int e;
    rg f;
    public final /* synthetic */ RecyclerView g;

    public rh(RecyclerView recyclerView) {
        this.g = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        this.b = null;
        this.c = new ArrayList();
        this.d = Collections.unmodifiableList(arrayList);
        this.e = 2;
    }

    public final int a(int i) {
        if (i >= 0 && i < this.g.H.a()) {
            RecyclerView recyclerView = this.g;
            return !recyclerView.H.g ? i : recyclerView.e.a(i);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + this.g.H.a() + this.g.k());
    }

    public final rg b() {
        if (this.f == null) {
            this.f = new rg();
        }
        return this.f;
    }

    public final View c(int i) {
        return n(i, Long.MAX_VALUE).itemView;
    }

    final void d(rr rrVar, boolean z) {
        RecyclerView.s(rrVar);
        View view = rrVar.itemView;
        rt rtVar = this.g.L;
        if (rtVar != null) {
            gh k = rtVar.k();
            hs.u(view, k instanceof rs ? (gh) ((rs) k).c.remove(view) : null);
        }
        if (z) {
            int size = this.g.m.size();
            for (int i = 0; i < size; i++) {
                ((ri) this.g.m.get(i)).a();
            }
            qq qqVar = this.g.k;
            if (qqVar != null) {
                qqVar.onViewRecycled(rrVar);
            }
            RecyclerView recyclerView = this.g;
            if (recyclerView.H != null) {
                recyclerView.g.h(rrVar);
            }
        }
        rrVar.mBindingAdapter = null;
        rrVar.mOwnerRecyclerView = null;
        rg b = b();
        int itemViewType = rrVar.getItemViewType();
        ArrayList arrayList = b.a(itemViewType).a;
        int i2 = ((rf) b.a.get(itemViewType)).b;
        if (arrayList.size() >= 5) {
            return;
        }
        rrVar.resetInternal();
        arrayList.add(rrVar);
    }

    public final void e() {
        this.a.clear();
        g();
    }

    final void f(View view) {
        rr h = RecyclerView.h(view);
        h.mScrapContainer = null;
        h.mInChangeScrap = false;
        h.clearReturnedFromScrapFlag();
        j(h);
    }

    public final void g() {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            h(size);
        }
        this.c.clear();
        int i = RecyclerView.O;
        this.g.G.b();
    }

    public final void h(int i) {
        d((rr) this.c.get(i), true);
        this.c.remove(i);
    }

    public final void i(View view) {
        rr h = RecyclerView.h(view);
        if (h.isTmpDetached()) {
            this.g.removeDetachedView(view, false);
        }
        if (h.isScrap()) {
            h.unScrap();
        } else if (h.wasReturnedFromScrap()) {
            h.clearReturnedFromScrapFlag();
        }
        j(h);
        if (this.g.B == null || h.isRecyclable()) {
            return;
        }
        this.g.B.h(h);
    }

    final void j(rr rrVar) {
        boolean z;
        boolean z2 = false;
        if (rrVar.isScrap() || rrVar.itemView.getParent() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(rrVar.isScrap());
            sb.append(" isAttached:");
            sb.append(rrVar.itemView.getParent() != null);
            sb.append(this.g.k());
            throw new IllegalArgumentException(sb.toString());
        }
        if (rrVar.isTmpDetached()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + rrVar + this.g.k());
        }
        if (rrVar.shouldIgnore()) {
            throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.".concat(this.g.k()));
        }
        boolean doesTransientStatePreventRecycling = rrVar.doesTransientStatePreventRecycling();
        qq qqVar = this.g.k;
        if ((qqVar != null && doesTransientStatePreventRecycling && qqVar.onFailedToRecycleView(rrVar)) || rrVar.isRecyclable()) {
            if (this.e <= 0 || rrVar.hasAnyOfTheFlags(526)) {
                z = false;
            } else {
                int size = this.c.size();
                if (size >= this.e && size > 0) {
                    h(0);
                    size--;
                }
                if (size > 0 && !this.g.G.d(rrVar.mPosition)) {
                    int i = size - 1;
                    while (i >= 0) {
                        if (!this.g.G.d(((rr) this.c.get(i)).mPosition)) {
                            break;
                        } else {
                            i--;
                        }
                    }
                    size = i + 1;
                }
                this.c.add(size, rrVar);
                z = true;
            }
            if (z) {
                z2 = z;
                r1 = false;
            } else {
                d(rrVar, true);
                z2 = z;
            }
        } else {
            r1 = false;
        }
        this.g.g.h(rrVar);
        if (z2 || r1 || !doesTransientStatePreventRecycling) {
            return;
        }
        rrVar.mBindingAdapter = null;
        rrVar.mOwnerRecyclerView = null;
    }

    final void k(View view) {
        rr h = RecyclerView.h(view);
        if (!h.hasAnyOfTheFlags(12) && h.isUpdated() && this.g.B != null && h.getUnmodifiedPayloads().isEmpty() && !h.isInvalid()) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            h.setScrapContainer(this, true);
            this.b.add(h);
            return;
        }
        if (h.isInvalid() && !h.isRemoved() && !this.g.k.hasStableIds()) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(this.g.k()));
        }
        h.setScrapContainer(this, false);
        this.a.add(h);
    }

    public final void l(rr rrVar) {
        if (rrVar.mInChangeScrap) {
            this.b.remove(rrVar);
        } else {
            this.a.remove(rrVar);
        }
        rrVar.mScrapContainer = null;
        rrVar.mInChangeScrap = false;
        rrVar.clearReturnedFromScrapFlag();
    }

    public final void m() {
        ra raVar = this.g.l;
        this.e = (raVar != null ? raVar.z : 0) + 2;
        for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.e; size--) {
            h(size);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:227:0x046d, code lost:
    
        if ((r11 + r6) >= r22) goto L220;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x022f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final rr n(int i, long j) {
        boolean z;
        rr rrVar;
        boolean z2;
        boolean z3;
        ViewGroup.LayoutParams layoutParams;
        rr rrVar2;
        View view;
        int a;
        if (i < 0 || i >= this.g.H.a()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + this.g.H.a() + this.g.k());
        }
        int i2 = 32;
        if (this.g.H.g) {
            ArrayList arrayList = this.b;
            if (arrayList != null) {
                int size = arrayList.size();
                if (size != 0) {
                    int i3 = 0;
                    while (true) {
                        if (i3 < size) {
                            rrVar = (rr) this.b.get(i3);
                            if (!rrVar.wasReturnedFromScrap() && rrVar.getLayoutPosition() == i) {
                                rrVar.addFlags(32);
                                break;
                            }
                            i3++;
                        } else if (this.g.k.hasStableIds() && (a = this.g.e.a(i)) > 0 && a < this.g.k.getItemCount()) {
                            long itemId = this.g.k.getItemId(a);
                            for (int i4 = 0; i4 < size; i4++) {
                                rr rrVar3 = (rr) this.b.get(i4);
                                if (!rrVar3.wasReturnedFromScrap() && rrVar3.getItemId() == itemId) {
                                    rrVar3.addFlags(32);
                                    rrVar = rrVar3;
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    rrVar = null;
                }
                z = rrVar == null;
            }
            rrVar = null;
            if (rrVar == null) {
            }
        } else {
            z = false;
            rrVar = null;
        }
        if (rrVar == null) {
            int size2 = this.a.size();
            for (int i5 = 0; i5 < size2; i5++) {
                rr rrVar4 = (rr) this.a.get(i5);
                if (!rrVar4.wasReturnedFromScrap() && rrVar4.getLayoutPosition() == i && !rrVar4.isInvalid() && (this.g.H.g || !rrVar4.isRemoved())) {
                    rrVar4.addFlags(32);
                    rrVar = rrVar4;
                    break;
                }
            }
            or orVar = this.g.f;
            int size3 = orVar.b.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size3) {
                    view = null;
                    break;
                }
                view = (View) orVar.b.get(i6);
                qw qwVar = orVar.c;
                rr h = RecyclerView.h(view);
                if (h.getLayoutPosition() == i && !h.isInvalid() && !h.isRemoved()) {
                    break;
                }
                i6++;
            }
            if (view == null) {
                int size4 = this.c.size();
                int i7 = 0;
                while (true) {
                    if (i7 >= size4) {
                        rrVar = null;
                        break;
                    }
                    rr rrVar5 = (rr) this.c.get(i7);
                    if (!rrVar5.isInvalid() && rrVar5.getLayoutPosition() == i && !rrVar5.isAttachedToTransitionOverlay()) {
                        this.c.remove(i7);
                        rrVar = rrVar5;
                        break;
                    }
                    i7++;
                }
            } else {
                rrVar = RecyclerView.h(view);
                or orVar2 = this.g.f;
                int h2 = orVar2.c.h(view);
                if (h2 < 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("view is not a child, cannot hide ");
                    sb.append(view);
                    throw new IllegalArgumentException("view is not a child, cannot hide ".concat(view.toString()));
                }
                if (!orVar2.a.f(h2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("trying to unhide a view that was not hidden");
                    sb2.append(view);
                    throw new RuntimeException("trying to unhide a view that was not hidden".concat(view.toString()));
                }
                orVar2.a.b(h2);
                orVar2.l(view);
                int d = this.g.f.d(view);
                if (d == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + rrVar + this.g.k());
                }
                this.g.f.i(d);
                k(view);
                rrVar.addFlags(8224);
            }
            if (rrVar != null) {
                if (rrVar.isRemoved()) {
                    if (this.g.H.g) {
                        z = true;
                    }
                    rrVar.addFlags(4);
                    if (!rrVar.isScrap()) {
                        this.g.removeDetachedView(rrVar.itemView, false);
                        rrVar.unScrap();
                    } else if (rrVar.wasReturnedFromScrap()) {
                        rrVar.clearReturnedFromScrapFlag();
                    }
                    j(rrVar);
                    rrVar = null;
                } else {
                    int i8 = rrVar.mPosition;
                    if (i8 < 0 || i8 >= this.g.k.getItemCount()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + rrVar + this.g.k());
                    }
                    RecyclerView recyclerView = this.g;
                    if ((recyclerView.H.g || recyclerView.k.getItemViewType(rrVar.mPosition) == rrVar.getItemViewType()) && (!this.g.k.hasStableIds() || rrVar.getItemId() == this.g.k.getItemId(rrVar.mPosition))) {
                        z = true;
                    }
                    rrVar.addFlags(4);
                    if (!rrVar.isScrap()) {
                    }
                    j(rrVar);
                    rrVar = null;
                }
            }
        }
        if (rrVar == null) {
            int a2 = this.g.e.a(i);
            if (a2 < 0 || a2 >= this.g.k.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + a2 + ").state:" + this.g.H.a() + this.g.k());
            }
            int itemViewType = this.g.k.getItemViewType(a2);
            if (this.g.k.hasStableIds()) {
                long itemId2 = this.g.k.getItemId(a2);
                int size5 = this.a.size() - 1;
                while (true) {
                    if (size5 >= 0) {
                        rr rrVar6 = (rr) this.a.get(size5);
                        if (rrVar6.getItemId() == itemId2 && !rrVar6.wasReturnedFromScrap()) {
                            if (itemViewType == rrVar6.getItemViewType()) {
                                rrVar6.addFlags(i2);
                                if (rrVar6.isRemoved() && !this.g.H.g) {
                                    rrVar6.setFlags(2, 14);
                                }
                                rrVar = rrVar6;
                            } else {
                                this.a.remove(size5);
                                this.g.removeDetachedView(rrVar6.itemView, false);
                                f(rrVar6.itemView);
                            }
                        }
                        size5--;
                        i2 = 32;
                    } else {
                        int size6 = this.c.size() - 1;
                        while (true) {
                            if (size6 < 0) {
                                break;
                            }
                            rr rrVar7 = (rr) this.c.get(size6);
                            if (rrVar7.getItemId() != itemId2 || rrVar7.isAttachedToTransitionOverlay()) {
                                size6--;
                            } else if (itemViewType == rrVar7.getItemViewType()) {
                                this.c.remove(size6);
                                rrVar = rrVar7;
                            } else {
                                h(size6);
                            }
                        }
                        rrVar = null;
                    }
                }
                if (rrVar != null) {
                    rrVar.mPosition = a2;
                    z = true;
                }
            }
            if (rrVar == null) {
                rf rfVar = (rf) b().a.get(itemViewType);
                if (rfVar != null && !rfVar.a.isEmpty()) {
                    ArrayList arrayList2 = rfVar.a;
                    for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                        if (!((rr) arrayList2.get(size7)).isAttachedToTransitionOverlay()) {
                            rrVar2 = (rr) arrayList2.remove(size7);
                            break;
                        }
                    }
                }
                rrVar2 = null;
                if (rrVar2 != null) {
                    rrVar2.resetInternal();
                }
                rrVar = rrVar2;
            }
            if (rrVar == null) {
                long nanoTime = System.nanoTime();
                if (j != Long.MAX_VALUE) {
                    long j2 = this.f.a(itemViewType).c;
                    if (j2 != 0 && j2 + nanoTime >= j) {
                        return null;
                    }
                }
                RecyclerView recyclerView2 = this.g;
                rrVar = recyclerView2.k.createViewHolder(recyclerView2, itemViewType);
                RecyclerView i9 = RecyclerView.i(rrVar.itemView);
                if (i9 != null) {
                    rrVar.mNestedRecyclerView = new WeakReference(i9);
                }
                long nanoTime2 = System.nanoTime();
                rf a3 = this.f.a(itemViewType);
                a3.c = rg.b(a3.c, nanoTime2 - nanoTime);
            }
        }
        if (z && !this.g.H.g && rrVar.hasAnyOfTheFlags(8192)) {
            rrVar.setFlags(0, 8192);
            if (this.g.H.j) {
                qv.d(rrVar);
                rrVar.getUnmodifiedPayloads();
                this.g.R(rrVar, qv.e(rrVar));
            }
        }
        if (this.g.H.g && rrVar.isBound()) {
            rrVar.mPreLayoutPosition = i;
            z3 = false;
            z2 = true;
        } else {
            if (!rrVar.isBound() || rrVar.needsUpdate() || rrVar.isInvalid()) {
                int a4 = this.g.e.a(i);
                rrVar.mBindingAdapter = null;
                rrVar.mOwnerRecyclerView = this.g;
                int itemViewType2 = rrVar.getItemViewType();
                long nanoTime3 = System.nanoTime();
                if (j != Long.MAX_VALUE) {
                    long j3 = this.f.a(itemViewType2).d;
                    if (j3 != 0) {
                    }
                }
                this.g.k.bindViewHolder(rrVar, a4);
                long nanoTime4 = System.nanoTime();
                rf a5 = this.f.a(rrVar.getItemViewType());
                a5.d = rg.b(a5.d, nanoTime4 - nanoTime3);
                if (this.g.aj()) {
                    View view2 = rrVar.itemView;
                    if (hs.a(view2) == 0) {
                        z2 = true;
                        hs.z(view2, 1);
                    } else {
                        z2 = true;
                    }
                    rt rtVar = this.g.L;
                    if (rtVar != null) {
                        gh k = rtVar.k();
                        if (k instanceof rs) {
                            rs rsVar = (rs) k;
                            gh i10 = hs.i(view2);
                            if (i10 != null && i10 != rsVar) {
                                rsVar.c.put(view2, i10);
                            }
                        }
                        hs.u(view2, k);
                    }
                } else {
                    z2 = true;
                }
                if (this.g.H.g) {
                    rrVar.mPreLayoutPosition = i;
                }
                z3 = true;
            }
            z3 = false;
            z2 = true;
        }
        ViewGroup.LayoutParams layoutParams2 = rrVar.itemView.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = this.g.generateDefaultLayoutParams();
            rrVar.itemView.setLayoutParams(layoutParams);
        } else if (this.g.checkLayoutParams(layoutParams2)) {
            layoutParams = (rb) layoutParams2;
        } else {
            layoutParams = this.g.generateLayoutParams(layoutParams2);
            rrVar.itemView.setLayoutParams(layoutParams);
        }
        rb rbVar = (rb) layoutParams;
        rbVar.c = rrVar;
        if (!z || !z3) {
            z2 = false;
        }
        rbVar.f = z2;
        return rrVar;
    }
}
