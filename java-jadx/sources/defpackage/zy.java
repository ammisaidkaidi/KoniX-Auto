package defpackage;

import androidx.lifecycle.LiveData$LifecycleBoundObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
public class zy {
    public static final Object a = new Object();
    final Object b = new Object();
    public final up c = new up();
    public int d = 0;
    public boolean e;
    public volatile Object f;
    volatile Object g;
    public int h;
    public final Runnable i;
    private boolean j;
    private boolean k;

    public zy() {
        Object obj = a;
        this.g = obj;
        this.i = new zv(this);
        this.f = obj;
        this.h = -1;
    }

    public static void a(String str) {
        if (uf.g().h()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private final void h(zx zxVar) {
        if (zxVar.d) {
            if (!zxVar.g()) {
                zxVar.d(false);
                return;
            }
            int i = zxVar.e;
            int i2 = this.h;
            if (i >= i2) {
                return;
            }
            zxVar.e = i2;
            zxVar.c.a(this.f);
        }
    }

    final void b(zx zxVar) {
        if (this.j) {
            this.k = true;
            return;
        }
        this.j = true;
        while (true) {
            this.k = false;
            if (zxVar != null) {
                h(zxVar);
            } else {
                um e = this.c.e();
                while (e.hasNext()) {
                    h((zx) ((ul) e.next()).b);
                    if (this.k) {
                        break;
                    }
                }
            }
            if (!this.k) {
                this.j = false;
                return;
            }
            zxVar = null;
        }
    }

    public final void c(zq zqVar, aaa aaaVar) {
        a("observe");
        if (zqVar.C().a == zm.DESTROYED) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, zqVar, aaaVar);
        zx zxVar = (zx) this.c.f(aaaVar, liveData$LifecycleBoundObserver);
        if (zxVar != null && !zxVar.c(zqVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (zxVar != null) {
            return;
        }
        zqVar.C().b(liveData$LifecycleBoundObserver);
    }

    protected void d() {
    }

    protected void e() {
    }

    public void f(aaa aaaVar) {
        a("removeObserver");
        zx zxVar = (zx) this.c.b(aaaVar);
        if (zxVar == null) {
            return;
        }
        zxVar.b();
        zxVar.d(false);
    }

    protected void g(Object obj) {
        throw null;
    }
}
