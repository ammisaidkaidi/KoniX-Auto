package defpackage;

import android.util.Log;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class aoj {
    @Deprecated
    public static void d() {
        Log.w("carui", "setMessageToShowWhenDisabledPreferenceClicked is deprecated, and does nothing!");
    }

    public static void e(final dag dagVar) {
        dagVar.aW(new Runnable() { // from class: cfs
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    hh.o(dag.this);
                } catch (ExecutionException e) {
                    bjq.g(new Runnable() { // from class: cft
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
