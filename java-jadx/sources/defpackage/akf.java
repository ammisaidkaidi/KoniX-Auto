package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akf extends ady {
    public akf(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.ady
    public final /* bridge */ /* synthetic */ void b(afn afnVar, Object obj) {
        ake akeVar = (ake) obj;
        String str = akeVar.a;
        afnVar.e(1);
        agk agkVar = akeVar.b;
        byte[] c = agk.c(null);
        if (c == null) {
            afnVar.e(2);
        } else {
            afnVar.c(2, c);
        }
    }

    @Override // defpackage.aej
    public final String c() {
        return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
    }
}
