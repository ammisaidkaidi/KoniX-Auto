package defpackage;

import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jv implements mb {
    final /* synthetic */ jw a;
    private final /* synthetic */ int b;

    public jv(jw jwVar, int i) {
        this.b = i;
        this.a = jwVar;
    }

    @Override // defpackage.mb
    public final void a(lo loVar, boolean z) {
        switch (this.b) {
            case 0:
                lo a = loVar.a();
                ju s = this.a.s(a != loVar ? a : loVar);
                if (s != null) {
                    if (a == loVar) {
                        this.a.x(s, z);
                        break;
                    } else {
                        this.a.v(s.a, s, a);
                        this.a.x(s, true);
                        break;
                    }
                }
                break;
            default:
                this.a.w(loVar);
                break;
        }
    }

    @Override // defpackage.mb
    public final boolean b(lo loVar) {
        Window.Callback u;
        switch (this.b) {
            case 0:
                if (loVar == loVar.a()) {
                    jw jwVar = this.a;
                    if (jwVar.s && (u = jwVar.u()) != null && !this.a.A) {
                        u.onMenuOpened(108, loVar);
                        break;
                    }
                }
                break;
            default:
                Window.Callback u2 = this.a.u();
                if (u2 != null) {
                    u2.onMenuOpened(108, loVar);
                    break;
                }
                break;
        }
        return true;
    }
}
