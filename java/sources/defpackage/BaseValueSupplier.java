package defpackage;

import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BaseValueSupplier implements ValueSupplier {
    @Override // defpackage.ValueSupplier
    public void a(long j) {
        throw null;
    }

    @Override // defpackage.ValueSupplier
    public final void b(CharSequence charSequence, Charset charset) {
        c(charSequence.toString().getBytes(charset));
    }

    @Override // defpackage.ValueSupplier
    public final void c(byte[] bArr) {
        d(bArr, bArr.length);
    }

    public void d(byte[] bArr, int i) {
        throw null;
    }
}
