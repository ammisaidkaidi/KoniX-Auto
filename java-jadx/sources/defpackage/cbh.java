package defpackage;

import android.text.TextUtils;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbh implements bwq, cbc {
    public final bwn a;
    public final dgz b;
    public final dgz c;
    public final cbv d;
    public final cbz e;
    public final AtomicReference f;
    private final dai g;

    public cbh() {
    }

    @Override // defpackage.cbc
    public final void a(String str, long j, long j2) {
        cbg cbgVar;
        if (TextUtils.isEmpty(str) || j2 <= 0 || (cbgVar = (cbg) cbm.a.get()) == null || cbgVar.c.c > j) {
            return;
        }
        cay cayVar = new cay(str, j, j + j2, Thread.currentThread().getId(), 4);
        synchronized (cbgVar.e) {
            cbgVar.e.add(cayVar);
        }
        cbgVar.b();
    }

    @Override // defpackage.cbc
    public final boolean b(String str) {
        if (((cbu) this.f.get()).a()) {
            return cbm.c(str);
        }
        return false;
    }

    @Override // defpackage.cbc
    public final dag c(String str) {
        if (true != TextUtils.isEmpty(null)) {
            str = null;
        }
        final cbg d = cbm.d(str);
        return d == null ? dad.a : hh.m(new czb() { // from class: cbi
            @Override // defpackage.czb
            public final dag a() {
                cbh cbhVar = cbh.this;
                cbg cbgVar = d;
                if (!((cbe) cbhVar.c.a()).b()) {
                    return dad.a;
                }
                if (cbhVar.e.d()) {
                    return dad.a;
                }
                cbhVar.e.c();
                List b = cbm.b(cbgVar);
                if (b == null || b.isEmpty()) {
                    return dad.a;
                }
                ddf n = dpb.f.n();
                long leastSignificantBits = UUID.randomUUID().getLeastSignificantBits();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpb dpbVar = (dpb) n.b;
                dpbVar.a |= 1;
                dpbVar.b = leastSignificantBits;
                dpbVar.c();
                dbu.d(b, dpbVar.d);
                dpb dpbVar2 = (dpb) n.h();
                long a = cbhVar.a.a(dpbVar2.d.size() > 0 ? ((dpc) dpbVar2.d.get(0)).b : null);
                if (a == -1) {
                    return dad.a;
                }
                ddf n2 = dpz.y.n();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dpz dpzVar = (dpz) n2.b;
                dpbVar2.getClass();
                dpzVar.n = dpbVar2;
                dpzVar.a |= 16384;
                dpz dpzVar2 = (dpz) n2.h();
                long j = dpbVar2.b;
                bwn bwnVar = cbhVar.a;
                bwi a2 = bwj.a();
                a2.d(dpzVar2);
                a2.d = Long.valueOf(a);
                return bwnVar.b(a2.a());
            }
        }, this.g);
    }

    @Override // defpackage.bwq
    public final void u() {
        hh.l(new Runnable() { // from class: cbk
            @Override // java.lang.Runnable
            public final void run() {
                cbh cbhVar = cbh.this;
                try {
                    cbhVar.f.set(cbhVar.d.a(((cbe) cbhVar.c.a()).b() ? ((cbe) cbhVar.c.a()).a : 0.0f));
                } catch (Throwable th) {
                    cbhVar.f.set(cbhVar.d.a(0.0f));
                }
            }
        }, this.g);
    }

    public cbh(bwo bwoVar, dai daiVar, final dgz dgzVar, dgz dgzVar2, dny dnyVar, cbv cbvVar) {
        AtomicReference atomicReference = new AtomicReference();
        this.f = atomicReference;
        this.g = daiVar;
        this.b = dgzVar;
        this.c = dgzVar2;
        this.d = cbvVar;
        this.a = bwoVar.a(daiVar, new dgz() { // from class: cbj
            @Override // defpackage.dgz
            public final Object a() {
                cbd c = cbe.c();
                c.b(true);
                return c.a();
            }
        }, dnyVar);
        this.e = cbz.a(new dny() { // from class: cbl
            @Override // defpackage.dny
            public final Object a() {
                return 10;
            }
        });
        atomicReference.set(cbvVar.a(1.0f));
    }
}
