package defpackage;

import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ClearcutApiPendingResult extends ClearcutServiceStubBase {
    final /* synthetic */ ClearcutLoggerApiImpl a;

    public ClearcutApiPendingResult(ClearcutLoggerApiImpl birVar) {
        this.a = birVar;
    }

    @Override // defpackage.ClearcutServiceStubBase
    public final void c(Status status) {
        this.a.n(status);
    }
}
