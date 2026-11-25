package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PipeTransform implements MobStoreTransform {
    public boolean a = false;

    static {
        new AtomicInteger();
    }

    @Override // defpackage.MobStoreTransform
    public final /* bridge */ /* synthetic */ Object a(BackendFileSpec chkVar) {
        if (this.a) {
            if (chkVar.b.isEmpty()) {
                return chkVar.a.c(chkVar.d);
            }
            throw new MobStoreReadException("Short circuit would skip transforms.");
        }
        CloseableWrapper chwVar = new CloseableWrapper(MobStoreStreamTransform.b(chkVar));
        try {
            Closeable closeable = chwVar.a;
            if (!(closeable instanceof MobStoreFileHandle)) {
                throw new IOException("Not convertible and fallback to pipe is disabled.");
            }
            File a = ((MobStoreFileHandle) closeable).a();
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
