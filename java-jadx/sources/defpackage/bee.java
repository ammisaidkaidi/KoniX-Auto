package defpackage;

import android.os.SystemClock;
import j$.util.Optional;
import java.util.Random;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bee implements dhx {
    private final dny a;
    private final /* synthetic */ int b;

    public bee(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                return new bed(((dhr) this.a).a());
            case 1:
                Executor mainExecutor = ((dhr) this.a).a().getMainExecutor();
                dpx.m(mainExecutor);
                return mainExecutor;
            case 2:
                return new dhq(((dhr) this.a).a(), (byte[]) null, (char[]) null);
            case 3:
                clk clkVar = (clk) Optional.ofNullable(((bgi) this.a.a()).b).orElse(baz.a);
                dpx.m(clkVar);
                return clkVar;
            case 4:
                bxn bxnVar = (bxn) ((dny) ((coc) ((dhy) this.a).a).b(btn.c)).a();
                dpx.m(bxnVar);
                return bxnVar;
            case 5:
                bwx bwxVar = (bwx) ((dny) ((coc) ((dhy) this.a).a).b(btn.e)).a();
                dpx.m(bwxVar);
                return bwxVar;
            case 6:
                bxf bxfVar = (bxf) ((dny) ((atg) this.a).b().b(btn.f)).a();
                dpx.m(bxfVar);
                return bxfVar;
            case 7:
                byk bykVar = (byk) ((dny) ((atg) this.a).b().b(btn.g)).a();
                dpx.m(bykVar);
                return bykVar;
            case 8:
                cak cakVar = (cak) ((dny) ((atg) this.a).b().b(btn.i)).a();
                dpx.m(cakVar);
                return cakVar;
            case 9:
                coc cocVar = (coc) ((dhy) this.a).a;
                bui buiVar = new bui();
                buiVar.a = 11;
                buiVar.b = 2;
                buiVar.c = true;
                Integer num = buiVar.a;
                if (num != null && buiVar.b != null && buiVar.c != null) {
                    buj bujVar = new buj(num.intValue(), buiVar.b.intValue(), buiVar.c.booleanValue());
                    int i = bujVar.b;
                    ex.t(i > 0 && i <= 2, "Thread pool size must be less than or equal to %s", 2);
                    return (buj) cocVar.b(bujVar);
                }
                StringBuilder sb = new StringBuilder();
                if (buiVar.a == null) {
                    sb.append(" primesMetricExecutorPriority");
                }
                if (buiVar.b == null) {
                    sb.append(" primesMetricExecutorPoolSize");
                }
                if (buiVar.c == null) {
                    sb.append(" enableDeferredTasks");
                }
                throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
            case 10:
                cbb cbbVar = (cbb) ((dny) ((coc) ((dhy) this.a).a).b(btn.j)).a();
                dpx.m(cbbVar);
                return cbbVar;
            case 11:
                cap capVar = (cap) ((dny) ((atg) this.a).b().b(btn.b)).a();
                dpx.m(capVar);
                return capVar;
            case 12:
                cbe cbeVar = (cbe) ((dny) ((atg) this.a).b().b(btn.a)).a();
                dpx.m(cbeVar);
                return cbeVar;
            case 13:
                return new cvv(((dhr) this.a).a());
            case 14:
                return new Random(SystemClock.elapsedRealtime());
            case 15:
                btz a = ((btw) this.a).a();
                btz.b(new btu(a));
                return a;
            case 16:
                return (xr) ((atg) this.a).b().b(new xr());
            case 17:
                return new bud();
            case 18:
                return Boolean.valueOf(dmo.a.a().b(((dhr) this.a).a()));
            case 19:
                return dmo.a.a().a(((dhr) this.a).a());
            default:
                return dmr.a.a().a(((dhr) this.a).a());
        }
    }
}
