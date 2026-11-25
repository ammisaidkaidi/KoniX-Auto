package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bc implements Animation.AnimationListener {
    final /* synthetic */ dl a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ View c;
    final /* synthetic */ be d;

    public bc(dl dlVar, ViewGroup viewGroup, View view, be beVar) {
        this.a = dlVar;
        this.b = viewGroup;
        this.c = view;
        this.d = beVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.b.post(new bb(this));
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Animation from operation ");
            sb.append(this.a);
            sb.append(" has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Animation from operation ");
            sb.append(this.a);
            sb.append(" has reached onAnimationStart.");
        }
    }
}
