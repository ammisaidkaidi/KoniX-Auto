package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahr extends aen {
    public ahr() {
        super(11, 12);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
}
