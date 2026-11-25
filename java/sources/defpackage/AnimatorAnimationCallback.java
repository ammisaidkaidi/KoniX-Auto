package defpackage;

import android.animation.Animator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AnimatorAnimationCallback implements PrimesLatchCallback {
    final /* synthetic */ Animator a;
    final /* synthetic */ SpecialEffectsController b;

    public AnimatorAnimationCallback(Animator animator, SpecialEffectsController dlVar) {
        this.a = animator;
        this.b = dlVar;
    }

    @Override // defpackage.PrimesLatchCallback
    public final void a() {
        this.a.end();
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Animator from operation ");
            StaggeredGridLayoutParams.append(this.b);
            StaggeredGridLayoutParams.append(" has been canceled.");
        }
    }
}
