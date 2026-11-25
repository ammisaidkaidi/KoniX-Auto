package defpackage;

import androidx.preference.Preference;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class agf {
    public final Executor a = a(false);
    public final Executor b = a(true);
    public final aha c = new aha();
    public final ahb f = new ahb();
    public final int d = Preference.DEFAULT_ORDER;
    public final int e = 20;

    private static final Executor a(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new agd(z));
    }
}
