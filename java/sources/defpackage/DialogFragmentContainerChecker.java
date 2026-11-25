package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DialogFragmentContainerChecker implements LoadCompleteListener {
    final /* synthetic */ AndroidxDialogFragment a;

    public DialogFragmentContainerChecker(AndroidxDialogFragment bmVar) {
        this.a = bmVar;
    }

    @Override // defpackage.LoadCompleteListener
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (((LifecycleOwner) obj) != null) {
            AndroidxDialogFragment bmVar = this.a;
            if (bmVar.b) {
                View B = bmVar.B();
                if (B.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (this.a.c != null) {
                    if (FragmentManagerImpl.R(3)) {
                        StringBuilder sb = new StringBuilder();
                        StaggeredGridLayoutParams.append("DialogFragment ");
                        StaggeredGridLayoutParams.append(this);
                        StaggeredGridLayoutParams.append(" setting the content view on ");
                        StaggeredGridLayoutParams.append(this.a.c);
                    }
                    this.a.c.setContentView(B);
                }
            }
        }
    }
}
