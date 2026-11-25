package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ProtoMessageLiteBase implements MessageLite {
    public int q = 0;

    static final UninitializedMessageException i() {
        return new UninitializedMessageException();
    }

    public int d() {
        throw null;
    }

    @Override // defpackage.MessageLite
    public final ByteString e() {
        try {
            int m = m();
            ByteString dclVar = dcl.b;
            byte[] bArr = new byte[m];
            CodedOutputStream ai = CodedOutputStream.ai(bArr);
            aG(DecimalRangeCondition);
            return ViewCompatCore.t(ai, bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            StaggeredGridLayoutParams.append("Serializing ");
            StaggeredGridLayoutParams.append(name);
            StaggeredGridLayoutParams.append(" to a ByteString threw PluralRuleParser IOException (should never happen).");
            throw new RuntimeException(StaggeredGridLayoutParams.toString(), e);
        }
    }

    public void f(int i) {
        throw null;
    }

    @Override // defpackage.MessageLite
    public final void g(OutputStream outputStream) {
        CodedOutputStream aj = CodedOutputStream.aj(outputStream, CodedOutputStream.U(m()));
        aG(PluralRuleExpression);
        CodedOutputStreamArrayWriter dcrVar = (CodedOutputStreamArrayWriter) aj;
        if (dcrVar.c > 0) {
            dcrVar.i();
        }
    }

    @Override // defpackage.MessageLite
    public final byte[] h() {
        try {
            byte[] bArr = new byte[m()];
            CodedOutputStream ai = CodedOutputStream.ai(bArr);
            aG(DecimalRangeCondition);
            DecimalRangeCondition.ak();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 72);
            StaggeredGridLayoutParams.append("Serializing ");
            StaggeredGridLayoutParams.append(name);
            StaggeredGridLayoutParams.append(" to a byte array threw PluralRuleParser IOException (should never happen).");
            throw new RuntimeException(StaggeredGridLayoutParams.toString(), e);
        }
    }
}
