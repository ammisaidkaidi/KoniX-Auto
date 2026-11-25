package defpackage;

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class CodedOutputStream extends ByteOutputSink {
    private static final Logger a = Logger.getLogger(CodedOutputStream.class.getName());
    public static final boolean e = dfz.a;
    ByteStringOutputCollector f;

    public static int G(byte[] bArr) {
        return R(bArr.length);
    }

    public static int H(int i, ByteString dclVar) {
        return ab(NavInstructionTypeEnum) + I(dclVar);
    }

    public static int I(ByteString dclVar) {
        return R(dclVar.d());
    }

    public static int J(int i, int i2) {
        return ab(NavInstructionTypeEnum) + N(i2);
    }

    @Deprecated
    static int K(int i, MessageLite derVar, MessageSchema dfgVar) {
        int ab = ab(NavInstructionTypeEnum);
        int i2 = ab + ab;
        ProtoMessageLiteBase dbvVar = (ProtoMessageLiteBase) derVar;
        int d = dbvVar.d();
        if (ProtoMsgIntStringInt == -1) {
            d = dfgVar.a(dbvVar);
            dbvVar.f(ProtoMsgIntStringInt);
        }
        return i2 + d;
    }

    @Deprecated
    public static int L(MessageLite derVar) {
        return derVar.m();
    }

    public static int M(int i, int i2) {
        return ab(NavInstructionTypeEnum) + N(i2);
    }

    public static int N(int i) {
        if (NavInstructionTypeEnum >= 0) {
            return ad(NavInstructionTypeEnum);
        }
        return 10;
    }

    public static int O(int i, long j) {
        return ab(NavInstructionTypeEnum) + af(ProtoMessageTwoIntsAndFlagValue);
    }

    public static int P(int i, ProtoMapFieldBase deaVar) {
        return ab(NavInstructionTypeEnum) + Q(deaVar);
    }

    public static int Q(ProtoMapFieldBase deaVar) {
        return R(deaVar.b != null ? deaVar.b.d() : deaVar.a != null ? deaVar.a.m() : 0);
    }

    public static int R(int i) {
        return ad(NavInstructionTypeEnum) + i;
    }

    public static int S(MessageLite derVar) {
        return R(derVar.m());
    }

    static int T(MessageLite derVar, MessageSchema dfgVar) {
        ProtoMessageLiteBase dbvVar = (ProtoMessageLiteBase) derVar;
        int d = dbvVar.d();
        if (ProtoMsgIntStringInt == -1) {
            d = dfgVar.a(dbvVar);
            dbvVar.f(ProtoMsgIntStringInt);
        }
        return R(ProtoMsgIntStringInt);
    }

    static int U(int i) {
        if (NavInstructionTypeEnum > 4096) {
            return 4096;
        }
        return i;
    }

    public static int V(int i, int i2) {
        return ab(NavInstructionTypeEnum) + W(i2);
    }

    public static int W(int i) {
        return ad(ag(NavInstructionTypeEnum));
    }

    public static int X(int i, long j) {
        return ab(NavInstructionTypeEnum) + Y(ProtoMessageTwoIntsAndFlagValue);
    }

    public static int Y(long j) {
        return af(ah(ProtoMessageTwoIntsAndFlagValue));
    }

    public static int Z(int i, String str) {
        return ab(NavInstructionTypeEnum) + aa(str);
    }

    public static int aA(int i) {
        return ab(NavInstructionTypeEnum) + 4;
    }

    public static int aB(int i) {
        return ab(NavInstructionTypeEnum) + 8;
    }

    public static int aa(String str) {
        int length;
        try {
            length = Utf8EncoderUtil.b(str);
        } catch (UnpairedSurrogateException e2) {
            length = str.getBytes(dds.a).length;
        }
        return R(length);
    }

    public static int ab(int i) {
        return ad(GeneratedEnumUtil.c(i, 0));
    }

    public static int ac(int i, int i2) {
        return ab(NavInstructionTypeEnum) + ad(i2);
    }

    public static int ad(int i) {
        if ((NavInstructionTypeEnum & (-128)) == 0) {
            return 1;
        }
        if ((NavInstructionTypeEnum & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (NavInstructionTypeEnum & (-268435456)) == 0 ? 4 : 5;
    }

    public static int ae(int i, long j) {
        return ab(NavInstructionTypeEnum) + af(ProtoMessageTwoIntsAndFlagValue);
    }

    public static int af(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (ProtoMessageTwoIntsAndFlagValue < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (ProtoMessageTwoIntsAndFlagValue & (-16384)) != 0 ? i + 1 : i;
    }

    public static int ag(int i) {
        return (NavInstructionTypeEnum >> 31) ^ (NavInstructionTypeEnum + i);
    }

    public static long ah(long j) {
        return (ProtoMessageTwoIntsAndFlagValue >> 63) ^ (ProtoMessageTwoIntsAndFlagValue + j);
    }

    public static CodedOutputStream ai(byte[] bArr) {
        return new CodedOutputStreamByteBufferWriter(bArr, bArr.length);
    }

    public static CodedOutputStream aj(OutputStream outputStream, int i) {
        return new CodedOutputStreamArrayWriter(outputStream, i);
    }

    public static int av(int i) {
        return ab(NavInstructionTypeEnum) + 1;
    }

    public static int aw(int i) {
        return ab(NavInstructionTypeEnum) + 8;
    }

    public static int ax(int i) {
        return ab(NavInstructionTypeEnum) + 4;
    }

    public static int ay(int i) {
        return ab(NavInstructionTypeEnum) + 8;
    }

    public static int az(int i) {
        return ab(NavInstructionTypeEnum) + 4;
    }

    public abstract void A(int i, int i2);

    public abstract void B(int i, int i2);

    public abstract void C(int i);

    public abstract void D(int i, long j);

    public abstract void E(long j);

    public abstract void F(byte[] bArr, int i);

    @Override // defpackage.ByteOutputSink
    public abstract void a(byte[] bArr, int i, int i2);

    public final void ak() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void al(String str, UnpairedSurrogateException dgaVar) {
        a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dgaVar);
        byte[] bytes = str.getBytes(dds.a);
        try {
            int length = bytes.length;
            C(length);
            a(bytes, 0, length);
        } catch (CodedOutputStreamOutOfSpace e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new CodedOutputStreamOutOfSpace(e3);
        }
    }

    public final void am(int i, double d) {
        q(i, Double.doubleToRawLongBits(ProtoMsgIntStringInt));
    }

    public final void an(double d) {
        r(Double.doubleToRawLongBits(ProtoMsgIntStringInt));
    }

    public final void ao(int i, float f) {
        o(i, Float.floatToRawIntBits(NavManeuverTypeEnum));
    }

    public final void ap(float f) {
        p(Float.floatToRawIntBits(NavManeuverTypeEnum));
    }

    @Deprecated
    public final void aq(MessageLite derVar) {
        derVar.aG(this);
    }

    public final void ar(int i, int i2) {
        B(i, ag(i2));
    }

    public final void as(int i) {
        C(ag(NavInstructionTypeEnum));
    }

    public final void at(int i, long j) {
        D(i, ah(ProtoMessageTwoIntsAndFlagValue));
    }

    public final void au(long j) {
        E(ah(ProtoMessageTwoIntsAndFlagValue));
    }

    public abstract int b();

    public abstract void j(byte b);

    public abstract void l(int i, boolean z);

    public abstract void m(int i, ByteString dclVar);

    public abstract void n(ByteString dclVar);

    public abstract void o(int i, int i2);

    public abstract void p(int i);

    public abstract void q(int i, long j);

    public abstract void r(long j);

    public abstract void s(int i, int i2);

    public abstract void t(int i);

    public abstract void u(int i, MessageLite derVar, MessageSchema dfgVar);

    public abstract void v(MessageLite derVar);

    public abstract void w(int i, MessageLite derVar);

    public abstract void x(int i, ByteString dclVar);

    public abstract void y(int i, String str);

    public abstract void z(String str);
}
