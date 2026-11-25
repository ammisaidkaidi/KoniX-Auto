package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akq extends aej {
    public akq(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.aej
    public final String c() {
        return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
    }
}
