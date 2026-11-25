package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class qw {
    public final /* synthetic */ RecyclerView a;

    public qw(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public final rr a(int i) {
        RecyclerView recyclerView = this.a;
        int c = recyclerView.f.c();
        int i2 = 0;
        rr rrVar = null;
        while (true) {
            if (i2 >= c) {
                break;
            }
            rr h = RecyclerView.h(recyclerView.f.f(i2));
            if (h != null && !h.isRemoved() && h.mPosition == i) {
                if (!recyclerView.f.k(h.itemView)) {
                    rrVar = h;
                    break;
                }
                rrVar = h;
            }
            i2++;
        }
        if (rrVar == null || this.a.f.k(rrVar.itemView)) {
            return null;
        }
        return rrVar;
    }

    final void b(ne neVar) {
        switch (neVar.a) {
            case 1:
                this.a.l.v(neVar.b, neVar.d);
                break;
            case 2:
                this.a.l.y(neVar.b, neVar.d);
                break;
            case 4:
                ra raVar = this.a.l;
                int i = neVar.b;
                int i2 = neVar.d;
                Object obj = neVar.c;
                raVar.z(i, i2);
                break;
            case 8:
                this.a.l.x(neVar.b, neVar.d);
                break;
        }
    }

    public final void c(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int c = recyclerView.f.c();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < c; i6++) {
            View f = recyclerView.f.f(i6);
            rr h = RecyclerView.h(f);
            if (h != null && !h.shouldIgnore() && (i4 = h.mPosition) >= i && i4 < i5) {
                h.addFlags(2);
                h.addChangePayload(obj);
                ((rb) f.getLayoutParams()).e = true;
            }
        }
        rh rhVar = recyclerView.c;
        for (int size = rhVar.c.size() - 1; size >= 0; size--) {
            rr rrVar = (rr) rhVar.c.get(size);
            if (rrVar != null && (i3 = rrVar.mPosition) >= i && i3 < i5) {
                rrVar.addFlags(2);
                rhVar.h(size);
            }
        }
        this.a.J = true;
    }

    public final void d(int i, int i2) {
        RecyclerView recyclerView = this.a;
        int c = recyclerView.f.c();
        for (int i3 = 0; i3 < c; i3++) {
            rr h = RecyclerView.h(recyclerView.f.f(i3));
            if (h != null && !h.shouldIgnore() && h.mPosition >= i) {
                h.offsetPosition(i2, false);
                recyclerView.H.f = true;
            }
        }
        rh rhVar = recyclerView.c;
        int size = rhVar.c.size();
        for (int i4 = 0; i4 < size; i4++) {
            rr rrVar = (rr) rhVar.c.get(i4);
            if (rrVar != null && rrVar.mPosition >= i) {
                rrVar.offsetPosition(i2, false);
            }
        }
        recyclerView.requestLayout();
        this.a.I = true;
    }

    public final void e(int i, int i2) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int c = recyclerView.f.c();
        int i5 = i < i2 ? -1 : 1;
        int i6 = i < i2 ? i2 : i;
        int i7 = i < i2 ? i : i2;
        for (int i8 = 0; i8 < c; i8++) {
            rr h = RecyclerView.h(recyclerView.f.f(i8));
            if (h != null && (i4 = h.mPosition) >= i7 && i4 <= i6) {
                if (i4 == i) {
                    h.offsetPosition(i2 - i, false);
                } else {
                    h.offsetPosition(i5, false);
                }
                recyclerView.H.f = true;
            }
        }
        rh rhVar = recyclerView.c;
        int i9 = i >= i2 ? 1 : -1;
        int size = rhVar.c.size();
        for (int i10 = 0; i10 < size; i10++) {
            rr rrVar = (rr) rhVar.c.get(i10);
            if (rrVar != null && (i3 = rrVar.mPosition) >= i7 && i3 <= i6) {
                if (i3 == i) {
                    rrVar.offsetPosition(i2 - i, false);
                } else {
                    rrVar.offsetPosition(i9, false);
                }
            }
        }
        recyclerView.requestLayout();
        this.a.I = true;
    }

    public final void f(int i, int i2) {
        this.a.L(i, i2, true);
        RecyclerView recyclerView = this.a;
        recyclerView.I = true;
        recyclerView.H.c += i2;
    }

    public final int g() {
        return this.a.getChildCount();
    }

    public final int h(View view) {
        return this.a.indexOfChild(view);
    }

    public final View i(int i) {
        return this.a.getChildAt(i);
    }

    public final void j(View view) {
        rr h = RecyclerView.h(view);
        if (h != null) {
            h.onLeftHiddenState(this.a);
        }
    }

    public final void k(int i) {
        View childAt = this.a.getChildAt(i);
        if (childAt != null) {
            this.a.x(childAt);
            childAt.clearAnimation();
        }
        this.a.removeViewAt(i);
    }

    public final void l(rr rrVar, qu quVar, qu quVar2) {
        int i;
        int i2;
        RecyclerView recyclerView = this.a;
        rrVar.setIsRecyclable(false);
        qv qvVar = recyclerView.B;
        if (quVar == null || ((i = quVar.a) == (i2 = quVar2.a) && quVar.b == quVar2.b)) {
            qvVar.j(rrVar);
            rrVar.itemView.setAlpha(0.0f);
            qvVar.c.add(rrVar);
        } else if (!qvVar.k(rrVar, i, quVar.b, i2, quVar2.b)) {
            return;
        }
        recyclerView.P();
    }

    public final void m(rr rrVar, qu quVar, qu quVar2) {
        this.a.c.l(rrVar);
        RecyclerView recyclerView = this.a;
        recyclerView.o(rrVar);
        rrVar.setIsRecyclable(false);
        qv qvVar = recyclerView.B;
        int i = quVar.a;
        int i2 = quVar.b;
        View view = rrVar.itemView;
        int left = quVar2 == null ? view.getLeft() : quVar2.a;
        int top = quVar2 == null ? view.getTop() : quVar2.b;
        if (rrVar.isRemoved() || (i == left && i2 == top)) {
            qvVar.j(rrVar);
            qvVar.b.add(rrVar);
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            if (!qvVar.k(rrVar, i, i2, left, top)) {
                return;
            }
        }
        recyclerView.P();
    }

    public final void n(rr rrVar) {
        RecyclerView recyclerView = this.a;
        recyclerView.l.aL(rrVar.itemView, recyclerView.c);
    }
}
