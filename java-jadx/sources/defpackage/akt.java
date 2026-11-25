package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akt extends aej {
    public akt(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.aej
    public final String c() {
        return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
    }
}
