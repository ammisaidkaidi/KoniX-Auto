package defpackage;

import android.os.IInterface;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bqq extends asq implements IInterface {
    public bqq() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public void c(bqv bqvVar) {
    }

    @Override // defpackage.asq
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
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
                c((bqv) asr.a(parcel, bqv.CREATOR));
                break;
            case 9:
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
