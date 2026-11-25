package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akd extends ady {
    public akd(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.ady
    public final /* bridge */ /* synthetic */ void b(afn afnVar, Object obj) {
        boa boaVar = (boa) obj;
        String str = boaVar.b;
        if (str == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str);
        }
        String str2 = boaVar.a;
        if (str2 == null) {
            afnVar.e(2);
        } else {
            afnVar.f(2, str2);
        }
    }

    @Override // defpackage.aej
    public final String c() {
        return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
    }
}
