package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class akr extends aej {
    public akr(aee aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.aej
    public final String c() {
        return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
    }
}
