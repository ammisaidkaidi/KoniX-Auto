package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cid implements chl {
    public boolean a = false;

    static {
        new AtomicInteger();
    }

    @Override // defpackage.chl
    public final /* bridge */ /* synthetic */ Object a(chk chkVar) {
        if (this.a) {
            if (chkVar.b.isEmpty()) {
                return chkVar.a.c(chkVar.d);
            }
            throw new chx("Short circuit would skip transforms.");
        }
        chw chwVar = new chw(cie.b(chkVar));
        try {
            Closeable closeable = chwVar.a;
            if (!(closeable instanceof cht)) {
                throw new IOException("Not convertible and fallback to pipe is disabled.");
            }
            File a = ((cht) closeable).a();
            chwVar.close();
            return a;
        } catch (Throwable th) {
            try {
                chwVar.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }
}
