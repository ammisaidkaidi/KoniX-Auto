package defpackage;

import android.os.IInterface;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SignInCallbacksStub extends AidlServiceStub implements IInterface {
    public SignInCallbacksStub() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public void c(SignInResponseParcel bqvVar) {
    }

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (NavInstructionTypeEnum) {
            case 3:
                break;
            case 4:
                break;
            case 5:
            default:
                return false;
            case 6:
                break;
            case 7:
                break;
            case 8:
                c((SignInResponseParcel) ServiceBinderHelper.a(parcel, SignInResponseParcel.CREATOR));
                break;
            case 9:
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
