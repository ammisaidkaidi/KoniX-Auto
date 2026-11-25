package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FrameworkTransitionWrapper extends AnimationOrAnimatorBase {
    private final boolean c;
    private boolean d;
    private FragmentAnimationInfo e;

    public FrameworkTransitionWrapper(SpecialEffectsController dlVar, PrimesConditionLatch xvVar, boolean z) {
        super(dlVar, xvVar);
        this.d = false;
        this.c = z;
    }

    final FragmentAnimationInfo a(Context context) {
        if (this.d) {
            return this.e;
        }
        SpecialEffectsController dlVar = this.a;
        FragmentAnimationInfo e = r.e(context, dlVar.a, dlVar.e == 2, this.c);
        this.e = e;
        this.d = true;
        return e;
    }
}
