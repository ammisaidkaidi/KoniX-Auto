package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bkp extends bkm {
    private final bmc a;
    private final brk b;

    public bkp(int i, bmc bmcVar, brk brkVar) {
        super(i);
        this.b = brkVar;
        this.a = bmcVar;
        if (i == 2 && bmcVar.b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // defpackage.bkm
    public final boolean a(blj bljVar) {
        return this.a.b;
    }

    @Override // defpackage.bkm
    public final bjb[] b(blj bljVar) {
        return this.a.a;
    }

    @Override // defpackage.bkr
    public final void e(Exception exc) {
        this.b.b(exc);
    }

    @Override // defpackage.bkr
    public final void f(blj bljVar) {
        try {
            bmc bmcVar = this.a;
            bmcVar.d.a.a(bljVar.b, this.b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            d(bkr.h(e2));
        } catch (RuntimeException e3) {
            e(e3);
        }
    }

    @Override // defpackage.bkr
    public final void g(blb blbVar, boolean z) {
        brk brkVar = this.b;
        blbVar.b.put(brkVar, Boolean.valueOf(z));
        brkVar.a.e(new bla(blbVar, brkVar));
    }

    @Override // defpackage.bkr
    public final void d(Status status) {
        this.b.b(status.g != null ? new bkh(status) : new bjz(status));
    }
}
