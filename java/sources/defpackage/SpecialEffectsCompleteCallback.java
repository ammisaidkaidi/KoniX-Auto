package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpecialEffectsCompleteCallback implements PrimesLatchCallback {
    final /* synthetic */ SpecialEffectsController a;

    public SpecialEffectsCompleteCallback(SpecialEffectsController dlVar) {
        this.a = dlVar;
    }

    @Override // defpackage.PrimesLatchCallback
    public final void a() {
        this.a.d();
    }
}
