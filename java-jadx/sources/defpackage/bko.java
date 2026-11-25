package defpackage;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bko extends bkr {
    protected final bku a;

    public bko(bku bkuVar) {
        super(2);
        this.a = bkuVar;
    }

    @Override // defpackage.bkr
    public final void d(Status status) {
        try {
            this.a.j(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.bkr
    public final void e(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.a.j(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.bkr
    public final void f(blj bljVar) {
        try {
            this.a.i(bljVar.b);
        } catch (RuntimeException e) {
            e(e);
        }
    }

    @Override // defpackage.bkr
    public final void g(blb blbVar, boolean z) {
        bku bkuVar = this.a;
        blbVar.a.put(bkuVar, Boolean.valueOf(z));
        bkz bkzVar = new bkz(blbVar, bkuVar);
        hr.f(true, "Callback cannot be null.");
        synchronized (bkuVar.c) {
            if (bkuVar.o()) {
                bkzVar.a();
            } else {
                bkuVar.e.add(bkzVar);
            }
        }
    }
}
