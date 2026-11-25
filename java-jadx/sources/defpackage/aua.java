package defpackage;

import android.car.CarAppFocusManager;
import android.car.drivingstate.CarUxRestrictionsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.protocol.MediaPlaybackStatus;
import j$.util.Optional;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aua implements dhx {
    private final dny a;
    private final /* synthetic */ int b;

    public aua(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                clk n = hg.n(((aus) this.a.a()).d);
                dpx.m(n);
                return n;
            case 1:
                AudioSink audioSink = ((aus) this.a.a()).a.f;
                dpx.m(audioSink);
                return audioSink;
            case 2:
                AudioSink audioSink2 = ((aus) this.a.a()).c.f;
                dpx.m(audioSink2);
                return audioSink2;
            case 3:
                return new axf((CarAppFocusManager) this.a.a());
            case 4:
                return new MediaPlaybackStatus(((axs) this.a.a()).d);
            case 5:
                return new axw((ceo) this.a.a());
            case 6:
                return new cha((PackageManager) this.a.a());
            case 7:
                Optional optional = (Optional) this.a.a();
                if (!optional.isPresent() || (((dbt) optional.get()).a & 8) == 0) {
                    ((csx) ayb.a.c().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesApplicationProperties", 72, "PhenotypeRegistrationInfoModule.java")).n("There were no params found in the current registration");
                    return Optional.empty();
                }
                try {
                    ddf n2 = bhk.b.n();
                    dcl dclVar = ((dbt) optional.get()).i;
                    dcz b = dcz.b();
                    try {
                        try {
                            dcp l = dclVar.l();
                            n2.m(l, b);
                            l.z(0);
                            return Optional.of((bhk) n2.h());
                        } catch (ddu e) {
                            throw e;
                        }
                    } catch (IOException e2) {
                        String name = n2.getClass().getName();
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 70);
                        sb.append("Reading ");
                        sb.append(name);
                        sb.append(" from a ");
                        sb.append("ByteString");
                        sb.append(" threw an IOException (should never happen).");
                        throw new RuntimeException(sb.toString(), e2);
                    }
                } catch (ddu e3) {
                    ((csx) ((csx) ayb.a.c().g(e3)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesApplicationProperties", 82, "PhenotypeRegistrationInfoModule.java")).n("Couldn't parse application properties");
                    return Optional.empty();
                }
            case 8:
                dgq dgqVar = (dgq) ((Optional) this.a.a()).map(awq.f).orElse(dgq.UNKNOWN);
                dpx.m(dgqVar);
                return dgqVar;
            case 9:
                boolean booleanValue = ((Boolean) this.a.a()).booleanValue();
                byp c = byq.c();
                c.b(dju.a.a().d());
                c.c(dju.a.a().e() && booleanValue);
                return c.a();
            case 10:
                boolean booleanValue2 = ((Boolean) this.a.a()).booleanValue();
                cbd c2 = bxf.c();
                c2.d(dju.a.a().a() && booleanValue2);
                return c2.c();
            case 11:
                boolean booleanValue3 = ((Boolean) this.a.a()).booleanValue();
                byj c3 = byk.c();
                c3.b(dju.a.a().c() && booleanValue3);
                return c3.a();
            case 12:
                boolean booleanValue4 = ((Boolean) this.a.a()).booleanValue();
                bzg c4 = bzh.c();
                c4.b(dju.a.a().f() && booleanValue4);
                return c4.a();
            case 13:
                boolean booleanValue5 = ((Boolean) this.a.a()).booleanValue();
                caj c5 = cak.c();
                c5.b(dju.a.a().g() && booleanValue5);
                return c5.a();
            case 14:
                boolean booleanValue6 = ((Boolean) this.a.a()).booleanValue();
                cao c6 = cap.c();
                c6.b(dju.a.a().h() && booleanValue6);
                return c6.a();
            case 15:
                return new ayu((CarUxRestrictionsManager) this.a.a());
            case 16:
                return new azc(((dhr) this.a).a());
            case 17:
                return new azf(((dhr) this.a).a());
            case 18:
                zn znVar = ((bbl) ((dhy) this.a).a).F;
                dpx.m(znVar);
                return znVar;
            case 19:
                return new bci(((dhr) this.a).a());
            default:
                Context a = ((dhr) this.a).a();
                cde.c();
                return new bco(a);
        }
    }
}
