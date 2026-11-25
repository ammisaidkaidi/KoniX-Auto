package defpackage;

import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class pp implements Runnable {
    public static final ThreadLocal a = new ThreadLocal();
    static final Comparator b = new vp(1);
    long d;
    public long e;
    public final ArrayList c = new ArrayList();
    private final ArrayList f = new ArrayList();

    private static final rr b(RecyclerView recyclerView, int i, long j) {
        int c = recyclerView.f.c();
        for (int i2 = 0; i2 < c; i2++) {
            rr h = RecyclerView.h(recyclerView.f.f(i2));
            if (h.mPosition == i && !h.isInvalid()) {
                return null;
            }
        }
        rh rhVar = recyclerView.c;
        try {
            recyclerView.M();
            rr n = rhVar.n(i, j);
            if (n != null) {
                if (!n.isBound() || n.isInvalid()) {
                    rhVar.d(n, false);
                } else {
                    rhVar.i(n.itemView);
                }
            }
            return n;
        } finally {
            recyclerView.O(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.q && this.d == 0) {
            this.d = System.nanoTime();
            recyclerView.post(this);
        }
        pn pnVar = recyclerView.G;
        pnVar.a = i;
        pnVar.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        po poVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        po poVar2;
        try {
            xz.a("RV Prefetch");
            if (this.c.isEmpty()) {
                this.d = 0L;
            } else {
                int size = this.c.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView3 = (RecyclerView) this.c.get(i);
                    if (recyclerView3.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView3.getDrawingTime(), j);
                    }
                }
                if (j == 0) {
                    this.d = 0L;
                } else {
                    long nanos = TimeUnit.MILLISECONDS.toNanos(j) + this.e;
                    int size2 = this.c.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size2; i3++) {
                        RecyclerView recyclerView4 = (RecyclerView) this.c.get(i3);
                        if (recyclerView4.getWindowVisibility() == 0) {
                            recyclerView4.G.c(recyclerView4, false);
                            i2 += recyclerView4.G.d;
                        }
                    }
                    this.f.ensureCapacity(i2);
                    int i4 = 0;
                    for (int i5 = 0; i5 < size2; i5++) {
                        RecyclerView recyclerView5 = (RecyclerView) this.c.get(i5);
                        if (recyclerView5.getWindowVisibility() == 0) {
                            pn pnVar = recyclerView5.G;
                            int abs = Math.abs(pnVar.a) + Math.abs(pnVar.b);
                            int i6 = 0;
                            while (true) {
                                int i7 = pnVar.d;
                                if (i6 < i7 + i7) {
                                    if (i4 >= this.f.size()) {
                                        poVar2 = new po();
                                        this.f.add(poVar2);
                                    } else {
                                        poVar2 = (po) this.f.get(i4);
                                    }
                                    int[] iArr = pnVar.c;
                                    int i8 = iArr[i6 + 1];
                                    poVar2.a = i8 <= abs;
                                    poVar2.b = abs;
                                    poVar2.c = i8;
                                    poVar2.d = recyclerView5;
                                    poVar2.e = iArr[i6];
                                    i4++;
                                    i6 += 2;
                                }
                            }
                        }
                    }
                    Collections.sort(this.f, b);
                    for (int i9 = 0; i9 < this.f.size() && (recyclerView = (poVar = (po) this.f.get(i9)).d) != null; i9++) {
                        rr b2 = b(recyclerView, poVar.e, true != poVar.a ? nanos : Long.MAX_VALUE);
                        if (b2 != null && b2.mNestedRecyclerView != null && b2.isBound() && !b2.isInvalid() && (recyclerView2 = (RecyclerView) b2.mNestedRecyclerView.get()) != null) {
                            if (recyclerView2.v && recyclerView2.f.c() != 0) {
                                recyclerView2.S();
                            }
                            pn pnVar2 = recyclerView2.G;
                            pnVar2.c(recyclerView2, true);
                            if (pnVar2.d != 0) {
                                try {
                                    xz.a("RV Nested Prefetch");
                                    ro roVar = recyclerView2.H;
                                    qq qqVar = recyclerView2.k;
                                    roVar.d = 1;
                                    roVar.e = qqVar.getItemCount();
                                    roVar.g = false;
                                    roVar.h = false;
                                    roVar.i = false;
                                    int i10 = 0;
                                    while (true) {
                                        int i11 = pnVar2.d;
                                        if (i10 >= i11 + i11) {
                                            break;
                                        }
                                        b(recyclerView2, pnVar2.c[i10], nanos);
                                        i10 += 2;
                                    }
                                    xz.b();
                                } finally {
                                    xz.b();
                                }
                            }
                        }
                        poVar.a = false;
                        poVar.b = 0;
                        poVar.c = 0;
                        poVar.d = null;
                        poVar.e = 0;
                    }
                    this.d = 0L;
                }
            }
        } catch (Throwable th) {
            this.d = 0L;
            throw th;
        }
    }
}
