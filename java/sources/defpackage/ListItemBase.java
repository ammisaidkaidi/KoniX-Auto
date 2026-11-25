package defpackage;

import android.util.Log;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ListItemBase {
    @Deprecated
    public static void d() {
        Log.w("carui", "setMessageToShowWhenDisabledPreferenceClicked ConstraintLayoutStateParser deprecated, and does nothing!");
    }

    public static void e(final ListenableFuture dagVar) {
        dagVar.aW(new Runnable() { // from class: cfs
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ProjectionIntentHelper.o(ListenableFuture.this);
                } catch (ExecutionException e) {
                    GoogleSignatureVerifier.g(new Runnable() { // from class: cft
                        @Override // java.lang.Runnable
                        public final void run() {
                            throw new RuntimeException(e.getCause());
                        }
                    });
                }
            }
        }, czj.a);
    }
}
