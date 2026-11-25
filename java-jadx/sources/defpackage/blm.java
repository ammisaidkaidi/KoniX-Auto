package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
final class blm implements bmi {
    public final bjx a;
    public final bks b;
    final /* synthetic */ bln e;
    public bng f = null;
    public Set c = null;
    public boolean d = false;

    public blm(bln blnVar, bjx bjxVar, bks bksVar) {
        this.e = blnVar;
        this.a = bjxVar;
        this.b = bksVar;
    }

    @Override // defpackage.bmi
    public final void a(biz bizVar) {
        this.e.l.post(new bll(this, bizVar));
    }

    public final void b(biz bizVar) {
        blj bljVar = (blj) this.e.k.get(this.b);
        if (bljVar != null) {
            hr.g(bljVar.j.l);
            bjx bjxVar = bljVar.b;
            String name = bjxVar.getClass().getName();
            String valueOf = String.valueOf(bizVar);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(valueOf).length());
            sb.append("onSignInFailed for ");
            sb.append(name);
            sb.append(" with ");
            sb.append(valueOf);
            bjxVar.e(sb.toString());
            bljVar.i(bizVar);
        }
    }

    public final void c() {
        bng bngVar;
        if (!this.d || (bngVar = this.f) == null) {
            return;
        }
        this.a.t(bngVar, this.c);
    }
}
