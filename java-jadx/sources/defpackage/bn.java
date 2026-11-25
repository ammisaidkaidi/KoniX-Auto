package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bn extends by {
    final /* synthetic */ br a;

    public bn(br brVar) {
        this.a = brVar;
    }

    @Override // defpackage.by
    public final View a(int i) {
        View view = this.a.P;
        if (view != null) {
            return view.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + this.a + " does not have a view");
    }

    @Override // defpackage.by
    public final boolean b() {
        return this.a.P != null;
    }
}
