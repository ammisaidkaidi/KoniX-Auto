package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class wt implements wi {
    public int c;
    public vx d;
    wq e;
    protected int k;
    public final wl f = new wl(this);
    public int g = 0;
    public boolean h = false;
    public final wk i = new wk(this);
    public final wk j = new wk(this);
    protected int l = 1;

    public wt(vx vxVar) {
        this.d = vxVar;
    }

    protected static final void j(wk wkVar, wk wkVar2, int i) {
        wkVar.k.add(wkVar2);
        wkVar.e = i;
        wkVar2.j.add(wkVar);
    }

    protected static final wk k(vw vwVar) {
        vw vwVar2 = vwVar.e;
        if (vwVar2 == null) {
            return null;
        }
        vx vxVar = vwVar2.d;
        switch (vwVar2.i - 1) {
        }
        return null;
    }

    protected static final wk l(vw vwVar, int i) {
        vw vwVar2 = vwVar.e;
        if (vwVar2 == null) {
            return null;
        }
        vx vxVar = vwVar2.d;
        wt wtVar = i == 0 ? vxVar.h : vxVar.i;
        switch (vwVar2.i - 1) {
        }
        return null;
    }

    public long a() {
        if (this.f.i) {
            return r0.f;
        }
        return 0L;
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public abstract boolean e();

    @Override // defpackage.wi
    public void f() {
        throw null;
    }

    protected final int h(int i, int i2) {
        if (i2 == 0) {
            vx vxVar = this.d;
            int i3 = vxVar.w;
            int max = Math.max(vxVar.v, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            return max == i ? i : max;
        }
        vx vxVar2 = this.d;
        int i4 = vxVar2.z;
        int max2 = Math.max(vxVar2.y, i);
        if (i4 > 0) {
            max2 = Math.min(i4, i);
        }
        return max2 == i ? i : max2;
    }

    protected final void i(wk wkVar, wk wkVar2, int i, wl wlVar) {
        wkVar.k.add(wkVar2);
        wkVar.k.add(this.f);
        wkVar.g = i;
        wkVar.h = wlVar;
        wkVar2.j.add(wkVar);
        wlVar.j.add(wkVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r8.c == 3) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [wp] */
    /* JADX WARN: Type inference failed for: r7v2, types: [wt] */
    /* JADX WARN: Type inference failed for: r7v5, types: [wr] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void m(vw vwVar, vw vwVar2, int i) {
        wk k = k(vwVar);
        wk k2 = k(vwVar2);
        if (k.i && k2.i) {
            int b = k.f + vwVar.b();
            int b2 = k2.f - vwVar2.b();
            int i2 = b2 - b;
            wl wlVar = this.f;
            if (!wlVar.i && this.k == 3) {
                switch (this.c) {
                    case 0:
                        wlVar.c(h(i2, i));
                        break;
                    case 1:
                        this.f.c(Math.min(h(wlVar.m, i), i2));
                        break;
                    case 2:
                        vx vxVar = this.d;
                        vx vxVar2 = vxVar.T;
                        if (vxVar2 != null) {
                            if ((i == 0 ? vxVar2.h : vxVar2.i).f.i) {
                                wlVar.c(h((int) ((r6.f * (i == 0 ? vxVar.x : vxVar.A)) + 0.5f), i));
                                break;
                            }
                        }
                        break;
                    case 3:
                        vx vxVar3 = this.d;
                        ?? r7 = vxVar3.h;
                        if (r7.k == 3 && r7.c == 3) {
                            wr wrVar = vxVar3.i;
                            if (wrVar.k == 3) {
                                break;
                            }
                        }
                        if (i == 0) {
                            r7 = vxVar3.i;
                        }
                        if (r7.f.i) {
                            float f = vxVar3.W;
                            wlVar.c(i == 1 ? (int) ((r6.f / f) + 0.5f) : (int) ((f * r6.f) + 0.5f));
                            break;
                        }
                        break;
                }
            }
            wl wlVar2 = this.f;
            if (wlVar2.i) {
                if (wlVar2.f == i2) {
                    this.i.c(b);
                    this.j.c(b2);
                    return;
                }
                float f2 = i == 0 ? this.d.ad : this.d.ae;
                if (k == k2) {
                    b = k.f;
                    b2 = k2.f;
                    f2 = 0.5f;
                }
                this.i.c((int) (b + 0.5f + (((b2 - b) - r3) * f2)));
                this.j.c(this.i.f + this.f.f);
            }
        }
    }
}
