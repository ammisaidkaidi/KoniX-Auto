package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cmb extends clz {
    private final InputStream a;
    private final OutputStream b;

    public cmb(InputStream inputStream, OutputStream outputStream) {
        this.a = inputStream;
        this.b = outputStream;
    }

    @Override // defpackage.clz
    public final int a(byte[] bArr, int i, int i2) {
        return this.a.read(bArr, i, i2);
    }

    @Override // defpackage.clz
    public void b(cly clyVar) {
        try {
            this.a.close();
            this.b.close();
        } catch (IOException e) {
            cjz.d("AHU.TRANSPORT", "Failed to close streams: ".concat(e.toString()));
        }
    }

    @Override // defpackage.clz
    public final void c(byte[] bArr, int i) {
        this.b.write(bArr, 0, i);
    }
}
