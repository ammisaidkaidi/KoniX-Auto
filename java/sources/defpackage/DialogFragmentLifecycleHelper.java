package defpackage;

import android.app.Dialog;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DialogFragmentLifecycleHelper extends AbstractFragmentContainer {
    final /* synthetic */ AbstractFragmentContainer a;
    final /* synthetic */ AndroidxDialogFragment b;

    public DialogFragmentLifecycleHelper(AndroidxDialogFragment bmVar, AbstractFragmentContainer byVar) {
        this.b = bmVar;
        this.a = byVar;
    }

    @Override // defpackage.AbstractFragmentContainer
    public final View a(int i) {
        if (this.a.b()) {
            return this.a.a(NavInstructionTypeEnum);
        }
        Dialog dialog = this.b.c;
        if (dialog != null) {
            return dialog.findViewById(NavInstructionTypeEnum);
        }
        return null;
    }

    @Override // defpackage.AbstractFragmentContainer
    public final boolean b() {
        return this.a.b() || this.b.f;
    }
}
