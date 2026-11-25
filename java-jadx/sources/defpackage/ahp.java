package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahp extends aen {
    public ahp() {
        super(7, 8);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
    }
}
