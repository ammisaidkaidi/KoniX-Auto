package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class bkn extends bkm {
    protected final brk a;

    public bkn(brk brkVar) {
        super(4);
        this.a = brkVar;
    }

    protected abstract void c(blj bljVar);

    @Override // defpackage.bkr
    public final void d(Status status) {
        this.a.b(new bjz(status));
    }

    @Override // defpackage.bkr
    public final void e(Exception exc) {
        this.a.b(exc);
    }

    @Override // defpackage.bkr
    public final void f(blj bljVar) {
        try {
            c(bljVar);
        } catch (DeadObjectException e) {
            d(bkr.h(e));
            throw e;
        } catch (RemoteException e2) {
            d(bkr.h(e2));
        } catch (RuntimeException e3) {
            e(e3);
        }
    }

    @Override // defpackage.bkr
    public void g(blb blbVar, boolean z) {
    }
}
