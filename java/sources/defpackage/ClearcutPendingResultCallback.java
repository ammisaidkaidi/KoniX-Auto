package defpackage;

import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ClearcutPendingResultCallback extends ClearcutServiceStubBase {
    final /* synthetic */ PreconditionsChecker a;

    public ClearcutPendingResultCallback(PreconditionsChecker brkVar) {
        this.a = brkVar;
    }

    @Override // defpackage.ClearcutServiceStubBase
    public final void b(Status status) {
        this.a.a(status);
    }
}
