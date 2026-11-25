package defpackage;

import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cwr implements cwv {
    @Override // defpackage.cwv
    public void a(long j) {
        throw null;
    }

    @Override // defpackage.cwv
    public final void b(CharSequence charSequence, Charset charset) {
        c(charSequence.toString().getBytes(charset));
    }

    @Override // defpackage.cwv
    public final void c(byte[] bArr) {
        d(bArr, bArr.length);
    }

    public void d(byte[] bArr, int i) {
        throw null;
    }
}
