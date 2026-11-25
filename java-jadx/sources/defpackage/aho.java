package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aho extends aen {
    public aho() {
        super(6, 7);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
    }
}
