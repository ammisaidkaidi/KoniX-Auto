package defpackage;

import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ActivityStateSavedRunnable implements Runnable {
    final /* synthetic */ ComponentActivity a;

    public ActivityStateSavedRunnable(ComponentActivity tkVar) {
        this.a = tkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            super/*do*/.onBackPressed();
        } catch (IllegalStateException e) {
            if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        }
    }
}
