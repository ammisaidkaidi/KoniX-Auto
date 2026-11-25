package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahq extends aen {
    public ahq() {
        super(8, 9);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
