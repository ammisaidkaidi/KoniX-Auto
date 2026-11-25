package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahn extends aen {
    public ahn() {
        super(4, 5);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        afhVar.g("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
