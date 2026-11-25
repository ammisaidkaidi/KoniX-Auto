package defpackage;

import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class PendingResultFinalizerGuard {
    protected final void finalize() {
        ThreadLocal threadLocal = BasePendingResult.b;
        throw null;
    }
}
