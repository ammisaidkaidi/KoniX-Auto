package defpackage;

import android.content.Context;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClientTelemetryClient extends GmsApiClientBase {
    private static final ApiClientKey j;
    private static final GoogleSignatureVerifier k;

    static {
        PhenotypeSignatureVerifier bnxVar = new PhenotypeSignatureVerifier();
        k = bnxVar;
        j = new ApiClientKey("ClientTelemetry.API", bnxVar, null);
    }

    public ClientTelemetryClient(Context context, PendingResultStubImpl bnsVar) {
        super(context, j, bnsVar, bkb.a);
    }

    public final void a(final GmsInternalParcel bnrVar) {
        ExecutorParameterChecker a = ExecutorParameterCheckerHolder.a();
        a.b = new ApiAvailabilityVersionInfo[]{bix.a};
        a.b();
        a.a = new BiConsumerCallbackInterface() { // from class: bnw
            @Override // defpackage.BiConsumerCallbackInterface
            public final void a(Object obj, Object obj2) {
                GmsInternalParcel bnrVar2 = GmsInternalParcel.this;
                AccountAccessorStubProxy bnvVar = (AccountAccessorStubProxy) ((ClientTelemetryServiceClient) obj).w();
                Parcel a2 = bnvVar.a();
                ServiceBinderHelper.b(a2, bnrVar2);
                bnvVar.d(1, a2);
                ((PreconditionsChecker) obj2).a(null);
            }
        };
        i(a.a());
    }
}
