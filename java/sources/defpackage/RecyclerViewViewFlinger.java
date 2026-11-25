package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewViewFlinger implements Runnable {
    public int a;
    public int b;
    public OverScroller c;
    public final /* synthetic */ RecyclerView e;
    public Interpolator d = RecyclerView.a;
    private boolean f = false;
    private boolean g = false;

    public RecyclerViewViewFlinger(RecyclerView recyclerView) {
        this.e = recyclerView;
        this.c = new OverScroller(recyclerView.getContext(), RecyclerView.a);
    }

    private final void d() {
        this.e.removeCallbacks(this);
        ViewCompatAccessibilityStatics.r(this.e, this);
    }

    public final void a() {
        if (this.f) {
            this.g = true;
        } else {
            d();
        }
    }

    public final void b(int i, int i2, int i3, Interpolator interpolator) {
        int i4;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(NavInstructionTypeEnum);
            int abs2 = Math.abs(i2);
            int width = abs > abs2 ? this.e.getWidth() : this.e.getHeight();
            if (MediaBrowserConnectCallbackRunnable <= abs2) {
                abs = abs2;
            }
            i4 = Math.min((int) (((MediaBrowserConnectCallbackRunnable / width) + 1.0f) * 300.0f), 2000);
        } else {
            i4 = i3;
        }
        if (interpolator == null) {
            interpolator = RecyclerView.a;
        }
        if (this.d != interpolator) {
            this.d = interpolator;
            this.c = new OverScroller(this.e.getContext(), interpolator);
        }
        this.b = 0;
        this.a = 0;
        this.e.aa(2);
        this.c.startScroll(0, 0, i, i2, i4);
        a();
    }

    public final void c() {
        this.e.removeCallbacks(this);
        this.c.abortAnimation();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012c  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int i;
        int i2;
        boolean awakenScrollBars;
        boolean z;
        RecyclerView recyclerView;
        RecyclerViewSmoothScroller rnVar;
        RecyclerView recyclerView2 = this.e;
        if (recyclerView2.l == null) {
            c();
            return;
        }
        this.g = false;
        this.f = true;
        recyclerView2.v();
        OverScroller overScroller = this.c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i3 = currX - this.a;
            int i4 = currY - this.b;
            this.a = currX;
            this.b = currY;
            RecyclerView recyclerView3 = this.e;
            int[] iArr = recyclerView3.M;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView3.ah(i3, i4, iArr, null, 1)) {
                int[] iArr2 = this.e.M;
                i3 -= iArr2[0];
                i4 -= iArr2[1];
            }
            if (this.e.getOverScrollMode() != 2) {
                this.e.u(i3, i4);
            }
            RecyclerView recyclerView4 = this.e;
            if (recyclerView4.k != null) {
                int[] iArr3 = recyclerView4.M;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView4.V(i3, i4, iArr3);
                RecyclerView recyclerView5 = this.e;
                int[] iArr4 = recyclerView5.M;
                i2 = iArr4[0];
                i = iArr4[1];
                i3 -= i2;
                i4 -= i;
                RecyclerViewSmoothScroller rnVar2 = recyclerView5.l.u;
                if (rnVar2 != null && !rnVar2.d && rnVar2.e) {
                    int a = recyclerView5.H.a();
                    if (SingleStringProtoMessage == 0) {
                        rnVar2.c();
                    } else if (rnVar2.a >= a) {
                        rnVar2.a = a - 1;
                        rnVar2.b(i2, i);
                    } else {
                        rnVar2.b(i2, i);
                    }
                }
            } else {
                i = 0;
                i2 = 0;
            }
            if (!this.e.n.isEmpty()) {
                this.e.invalidate();
            }
            RecyclerView recyclerView6 = this.e;
            int[] iArr5 = recyclerView6.M;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView6.z(i2, i, i3, i4, null, 1, iArr5);
            RecyclerView recyclerView7 = this.e;
            int[] iArr6 = recyclerView7.M;
            int i5 = i3 - iArr6[0];
            int i6 = i4 - iArr6[1];
            if (i2 == 0) {
                if (NavInstructionTypeEnum != 0) {
                    i2 = 0;
                } else {
                    i = 0;
                    i2 = 0;
                    awakenScrollBars = this.e.awakenScrollBars();
                    if (!awakenScrollBars) {
                        this.e.invalidate();
                    }
                    int currX2 = overScroller.getCurrX();
                    int finalX = overScroller.getFinalX();
                    int currY2 = overScroller.getCurrY();
                    int finalY = overScroller.getFinalY();
                    if (!overScroller.isFinished()) {
                        if (currX2 != finalX && i5 == 0) {
                            z = false;
                            i5 = 0;
                        } else if (currY2 != finalY) {
                            if (i6 != 0) {
                                z = true;
                            } else {
                                z = false;
                                i6 = 0;
                            }
                        }
                        recyclerView = this.e;
                        rnVar = recyclerView.l.u;
                        if (!(rnVar == null && rnVar.d) && z) {
                            if (recyclerView.getOverScrollMode() != 2) {
                                int currVelocity = (int) overScroller.getCurrVelocity();
                                int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                                if (i6 < 0) {
                                    currVelocity = -currVelocity;
                                } else if (i6 <= 0) {
                                    currVelocity = 0;
                                }
                                RecyclerView recyclerView8 = this.e;
                                if (i7 < 0) {
                                    recyclerView8.C();
                                    if (recyclerView8.x.isFinished()) {
                                        recyclerView8.x.onAbsorb(-i7);
                                    }
                                } else if (i7 > 0) {
                                    recyclerView8.D();
                                    if (recyclerView8.z.isFinished()) {
                                        recyclerView8.z.onAbsorb(i7);
                                    }
                                }
                                if (currVelocity < 0) {
                                    recyclerView8.E();
                                    if (recyclerView8.y.isFinished()) {
                                        recyclerView8.y.onAbsorb(-currVelocity);
                                    }
                                } else if (currVelocity > 0) {
                                    recyclerView8.B();
                                    if (recyclerView8.A.isFinished()) {
                                        recyclerView8.A.onAbsorb(currVelocity);
                                    }
                                }
                                if (i7 != 0 || currVelocity != 0) {
                                    ViewCompatAccessibilityStatics.q(recyclerView8);
                                }
                            }
                            this.e.G.b();
                        } else {
                            a();
                            RecyclerView recyclerView9 = this.e;
                            RecyclerViewGapWorker ppVar = recyclerView9.F;
                            if (ppVar != null) {
                                ppVar.a(recyclerView9, i2, i);
                            }
                        }
                    }
                    z = true;
                    recyclerView = this.e;
                    rnVar = recyclerView.l.u;
                    if (rnVar == null) {
                    }
                    if (recyclerView.getOverScrollMode() != 2) {
                    }
                    this.e.G.b();
                }
            }
            recyclerView7.A(i2, i);
            awakenScrollBars = this.e.awakenScrollBars();
            if (!awakenScrollBars) {
            }
            int currX22 = overScroller.getCurrX();
            int finalX2 = overScroller.getFinalX();
            int currY22 = overScroller.getCurrY();
            int finalY2 = overScroller.getFinalY();
            if (!overScroller.isFinished()) {
            }
            z = true;
            recyclerView = this.e;
            rnVar = recyclerView.l.u;
            if (rnVar == null) {
            }
            if (recyclerView.getOverScrollMode() != 2) {
            }
            this.e.G.b();
        }
        RecyclerViewSmoothScroller rnVar3 = this.e.l.u;
        if (rnVar3 != null && rnVar3.d) {
            rnVar3.b(0, 0);
        }
        this.f = false;
        if (this.g) {
            d();
        } else {
            this.e.aa(0);
            this.e.ae(1);
        }
    }
}
