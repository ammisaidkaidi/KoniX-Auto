package defpackage;

import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bub implements bua {
    private static final csz a = csz.g("com/google/android/libraries/performance/primes/PrimesApiImpl");
    private final bul b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;

    public bub(bul bulVar, dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, coc cocVar, cvv cvvVar, byte[] bArr) {
        this.b = bulVar;
        this.c = dnyVar;
        this.d = dnyVar2;
        this.e = dnyVar3;
        this.f = dnyVar4;
        if (!bjq.h() && !cvvVar.a()) {
            String str = cvvVar.a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 150);
            sb.append("Primes init triggered from background in package: ");
            sb.append(str);
            sb.append(". If this is an existing error, please file a bug on the Primes team to whitelist your package name.");
            throw new IllegalStateException(sb.toString());
        }
        if (((Boolean) cocVar.b(Boolean.FALSE)).booleanValue()) {
            return;
        }
        try {
            WeakHashMap weakHashMap = cnr.a;
            Iterator it = ((dhz) dnyVar).a().iterator();
            while (it.hasNext()) {
                ((bwq) it.next()).u();
            }
        } catch (RuntimeException e) {
            ((csx) ((csx) a.c().g(e)).h("com/google/android/libraries/performance/primes/PrimesApiImpl", "initialize", 123, "PrimesApiImpl.java")).n("Primes failed to initialize");
            this.b.a();
        }
    }

    @Override // defpackage.bua
    public final void a() {
        ((bxg) this.d.a()).d();
    }

    @Override // defpackage.bua
    public final void b(btx btxVar) {
        ((can) this.f).a().a(btxVar);
    }

    @Override // defpackage.bua
    public final void c() {
        ((byz) this.e.a()).a();
    }

    @Override // defpackage.bua
    public final void d(btx btxVar) {
        ((byz) this.e.a()).b(btxVar);
    }

    @Override // defpackage.bua
    public final void e(btx btxVar, int i) {
        ((can) this.f).a().b(btxVar, i);
    }
}
