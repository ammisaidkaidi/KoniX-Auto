package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class zn {
    public zm a;
    private ui b;
    private final WeakReference c;
    private int d;
    private boolean e;
    private boolean f;
    private ArrayList g;

    public zn() {
        new AtomicReference();
    }

    static zm a(zm zmVar, zm zmVar2) {
        return (zmVar2 == null || zmVar2.compareTo(zmVar) >= 0) ? zmVar : zmVar2;
    }

    public static void f(String str) {
        if (uf.g().h()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    private final zm g(zp zpVar) {
        ui uiVar = this.b;
        zm zmVar = null;
        ul ulVar = uiVar.c(zpVar) ? ((ul) uiVar.a.get(zpVar)).d : null;
        zm zmVar2 = ulVar != null ? ((zr) ulVar.b).a : null;
        if (!this.g.isEmpty()) {
            zmVar = (zm) this.g.get(r0.size() - 1);
        }
        return a(a(this.a, zmVar2), zmVar);
    }

    private final void h(zm zmVar) {
        if (this.a == zmVar) {
            return;
        }
        this.a = zmVar;
        if (this.e || this.d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        k();
        this.e = false;
    }

    private final void i() {
        this.g.remove(r0.size() - 1);
    }

    private final void j(zm zmVar) {
        this.g.add(zmVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r6.f = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void k() {
        zm zmVar;
        zm zmVar2;
        zq zqVar = (zq) this.c.get();
        if (zqVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            ui uiVar = this.b;
            if (uiVar.e != 0 && ((zmVar = ((zr) uiVar.b.b).a) != (zmVar2 = ((zr) uiVar.c.b).a) || this.a != zmVar2)) {
                this.f = false;
                if (this.a.compareTo(zmVar) < 0) {
                    ui uiVar2 = this.b;
                    uk ukVar = new uk(uiVar2.c, uiVar2.b);
                    uiVar2.d.put(ukVar, false);
                    while (ukVar.hasNext() && !this.f) {
                        ul ulVar = (ul) ukVar.next();
                        zr zrVar = (zr) ulVar.b;
                        while (zrVar.a.compareTo(this.a) > 0 && !this.f && this.b.c((zp) ulVar.a)) {
                            zl a = zl.a(zrVar.a);
                            if (a == null) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("no event down from ");
                                zm zmVar3 = zrVar.a;
                                sb.append(zmVar3);
                                throw new IllegalStateException("no event down from ".concat(String.valueOf(zmVar3)));
                            }
                            j(a.c());
                            zrVar.a(zqVar, a);
                            i();
                        }
                    }
                }
                ul ulVar2 = this.b.c;
                if (!this.f && ulVar2 != null && this.a.compareTo(((zr) ulVar2.b).a) > 0) {
                    um e = this.b.e();
                    while (e.hasNext() && !this.f) {
                        ul ulVar3 = (ul) e.next();
                        zr zrVar2 = (zr) ulVar3.b;
                        while (zrVar2.a.compareTo(this.a) < 0 && !this.f && this.b.c((zp) ulVar3.a)) {
                            j(zrVar2.a);
                            zl b = zl.b(zrVar2.a);
                            if (b == null) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("no event up from ");
                                zm zmVar4 = zrVar2.a;
                                sb2.append(zmVar4);
                                throw new IllegalStateException("no event up from ".concat(String.valueOf(zmVar4)));
                            }
                            zrVar2.a(zqVar, b);
                            i();
                        }
                    }
                }
            }
        }
    }

    public final void b(zp zpVar) {
        Object obj;
        zq zqVar;
        f("addObserver");
        zr zrVar = new zr(zpVar, this.a == zm.DESTROYED ? zm.DESTROYED : zm.INITIALIZED);
        ui uiVar = this.b;
        ul a = uiVar.a(zpVar);
        if (a != null) {
            obj = a.b;
        } else {
            uiVar.a.put(zpVar, uiVar.d(zpVar, zrVar));
            obj = null;
        }
        if (((zr) obj) == null && (zqVar = (zq) this.c.get()) != null) {
            boolean z = this.d == 0 ? this.e : true;
            zm g = g(zpVar);
            this.d++;
            while (zrVar.a.compareTo(g) < 0 && this.b.c(zpVar)) {
                j(zrVar.a);
                zl b = zl.b(zrVar.a);
                if (b == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("no event up from ");
                    zm zmVar = zrVar.a;
                    sb.append(zmVar);
                    throw new IllegalStateException("no event up from ".concat(String.valueOf(zmVar)));
                }
                zrVar.a(zqVar, b);
                i();
                g = g(zpVar);
            }
            if (!z) {
                k();
            }
            this.d--;
        }
    }

    public final void c(zl zlVar) {
        f("handleLifecycleEvent");
        h(zlVar.c());
    }

    public final void d(zp zpVar) {
        f("removeObserver");
        this.b.b(zpVar);
    }

    public final void e(zm zmVar) {
        f("setCurrentState");
        h(zmVar);
    }

    public zn(zq zqVar) {
        new AtomicReference();
        this.b = new ui();
        this.d = 0;
        this.e = false;
        this.f = false;
        this.g = new ArrayList();
        this.c = new WeakReference(zqVar);
        this.a = zm.INITIALIZED;
    }
}
