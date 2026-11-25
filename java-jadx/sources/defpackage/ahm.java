package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahm extends aen {
    public ahm() {
        super(3, 4);
    }

    @Override // defpackage.aen
    public final void a(afh afhVar) {
        afhVar.g("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
    }
}
