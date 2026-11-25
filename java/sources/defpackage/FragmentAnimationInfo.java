package defpackage;

import android.animation.Animator;
import android.view.animation.Animation;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentAnimationInfo {
    public final Animation a;
    public final Animator b;

    public FragmentAnimationInfo(Animator animator) {
        this.a = null;
        this.b = animator;
    }

    public FragmentAnimationInfo(Animation animation) {
        this.a = animation;
        this.b = null;
    }
}
