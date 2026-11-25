package defpackage;

import android.animation.Animator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ba implements xu {
    final /* synthetic */ Animator a;
    final /* synthetic */ dl b;

    public ba(Animator animator, dl dlVar) {
        this.a = animator;
        this.b = dlVar;
    }

    @Override // defpackage.xu
    public final void a() {
        this.a.end();
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Animator from operation ");
            sb.append(this.b);
            sb.append(" has been canceled.");
        }
    }
}
