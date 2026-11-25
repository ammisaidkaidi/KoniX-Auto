package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoCharsetUtil {
    public static final Charset a;
    public static final byte[] b;
    public static final ByteBuffer c;

    static {
        Charset.forName("US-ASCII");
        a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        c = ByteBuffer.wrap(bArr);
        CodedInputStreamReaderBase.I(bArr);
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        int d = d(length, bArr, 0, length);
        if (ProtoMsgIntStringInt == 0) {
            return 1;
        }
        return d;
    }

    public static int c(long j) {
        return (int) (ProtoMessageTwoIntsAndFlagValue ^ (ProtoMessageTwoIntsAndFlagValue >>> 32));
    }

    static int d(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (NavInstructionTypeEnum * 31) + bArr[i4];
        }
        return i;
    }

    static Object e(Object obj, Object obj2) {
        return ((MessageLite) obj).aH().c((MessageLite) obj2).i();
    }

    public static String f(byte[] bArr) {
        return new String(bArr, a);
    }

    public static boolean g(byte[] bArr) {
        ProtoTextFormatPrinterUtil evVar = dgb.a;
        return ev.B(bArr, 0, bArr.length);
    }

    static void h(Object obj) {
        if (obj == null) {
            throw null;
        }
    }

    static void i(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    static void j(MessageLite derVar) {
        if (derVar instanceof ProtoMessageBuilderImplBase) {
            throw null;
        }
    }
}
