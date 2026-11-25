package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClearcutServiceStubBase extends AidlServiceStub implements IInterface {
    public ClearcutServiceStubBase() {
        super("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    public void b(Status status) {
        throw new UnsupportedOperationException();
    }

    public void c(Status status) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (NavInstructionTypeEnum) {
            case 1:
                c((Status) ServiceBinderHelper.a(parcel, Status.CREATOR));
                return true;
            case 2:
                throw new UnsupportedOperationException();
            case 3:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 4:
                throw new UnsupportedOperationException();
            case 5:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 6:
                throw new UnsupportedOperationException();
            case 7:
                throw new UnsupportedOperationException();
            case 8:
                b((Status) ServiceBinderHelper.a(parcel, Status.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
