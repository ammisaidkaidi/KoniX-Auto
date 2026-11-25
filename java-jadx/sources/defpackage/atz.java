package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class atz implements dhx {
    private final /* synthetic */ int a;

    public atz(int i) {
        this.a = i;
    }

    public static dai b() {
        dai l = hi.l(Executors.newSingleThreadScheduledExecutor());
        dpx.m(l);
        return l;
    }

    public static final bdw c() {
        return new bdw();
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.a) {
            case 0:
                return new Object() { // from class: atw
                };
            case 1:
                return new hg();
            case 2:
                ez.A("certificate", "credentials/client.pem");
                ez.A("root_certificate", "credentials/ca.pem");
                ez.A("key", "credentials/private.key");
                return cse.a(3, new Object[]{"certificate", "credentials/client.pem", "root_certificate", "credentials/ca.pem", "key", "credentials/private.key"});
            case 3:
                cqc j = cqh.j();
                j.h(diq.a.a().a().a);
                j.g("/system/etc/aar");
                cqh f = j.f();
                dpx.m(f);
                return f;
            case 4:
                return new axs();
            case 5:
                return true;
            case 6:
                return cbe.c().a();
            case 7:
                return new hi();
            case 8:
                return bbs.a;
            case 9:
                return bbt.a;
            case 10:
                return bbu.a;
            case 11:
                return new hj();
            case 12:
                dau dauVar = new dau();
                dau.a("Background #%d", 0);
                dauVar.a = "Background #%d";
                dauVar.b = true;
                String str = dauVar.a;
                dai l = hi.l(Executors.newScheduledThreadPool(1, new dat(Executors.defaultThreadFactory(), str, str != null ? new AtomicLong(0L) : null, dauVar.b)));
                dpx.m(l);
                return l;
            case 13:
                throw null;
            case 14:
                return new bdu();
            case 15:
                throw null;
            case 16:
                return new bef();
            case 17:
                return new Object() { // from class: bhg
                };
            case 18:
                return new xr();
            case 19:
                return new bul();
            default:
                return new but();
        }
    }
}
