package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ajy extends ady {
    public ajy(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.ady
    public final /* bridge */ /* synthetic */ void b(afn afnVar, Object obj) {
        ajx ajxVar = (ajx) obj;
        afnVar.f(1, ajxVar.a);
        afnVar.d(2, ajxVar.b.longValue());
    }

    @Override // defpackage.aej
    public final String c() {
        return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
    }
}
