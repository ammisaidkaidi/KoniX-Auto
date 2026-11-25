package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StatusCallbackStub extends AidlServiceStub implements IInterface {
    final /* synthetic */ PreconditionsChecker a;
    private final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public StatusCallbackStub(PreconditionsChecker brkVar, int i, byte[] bArr) {
        super("com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
        this.b = i;
        this.a = brkVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public StatusCallbackStub(PreconditionsChecker brkVar, int i) {
        super("com.google.android.gms.common.api.internal.IStatusCallback");
        this.b = i;
        this.a = brkVar;
    }

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (this.b) {
            case 0:
                if (NavInstructionTypeEnum == 1) {
                    GoogleAuthServiceClient.a((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), null, this.a);
                    break;
                }
                break;
            default:
                if (NavInstructionTypeEnum == 2) {
                    GoogleAuthServiceClient.a((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (Bundle) ServiceBinderHelper.a(parcel, Bundle.CREATOR), this.a);
                    break;
                }
                break;
        }
        return true;
    }
}
