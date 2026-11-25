package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentAnimationRunnable implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ SpecialEffectsController b;

    public FragmentAnimationRunnable(List list, SpecialEffectsController dlVar) {
        this.a = list;
        this.b = dlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.contains(this.b)) {
            this.a.remove(this.b);
            SpecialEffectsContainerState.f(this.b);
        }
    }
}
