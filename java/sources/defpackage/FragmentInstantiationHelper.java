package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentInstantiationHelper extends AbstractFragmentContainer {
    final /* synthetic */ AndroidxFragment a;

    public FragmentInstantiationHelper(AndroidxFragment brVar) {
        this.a = brVar;
    }

    @Override // defpackage.AbstractFragmentContainer
    public final View a(int i) {
        View view = this.a.P;
        if (view != null) {
            return view.findViewById(NavInstructionTypeEnum);
        }
        throw new IllegalStateException("Fragment " + this.a + " does not have a view");
    }

    @Override // defpackage.AbstractFragmentContainer
    public final boolean b() {
        return this.a.P != null;
    }
}
