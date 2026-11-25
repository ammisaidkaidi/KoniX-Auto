package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class dbv implements der {
    public int q = 0;

    static final dfq i() {
        return new dfq();
    }

    public int d() {
        throw null;
    }

    @Override // defpackage.der
    public final dcl e() {
        try {
            int m = m();
            dcl dclVar = dcl.b;
            byte[] bArr = new byte[m];
            dcu ai = dcu.ai(bArr);
            aG(ai);
            return hl.t(ai, bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public void f(int i) {
        throw null;
    }

    @Override // defpackage.der
    public final void g(OutputStream outputStream) {
        dcu aj = dcu.aj(outputStream, dcu.U(m()));
        aG(aj);
        dcr dcrVar = (dcr) aj;
        if (dcrVar.c > 0) {
            dcrVar.i();
        }
    }

    @Override // defpackage.der
    public final byte[] h() {
        try {
            byte[] bArr = new byte[m()];
            dcu ai = dcu.ai(bArr);
            aG(ai);
            ai.ak();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
