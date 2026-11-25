package defpackage;

import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.UserManager;
import j$.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aya implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;
    private final dny g;
    private final dny h;
    private final /* synthetic */ int i;

    public aya(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, int i) {
        this.i = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
    }

    public aya(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, int i, byte[] bArr) {
        this.i = i;
        this.b = dnyVar;
        this.f = dnyVar2;
        this.e = dnyVar3;
        this.g = dnyVar4;
        this.h = dnyVar5;
        this.c = dnyVar6;
        this.d = dnyVar7;
        this.a = dnyVar8;
    }

    public aya(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, int i, char[] cArr) {
        this.i = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.h = dnyVar3;
        this.c = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.d = dnyVar8;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.i) {
            case 0:
                return new axz(((dhr) this.a).a(), (ceo) this.b.a(), (Optional) ((dhy) this.c).a, (dai) this.d.a(), (ConnectivityManager) this.e.a(), (PackageManager) this.f.a(), (UserManager) this.g.a(), (Optional) this.h.a());
            case 1:
                dhq a = ((axu) this.b).a();
                dny dnyVar = this.f;
                cbv a2 = ((auk) this.e).a();
                bcj bcjVar = (bcj) this.g.a();
                return new aus(a, dnyVar, a2, bcjVar, (att) this.c.a(), ((dhr) this.d).a(), (dgq) this.a.a(), null, null, null);
            default:
                bwo a3 = ((bwp) this.b).a();
                ((dhr) this.a).a();
                return new bzm(a3, (bvh) this.h.a(), (dai) this.c.a(), dhw.b(this.e), dhw.b(this.f), this.g, (Executor) this.d.a());
        }
    }
}
