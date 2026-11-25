package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
class AnimationOrAnimatorBase {
    public final SpecialEffectsController a;
    public final PrimesConditionLatch b;

    public AnimationOrAnimatorBase(SpecialEffectsController dlVar, PrimesConditionLatch xvVar) {
        this.a = dlVar;
        this.b = xvVar;
    }

    final void b() {
        SpecialEffectsController dlVar = this.a;
        if (dlVar.b.remove(this.b) && dlVar.b.isEmpty()) {
            dlVar.a();
        }
    }

    final boolean c() {
        int n = r.n(this.a.a.P);
        int i = this.a.e;
        return n == i || !(ProtoLiteTimestampField == 2 || i == 2);
    }
}
