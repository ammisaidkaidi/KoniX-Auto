package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import com.google.android.embedded.projection.R;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewCompatCore {
    public static int A(MessageSchema dfgVar, int i, byte[] bArr, int i2, int i3, ProtobufList ddrVar, CodedInputStreamTagReader dcaVar) {
        int z = z(dfgVar, bArr, i2, i3, dcaVar);
        ddrVar.add(dcaVar.c);
        while (IcuMessageFormat < i3) {
            int F = F(bArr, z, dcaVar);
            if (NavInstructionTypeEnum != dcaVar.a) {
                break;
            }
            z = z(dfgVar, bArr, F, i3, dcaVar);
            ddrVar.add(dcaVar.c);
        }
        return z;
    }

    public static int B(byte[] bArr, int i, ProtobufList ddrVar, CodedInputStreamTagReader dcaVar) {
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) ddrVar;
        int F = F(bArr, i, dcaVar);
        int i2 = dcaVar.a + F;
        while (F < i2) {
            F = F(bArr, F, dcaVar);
            ddlVar.g(dcaVar.a);
        }
        if (F == i2) {
            return F;
        }
        throw InvalidProtocolBufferException.i();
    }

    public static int C(byte[] bArr, int i, CodedInputStreamTagReader dcaVar) {
        int F = F(bArr, i, dcaVar);
        int i2 = dcaVar.a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.f();
        }
        if (i2 == 0) {
            dcaVar.c = "";
            return F;
        }
        dcaVar.c = new String(bArr, F, i2, dds.a);
        return F + i2;
    }

    public static int D(byte[] bArr, int i, CodedInputStreamTagReader dcaVar) {
        int F = F(bArr, i, dcaVar);
        int i2 = dcaVar.a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.f();
        }
        if (i2 == 0) {
            dcaVar.c = "";
            return F;
        }
        dcaVar.c = Utf8EncoderUtil.f(bArr, F, i2);
        return F + i2;
    }

    public static int E(int i, byte[] bArr, int i2, int i3, ProtoFieldDescriptor dfrVar, CodedInputStreamTagReader dcaVar) {
        if (GeneratedEnumUtil.a(NavInstructionTypeEnum) == 0) {
            throw InvalidProtocolBufferException.c();
        }
        switch (GeneratedEnumUtil.b(NavInstructionTypeEnum)) {
            case 0:
                int I = I(bArr, i2, dcaVar);
                dfrVar.d(i, Long.valueOf(dcaVar.b));
                return I;
            case 1:
                dfrVar.d(i, Long.valueOf(K(bArr, i2)));
                return i2 + 8;
            case 2:
                int F = F(bArr, i2, dcaVar);
                int i4 = dcaVar.a;
                if (i4 < 0) {
                    throw InvalidProtocolBufferException.f();
                }
                if (i4 > bArr.length - F) {
                    throw InvalidProtocolBufferException.i();
                }
                if (i4 == 0) {
                    dfrVar.d(i, dcl.b);
                } else {
                    dfrVar.d(i, ByteString.u(bArr, F, i4));
                }
                return F + i4;
            case 3:
                int i5 = (NavInstructionTypeEnum & (-8)) | 4;
                ProtoFieldDescriptor b = ProtoFieldDescriptor.b();
                int i6 = 0;
                while (true) {
                    if (i2 < i3) {
                        int F2 = F(bArr, i2, dcaVar);
                        int i7 = dcaVar.a;
                        if (i7 == i5) {
                            i6 = i7;
                            i2 = F2;
                        } else {
                            i6 = i7;
                            i2 = E(i7, bArr, F2, i3, b, dcaVar);
                        }
                    }
                }
                if (i2 > i3 || i6 != i5) {
                    throw InvalidProtocolBufferException.g();
                }
                dfrVar.d(i, b);
                return i2;
            case 4:
            default:
                throw InvalidProtocolBufferException.c();
            case 5:
                dfrVar.d(i, Integer.valueOf(x(bArr, i2)));
                return i2 + 4;
        }
    }

    public static int F(byte[] bArr, int i, CodedInputStreamTagReader dcaVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (ProtoLiteMessageBase < 0) {
            return G(b, bArr, i2, dcaVar);
        }
        dcaVar.a = b;
        return i2;
    }

    public static int G(int i, byte[] bArr, int i2, CodedInputStreamTagReader dcaVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (ProtoLiteMessageBase >= 0) {
            dcaVar.a = i3 | (ProtoLiteMessageBase << 7);
            return i4;
        }
        int i5 = i3 | ((ProtoLiteMessageBase & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            dcaVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            dcaVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            dcaVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                dcaVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int H(int i, byte[] bArr, int i2, int i3, ProtobufList ddrVar, CodedInputStreamTagReader dcaVar) {
        LazyStringArrayListImpl ddlVar = (LazyStringArrayListImpl) ddrVar;
        int F = F(bArr, i2, dcaVar);
        ddlVar.g(dcaVar.a);
        while (F < i3) {
            int F2 = F(bArr, F, dcaVar);
            if (NavInstructionTypeEnum != dcaVar.a) {
                break;
            }
            F = F(bArr, F2, dcaVar);
            ddlVar.g(dcaVar.a);
        }
        return F;
    }

    public static int I(byte[] bArr, int i, CodedInputStreamTagReader dcaVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (ProtoMessageTwoIntsAndFlagValue >= 0) {
            dcaVar.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (ProtoMessageTwoIntsAndFlagValue & 127) | ((ProtoLiteMessageBase & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (ProtoLiteMessageBase < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        dcaVar.b = j2;
        return i3;
    }

    public static int J(int i, byte[] bArr, int i2, int i3, CodedInputStreamTagReader dcaVar) {
        if (GeneratedEnumUtil.a(NavInstructionTypeEnum) == 0) {
            throw InvalidProtocolBufferException.c();
        }
        switch (GeneratedEnumUtil.b(NavInstructionTypeEnum)) {
            case 0:
                return I(bArr, i2, dcaVar);
            case 1:
                return i2 + 8;
            case 2:
                return F(bArr, i2, dcaVar) + dcaVar.a;
            case 3:
                int i4 = (NavInstructionTypeEnum & (-8)) | 4;
                int i5 = 0;
                while (i2 < i3) {
                    i2 = F(bArr, i2, dcaVar);
                    i5 = dcaVar.a;
                    if (i5 == i4) {
                        if (i2 <= i3 || i5 != i4) {
                            throw InvalidProtocolBufferException.g();
                        }
                        return i2;
                    }
                    i2 = J(i5, bArr, i2, i3, dcaVar);
                }
                if (i2 <= i3) {
                }
                throw InvalidProtocolBufferException.g();
            case 4:
            default:
                throw InvalidProtocolBufferException.c();
            case 5:
                return i2 + 4;
        }
    }

    public static long K(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int L(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            default:
                return 0;
        }
    }

    static ColorStateList a(View view) {
        return view.getBackgroundTintList();
    }

    static PorterDuff.Mode b(View view) {
        return view.getBackgroundTintMode();
    }

    static AccessibilityNodeProviderHelper c(View view, AccessibilityNodeProviderHelper ihVar, Rect rect) {
        WindowInsets m = ihVar.m();
        if (ProtoCompositeMessageM != null) {
            return AccessibilityNodeProviderHelper.l(view.computeSystemWindowInsets(m, rect), view);
        }
        rect.setEmpty();
        return ihVar;
    }

    static void d(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    static void e(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    static void f(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    static void g(View view, float f) {
        view.setElevation(NavManeuverTypeEnum);
    }

    static void h(View view, ApplyWindowInsetsListenerInterface gxVar) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, gxVar);
        }
        view.setOnApplyWindowInsetsListener(new ApplyInsetsListenerAdapter(view, gxVar));
    }

    static void i(View view) {
        view.stopNestedScroll();
    }

    public static final int j(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (NavInstructionTypeEnum >= 500) {
            return 4;
        }
        if (NavInstructionTypeEnum <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public static final boolean k(Context context) {
        return context.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    public static int l(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int i2;
        int i3 = 5;
        if (bArr != null) {
            int i4 = 0;
            while (i4 < 5) {
                bArr[i4] = byteBuffer.get(i4 + i);
                i4++;
            }
            i3 = i4;
        }
        while (true) {
            i2 = i3 + i;
            if (i2 >= byteBuffer.capacity() - 3 || byteBuffer.getInt(i2) == 1) {
                break;
            }
            if (bArr != null) {
                bArr[i3] = byteBuffer.get(i2);
            }
            i3++;
        }
        if (i2 >= byteBuffer.capacity() - 3) {
            while (true) {
                int i5 = i3 + i;
                if (i5 >= byteBuffer.capacity()) {
                    break;
                }
                if (bArr != null) {
                    bArr[i3] = byteBuffer.get(i5);
                }
                i3++;
            }
        }
        return i3;
    }

    public static final NetworkInterfaceWrapper m(String str) {
        NetworkInterface byName = NetworkInterface.getByName(str);
        if (byName == null) {
            return null;
        }
        return new NetworkInterfaceWrapper(byName);
    }

    public static void n(Map.Entry entry) {
    }

    public static MessageFieldReflectionUtil o(Object obj) {
        return ((ProtoMsgWithAndroidBuildData) obj).d;
    }

    public static MessageFieldReflectionUtil p(Object obj) {
        return ((ProtoMsgWithAndroidBuildData) obj).c();
    }

    public static void q(ProtoFieldParser dfcVar, Object obj, ExtensionRegistryLite dczVar, MessageFieldReflectionUtil ddbVar) {
        ProtoParserFactory dcxVar = (ProtoParserFactory) obj;
        ddbVar.l(dcxVar.d, dfcVar.t(dcxVar.c.getClass(), dczVar));
    }

    public static void r(ByteStringOutputCollector dcvVar, Map.Entry entry) {
        ProtoFieldType dgcVar = ProtoFieldType.DOUBLE;
        switch (r0.c) {
            case DOUBLE:
                dcvVar.c(334728578, ((Double) entry.getValue()).doubleValue());
                break;
            case FLOAT:
                dcvVar.g(334728578, ((Float) entry.getValue()).floatValue());
                break;
            case INT64:
                dcvVar.j(334728578, ((Long) entry.getValue()).longValue());
                break;
            case UINT64:
                dcvVar.s(334728578, ((Long) entry.getValue()).longValue());
                break;
            case INT32:
                dcvVar.i(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case FIXED64:
                dcvVar.f(334728578, ((Long) entry.getValue()).longValue());
                break;
            case FIXED32:
                dcvVar.e(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case BOOL:
                dcvVar.a(334728578, ((Boolean) entry.getValue()).booleanValue());
                break;
            case STRING:
                dcvVar.q(334728578, (String) entry.getValue());
                break;
            case GROUP:
                dcvVar.h(334728578, entry.getValue(), MessageInfoImpl.a.a(entry.getValue().getClass()));
                break;
            case MESSAGE:
                dcvVar.k(334728578, entry.getValue(), MessageInfoImpl.a.a(entry.getValue().getClass()));
                break;
            case BYTES:
                dcvVar.b(334728578, (ByteString) entry.getValue());
                break;
            case UINT32:
                dcvVar.r(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case ENUM:
                dcvVar.i(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case SFIXED32:
                dcvVar.m(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case SFIXED64:
                dcvVar.n(334728578, ((Long) entry.getValue()).longValue());
                break;
            case SINT32:
                dcvVar.o(334728578, ((Integer) entry.getValue()).intValue());
                break;
            case SINT64:
                dcvVar.p(334728578, ((Long) entry.getValue()).longValue());
                break;
        }
    }

    public static final void s(Object obj) {
        o(obj).e();
    }

    public static final ByteString t(CodedOutputStream dcuVar, byte[] bArr) {
        dcuVar.ak();
        return new LiteralByteString(bArr);
    }

    public static double u(byte[] bArr, int i) {
        return Double.longBitsToDouble(K(bArr, i));
    }

    public static float v(byte[] bArr, int i) {
        return Float.intBitsToFloat(x(bArr, i));
    }

    public static int w(byte[] bArr, int i, CodedInputStreamTagReader dcaVar) {
        int F = F(bArr, i, dcaVar);
        int i2 = dcaVar.a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.f();
        }
        if (i2 > bArr.length - F) {
            throw InvalidProtocolBufferException.i();
        }
        if (i2 == 0) {
            dcaVar.c = dcl.b;
            return F;
        }
        dcaVar.c = ByteString.u(bArr, F, i2);
        return F + i2;
    }

    public static int x(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int y(MessageSchema dfgVar, byte[] bArr, int i, int i2, int i3, CodedInputStreamTagReader dcaVar) {
        MessageSchemaImpl detVar = (MessageSchemaImpl) dfgVar;
        Object e = detVar.e();
        int c = detVar.c(e, bArr, i, i2, i3, dcaVar);
        detVar.f(ProtoFlagValueMessage);
        dcaVar.c = e;
        return c;
    }

    public static int z(MessageSchema dfgVar, byte[] bArr, int i, int i2, CodedInputStreamTagReader dcaVar) {
        int i3;
        int i4 = i + 1;
        int i5 = bArr[i];
        if (i5 < 0) {
            int G = G(i5, bArr, i4, dcaVar);
            i5 = dcaVar.a;
            i3 = G;
        } else {
            i3 = i4;
        }
        if (i5 < 0 || i5 > i2 - i3) {
            throw InvalidProtocolBufferException.i();
        }
        Object e = dfgVar.e();
        int i6 = i5 + i3;
        dfgVar.i(e, bArr, i3, i6, dcaVar);
        dfgVar.f(ProtoFlagValueMessage);
        dcaVar.c = e;
        return i6;
    }
}
