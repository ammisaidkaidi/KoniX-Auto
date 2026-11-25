package defpackage;

import android.os.Trace;
import android.util.Log;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clt extends cls {
    final /* synthetic */ clv c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public clt(clv clvVar, clz clzVar) {
        super(clvVar, "ReaderThread", clzVar);
        this.c = clvVar;
    }

    private final int b(byte[] bArr, int i, int i2) {
        Trace.beginSection("read");
        int i3 = 0;
        while (i3 < i2 && !this.c.b()) {
            try {
                int a = this.a.a(bArr, i + i3, i2 - i3);
                if (a > 0) {
                    i3 += a;
                }
            } catch (IOException e) {
                Log.e("AHU.GAL_RECEIVER", "Caught exception on read. Exiting.".concat(e.toString()));
                if (!this.c.b()) {
                    this.c.c(cly.CONNECTION_ERROR);
                }
            }
        }
        Trace.endSection();
        return i3;
    }

    @Override // defpackage.cls
    public final void a() {
        byte[] bArr = new byte[65544];
        while (!this.c.b()) {
            Trace.beginSection("readerThread");
            int b = b(bArr, 0, 4);
            if (b != 4) {
                StringBuilder sb = new StringBuilder(43);
                sb.append("read returned ");
                sb.append(b);
                sb.append(" while expecting 4");
                Log.e("AHU.GAL_RECEIVER", sb.toString());
                return;
            }
            int nativeGetAdditionalBytesToRead = this.c.g.b.nativeGetAdditionalBytesToRead(bArr);
            int b2 = b(bArr, 4, nativeGetAdditionalBytesToRead);
            if (b2 != nativeGetAdditionalBytesToRead) {
                StringBuilder sb2 = new StringBuilder(53);
                sb2.append("read returned ");
                sb2.append(b2);
                sb2.append(" while expecting ");
                sb2.append(nativeGetAdditionalBytesToRead);
                Log.e("AHU.GAL_RECEIVER", sb2.toString());
                return;
            }
            if (!this.c.b()) {
                this.c.g.b.nativeQueueIncoming(bArr, nativeGetAdditionalBytesToRead + 4);
            }
            Trace.endSection();
        }
    }
}
