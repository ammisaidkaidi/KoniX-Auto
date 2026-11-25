package defpackage;

import android.os.Trace;
import android.util.Log;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clu extends cls {
    final /* synthetic */ clv c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public clu(clv clvVar, clz clzVar) {
        super(clvVar, "WriterThread", clzVar);
        this.c = clvVar;
    }

    @Override // defpackage.cls
    public final void a() {
        byte[] bArr = new byte[65544];
        while (!this.c.b()) {
            try {
                Trace.beginSection("writerThread");
                clo cloVar = this.c.g;
                int nativeGetEncodedFrame = cloVar.b.nativeGetEncodedFrame(bArr);
                int i = 0;
                if (nativeGetEncodedFrame == 0) {
                    if (!cloVar.b.e || cloVar.a == null) {
                        nativeGetEncodedFrame = 0;
                    } else {
                        cloVar.b.nativePrepareShutdown();
                        cloVar.a.run();
                        nativeGetEncodedFrame = 0;
                    }
                }
                if (nativeGetEncodedFrame == 0) {
                    return;
                }
                Trace.beginSection("write");
                while (i < 10 && !this.c.b()) {
                    try {
                        this.a.c(bArr, nativeGetEncodedFrame);
                        break;
                    } catch (IOException e) {
                        i++;
                        String obj = e.toString();
                        StringBuilder sb = new StringBuilder(obj.length() + 51);
                        sb.append("IOException while writing, retryCount: ");
                        sb.append(i);
                        sb.append(" ");
                        sb.append(obj);
                        Log.w("AHU.GAL_RECEIVER", sb.toString());
                    }
                }
                if (i >= 10) {
                    throw new IOException("max retry reached");
                }
                Trace.endSection();
                Trace.endSection();
            } catch (IOException e2) {
                Log.e("AHU.GAL_RECEIVER", "Caught exception on write. Exiting.".concat(e2.toString()));
                this.c.c(cly.CONNECTION_ERROR);
                return;
            }
        }
    }
}
