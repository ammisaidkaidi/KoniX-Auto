package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btb implements btd {
    private final bik a;

    public btb(bik bikVar) {
        this.a = bikVar;
    }

    @Override // defpackage.btd
    public final void a(dgn dgnVar) {
        if (dgnVar != null) {
            bih a = this.a.a(dgnVar);
            ddh ddhVar = a.j;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgt dgtVar = (dgt) ddhVar.b;
            dgt dgtVar2 = dgt.j;
            dgtVar.a |= 16;
            dgtVar.e = 1;
            a.a();
        }
    }
}
