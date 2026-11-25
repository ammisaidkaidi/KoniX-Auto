package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bku extends BasePendingResult {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected bku(bkf bkfVar) {
        super(bkfVar);
        hr.m(bkfVar, "GoogleApiClient must not be null");
    }

    private final void g(RemoteException remoteException) {
        j(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    protected abstract void h(bjs bjsVar);

    public final void i(bjs bjsVar) {
        try {
            h(bjsVar);
        } catch (DeadObjectException e) {
            g(e);
            throw e;
        } catch (RemoteException e2) {
            g(e2);
        }
    }

    public final void j(Status status) {
        hr.f(!status.b(), "Failed result must not be success");
        n(status);
    }
}
