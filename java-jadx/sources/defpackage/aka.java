package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aka extends ady {
    public aka(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.ady
    public final /* bridge */ /* synthetic */ void b(afn afnVar, Object obj) {
        String str = ((ajz) obj).a;
        if (str == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str);
        }
        afnVar.d(2, r5.b);
    }

    @Override // defpackage.aej
    public final String c() {
        return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
    }
}
