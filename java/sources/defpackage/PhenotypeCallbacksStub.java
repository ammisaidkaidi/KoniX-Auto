package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeCallbacksStub extends AidlServiceStub implements IInterface {
    private final PreconditionsChecker a;

    public PhenotypeCallbacksStub(PreconditionsChecker brkVar) {
        super("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
        this.a = brkVar;
    }

    public PhenotypeCallbacksStub() {
        super("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
    }

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (NavInstructionTypeEnum) {
            case 1:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 2:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 3:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 4:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (PhenotypeCommitParcel) ServiceBinderHelper.a(parcel, PhenotypeCommitParcel.CREATOR), this.a);
                return true;
            case 5:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 6:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (ExperimentTokensParcel) ServiceBinderHelper.a(parcel, ExperimentTokensParcel.CREATOR), this.a);
                return true;
            case 7:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (PhenotypeTokenParcel) ServiceBinderHelper.a(parcel, PhenotypeTokenParcel.CREATOR), this.a);
                return true;
            case 8:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 9:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (PhenotypeFlagValueParcel) ServiceBinderHelper.a(parcel, PhenotypeFlagValueParcel.CREATOR), this.a);
                return true;
            case 10:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (PhenotypeCommitParcel) ServiceBinderHelper.a(parcel, PhenotypeCommitParcel.CREATOR), this.a);
                return true;
            case 11:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), Long.valueOf(parcel.readLong()), this.a);
                return true;
            case 12:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 13:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), (PhenotypeConfigParcel) ServiceBinderHelper.a(parcel, PhenotypeConfigParcel.CREATOR), this.a);
                return true;
            case 14:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 15:
                ViewCompatApi28Statics.e((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), this.a);
                return true;
            case 16:
                ViewCompatApi28Statics.f((Status) ServiceBinderHelper.a(parcel, Status.CREATOR), Long.valueOf(parcel.readLong()), this.a);
                return true;
            default:
                return false;
        }
    }
}
