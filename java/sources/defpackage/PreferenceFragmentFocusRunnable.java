package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PreferenceFragmentFocusRunnable implements Runnable {
    final /* synthetic */ PreferenceFragmentCompat a;

    public PreferenceFragmentFocusRunnable(PreferenceFragmentCompat adaVar) {
        this.a = adaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.a.b;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
