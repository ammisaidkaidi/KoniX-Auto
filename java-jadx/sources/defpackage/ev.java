package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.os.Process;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.preference.Preference;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ev {
    public static int A(int i, byte[] bArr, int i2, int i3) {
        int i4;
        if (i != 0) {
            if (i2 >= i3) {
                return i;
            }
            byte b = (byte) i;
            if (b < -32) {
                if (b >= -62) {
                    int i5 = i2 + 1;
                    if (bArr[i2] <= -65) {
                        i2 = i5;
                    }
                }
                return -1;
            }
            if (b < -16) {
                byte b2 = (byte) ((i >> 8) ^ (-1));
                if (b2 == 0) {
                    int i6 = i2 + 1;
                    byte b3 = bArr[i2];
                    if (i6 >= i3) {
                        return dgb.c(b, b3);
                    }
                    i2 = i6;
                    b2 = b3;
                }
                if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                    int i7 = i2 + 1;
                    if (bArr[i2] <= -65) {
                        i2 = i7;
                    }
                }
                return -1;
            }
            byte b4 = (byte) ((i >> 8) ^ (-1));
            if (b4 == 0) {
                int i8 = i2 + 1;
                b4 = bArr[i2];
                if (i8 >= i3) {
                    return dgb.c(b, b4);
                }
                i2 = i8;
                i4 = 0;
            } else {
                i4 = i >> 16;
            }
            if (i4 == 0) {
                int i9 = i2 + 1;
                byte b5 = bArr[i2];
                if (i9 >= i3) {
                    return dgb.d(b, b4, b5);
                }
                i2 = i9;
                i4 = b5;
            }
            if (b4 <= -65 && (((b << 28) + (b4 + 112)) >> 30) == 0 && i4 <= -65) {
                int i10 = i2 + 1;
                if (bArr[i2] <= -65) {
                    i2 = i10;
                }
            }
            return -1;
        }
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 >= i3) {
            return 0;
        }
        while (i2 < i3) {
            int i11 = i2 + 1;
            byte b6 = bArr[i2];
            if (b6 < 0) {
                if (b6 < -32) {
                    if (i11 >= i3) {
                        return b6;
                    }
                    if (b6 >= -62) {
                        i2 = i11 + 1;
                        if (bArr[i11] > -65) {
                        }
                    }
                    return -1;
                }
                if (b6 >= -16) {
                    if (i11 >= i3 - 2) {
                        return dgb.e(bArr, i11, i3);
                    }
                    int i12 = i11 + 1;
                    byte b7 = bArr[i11];
                    if (b7 <= -65 && (((b6 << 28) + (b7 + 112)) >> 30) == 0) {
                        int i13 = i12 + 1;
                        if (bArr[i12] <= -65) {
                            i2 = i13 + 1;
                            if (bArr[i13] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i11 >= i3 - 1) {
                    return dgb.e(bArr, i11, i3);
                }
                int i14 = i11 + 1;
                byte b8 = bArr[i11];
                if (b8 <= -65 && ((b6 != -32 || b8 >= -96) && (b6 != -19 || b8 < -96))) {
                    i2 = i14 + 1;
                    if (bArr[i14] > -65) {
                    }
                }
                return -1;
            }
            i2 = i11;
        }
        return 0;
    }

    public static boolean B(byte[] bArr, int i, int i2) {
        return A(0, bArr, i, i2) == 0;
    }

    public static void C(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (ab(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || ab(b3) || ab(b4)) {
            throw ddu.d();
        }
        int aa = ((b & 7) << 18) | (aa(b2) << 12) | (aa(b3) << 6) | aa(b4);
        cArr[i] = (char) ((aa >>> 10) + 55232);
        cArr[i + 1] = (char) ((aa & 1023) + 56320);
    }

    public static void D(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    public static void F(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || ab(b2)) {
            throw ddu.d();
        }
        cArr[i] = (char) (((b & 31) << 6) | aa(b2));
    }

    public static boolean G(byte b) {
        return b >= 0;
    }

    public static boolean H(byte b) {
        return b < -16;
    }

    public static boolean I(byte b) {
        return b < -32;
    }

    public static /* bridge */ /* synthetic */ void K(Object obj, int i, dcl dclVar) {
        ((dfr) obj).d(dge.c(i, 2), dclVar);
    }

    public static /* bridge */ /* synthetic */ void L(Object obj, int i, long j) {
        ((dfr) obj).d(dge.c(i, 0), Long.valueOf(j));
    }

    public static dfr M(Object obj) {
        return ((ddk) obj).s;
    }

    public static void N(Object obj, dfr dfrVar) {
        ((ddk) obj).s = dfrVar;
    }

    public static /* bridge */ /* synthetic */ Object O(Object obj) {
        dfr M = M(obj);
        if (M != dfr.a) {
            return M;
        }
        dfr b = dfr.b();
        N(obj, b);
        return b;
    }

    public static void P(Object obj) {
        M(obj).c();
    }

    public static String Q(dcl dclVar) {
        StringBuilder sb = new StringBuilder(dclVar.d());
        for (int i = 0; i < dclVar.d(); i++) {
            byte a = dclVar.a(i);
            switch (a) {
                case 7:
                    sb.append("\\a");
                    break;
                case 8:
                    sb.append("\\b");
                    break;
                case 9:
                    sb.append("\\t");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 11:
                    sb.append("\\v");
                    break;
                case 12:
                    sb.append("\\f");
                    break;
                case 13:
                    sb.append("\\r");
                    break;
                case 34:
                    sb.append("\\\"");
                    break;
                case 39:
                    sb.append("\\'");
                    break;
                case 92:
                    sb.append("\\\\");
                    break;
                default:
                    if (a < 32 || a > 126) {
                        sb.append('\\');
                        sb.append((char) (((a >>> 6) & 3) + 48));
                        sb.append((char) (((a >>> 3) & 7) + 48));
                        sb.append((char) ((a & 7) + 48));
                        break;
                    } else {
                        sb.append((char) a);
                        break;
                    }
                    break;
            }
        }
        return sb.toString();
    }

    public static void R(dcl dclVar, ArrayDeque arrayDeque) {
        if (!dclVar.h()) {
            if (!(dclVar instanceof dff)) {
                String valueOf = String.valueOf(dclVar.getClass());
                String.valueOf(valueOf).length();
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(valueOf)));
            }
            dff dffVar = (dff) dclVar;
            int[] iArr = dff.a;
            R(dffVar.e, arrayDeque);
            R(dffVar.f, arrayDeque);
            return;
        }
        int ac = ac(dclVar.d());
        int c = dff.c(ac + 1);
        if (arrayDeque.isEmpty() || ((dcl) arrayDeque.peek()).d() >= c) {
            arrayDeque.push(dclVar);
            return;
        }
        int c2 = dff.c(ac);
        dcl dclVar2 = (dcl) arrayDeque.pop();
        while (!arrayDeque.isEmpty() && ((dcl) arrayDeque.peek()).d() < c2) {
            dclVar2 = new dff((dcl) arrayDeque.pop(), dclVar2);
        }
        dff dffVar2 = new dff(dclVar2, dclVar);
        while (!arrayDeque.isEmpty()) {
            if (((dcl) arrayDeque.peek()).d() >= dff.c(ac(dffVar2.d) + 1)) {
                break;
            } else {
                dffVar2 = new dff((dcl) arrayDeque.pop(), dffVar2);
            }
        }
        arrayDeque.push(dffVar2);
    }

    static void S(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                S(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                S(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(Q(dcl.v((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof dcl) {
            sb.append(": \"");
            sb.append(Q((dcl) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof ddk) {
            sb.append(" {");
            T((ddk) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        S(sb, i4, "key", entry.getKey());
        S(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append("}");
    }

    public static void T(der derVar, StringBuilder sb, int i) {
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : derVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    S(sb, i, ad(concat), ddk.B(method2, derVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    S(sb, i, ad(concat2), ddk.B(method3, derVar, new Object[0]));
                }
            }
            String valueOf5 = String.valueOf(substring);
            if (((Method) hashMap2.get(valueOf5.length() != 0 ? "set".concat(valueOf5) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf6 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf6.length() != 0 ? "get".concat(valueOf6) : new String("get"))) {
                    }
                }
                String valueOf7 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf8 = String.valueOf(substring.substring(1));
                String concat3 = valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7);
                String valueOf9 = String.valueOf(substring);
                Method method4 = (Method) hashMap.get(valueOf9.length() != 0 ? "get".concat(valueOf9) : new String("get"));
                String valueOf10 = String.valueOf(substring);
                Method method5 = (Method) hashMap.get(valueOf10.length() != 0 ? "has".concat(valueOf10) : new String("has"));
                if (method4 != null) {
                    Object B = ddk.B(method4, derVar, new Object[0]);
                    if (method5 == null) {
                        if (B instanceof Boolean) {
                            if (((Boolean) B).booleanValue()) {
                                S(sb, i, ad(concat3), B);
                            }
                        } else if (B instanceof Integer) {
                            if (((Integer) B).intValue() != 0) {
                                S(sb, i, ad(concat3), B);
                            }
                        } else if (B instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) B).floatValue()) != 0) {
                                S(sb, i, ad(concat3), B);
                            }
                        } else if (!(B instanceof Double)) {
                            if (B instanceof String) {
                                equals = B.equals("");
                            } else if (B instanceof dcl) {
                                equals = B.equals(dcl.b);
                            } else if (!(B instanceof der)) {
                                if ((B instanceof Enum) && ((Enum) B).ordinal() == 0) {
                                }
                                S(sb, i, ad(concat3), B);
                            } else if (B != ((der) B).j()) {
                                S(sb, i, ad(concat3), B);
                            }
                            if (!equals) {
                                S(sb, i, ad(concat3), B);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) B).doubleValue()) != 0) {
                            S(sb, i, ad(concat3), B);
                        }
                    } else if (((Boolean) ddk.B(method5, derVar, new Object[0])).booleanValue()) {
                        S(sb, i, ad(concat3), B);
                    }
                }
            }
        }
        if (derVar instanceof ddi) {
            Iterator d = ((ddi) derVar).d.d();
            while (d.hasNext()) {
                Map.Entry entry = (Map.Entry) d.next();
                S(sb, i, "[334728578]", entry.getValue());
            }
        }
        dfr dfrVar = ((ddk) derVar).s;
        if (dfrVar != null) {
            for (int i2 = 0; i2 < dfrVar.b; i2++) {
                S(sb, i, String.valueOf(dge.a(dfrVar.c[i2])), dfrVar.d[i2]);
            }
        }
    }

    public static dek U(Object obj) {
        return ((del) obj).a;
    }

    public static int V(int i, Object obj, Object obj2) {
        dem demVar = (dem) obj;
        del delVar = (del) obj2;
        int i2 = 0;
        if (!demVar.isEmpty()) {
            for (Map.Entry entry : demVar.entrySet()) {
                i2 += dcu.ab(i) + dcu.R(del.a(delVar.a, entry.getKey(), entry.getValue()));
            }
        }
        return i2;
    }

    public static boolean W(Object obj) {
        return !((dem) obj).b;
    }

    public static Object X(Object obj, Object obj2) {
        dem demVar = (dem) obj;
        dem demVar2 = (dem) obj2;
        if (!demVar2.isEmpty()) {
            if (!demVar.b) {
                demVar = demVar.a();
            }
            demVar.b();
            if (!demVar2.isEmpty()) {
                demVar.putAll(demVar2);
            }
        }
        return demVar;
    }

    public static Object Y() {
        return dem.a.a();
    }

    private static void Z(ArrayList arrayList, char c, float[] fArr) {
        arrayList.add(new ej(c, fArr));
    }

    public static File a(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    private static int aa(byte b) {
        return b & 63;
    }

    private static boolean ab(byte b) {
        return b > -65;
    }

    private static int ac(int i) {
        int binarySearch = Arrays.binarySearch(dff.a, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }

    private static String ad(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static boolean c(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file, false);
        } catch (IOException e) {
            e = e;
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    b(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            try {
                Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                b(fileOutputStream2);
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
                return false;
            } catch (Throwable th2) {
                th = th2;
                b(fileOutputStream2);
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            b(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static boolean d(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean c = c(file, inputStream);
                b(inputStream);
                return c;
            } catch (Throwable th) {
                th = th;
                b(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static Object f(Class cls) {
        String str;
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String concat = String.valueOf(canonicalName.replace('.', '_')).concat("_Impl");
        try {
            if (name.isEmpty()) {
                str = concat;
            } else {
                str = name + "." + concat;
            }
            return Class.forName(str, true, cls.getClassLoader()).newInstance();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + concat + " does not exist");
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot access the constructor".concat(String.valueOf(cls.getCanonicalName())));
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to create an instance of ".concat(String.valueOf(cls.getCanonicalName())));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d A[Catch: NumberFormatException -> 0x00b8, TryCatch #0 {NumberFormatException -> 0x00b8, blocks: (B:24:0x0057, B:26:0x006a, B:27:0x0070, B:29:0x0076, B:30:0x007a, B:33:0x0098, B:51:0x0085, B:54:0x008d, B:37:0x009d, B:38:0x00aa, B:41:0x00b0, B:58:0x00b3), top: B:23:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00df A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ej[] g(String str) {
        String trim;
        float[] fArr;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            while (i < str.length()) {
                char charAt = str.charAt(i);
                if (((charAt - 'A') * (charAt - 'Z') > 0 && (charAt - 'a') * (charAt - 'z') > 0) || charAt == 'e' || charAt == 'E') {
                    i++;
                } else {
                    trim = str.substring(i2, i).trim();
                    if (trim.length() > 0) {
                        if (trim.charAt(0) == 'z' || trim.charAt(0) == 'Z') {
                            fArr = new float[0];
                        } else {
                            try {
                                float[] fArr2 = new float[trim.length()];
                                ei eiVar = new ei();
                                int length = trim.length();
                                int i3 = 1;
                                int i4 = 0;
                                while (i3 < length) {
                                    eiVar.a = false;
                                    boolean z = false;
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    for (int i5 = i3; i5 < trim.length(); i5++) {
                                        switch (trim.charAt(i5)) {
                                            case ' ':
                                            case ',':
                                                z2 = false;
                                                z3 = true;
                                                break;
                                            case '-':
                                                if (i5 != i3 && !z2) {
                                                    eiVar.a = true;
                                                    z2 = false;
                                                    z3 = true;
                                                    break;
                                                }
                                                z2 = false;
                                                break;
                                            case '.':
                                                if (z) {
                                                    eiVar.a = true;
                                                    z = true;
                                                    z2 = false;
                                                    z3 = true;
                                                    break;
                                                } else {
                                                    z = true;
                                                    z2 = false;
                                                    break;
                                                }
                                            case 'E':
                                            case 'e':
                                                z2 = true;
                                                break;
                                            default:
                                                z2 = false;
                                                break;
                                        }
                                        if (z3) {
                                            if (i3 < i5) {
                                                fArr2[i4] = Float.parseFloat(trim.substring(i3, i5));
                                                i4++;
                                            }
                                            i3 = !eiVar.a ? i5 : i5 + 1;
                                        }
                                    }
                                    if (i3 < i5) {
                                    }
                                    if (!eiVar.a) {
                                    }
                                }
                                fArr = i(fArr2, i4);
                            } catch (NumberFormatException e) {
                                throw new RuntimeException("error in parsing \"" + trim + "\"", e);
                            }
                        }
                        Z(arrayList, trim.charAt(0), fArr);
                    }
                    i2 = i;
                    i++;
                }
            }
            trim = str.substring(i2, i).trim();
            if (trim.length() > 0) {
            }
            i2 = i;
            i++;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            Z(arrayList, str.charAt(i2), new float[0]);
        }
        return (ej[]) arrayList.toArray(new ej[arrayList.size()]);
    }

    public static ej[] h(ej[] ejVarArr) {
        if (ejVarArr == null) {
            return null;
        }
        ej[] ejVarArr2 = new ej[ejVarArr.length];
        for (int i = 0; i < ejVarArr.length; i++) {
            ejVarArr2[i] = new ej(ejVarArr[i]);
        }
        return ejVarArr2;
    }

    public static float[] i(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int min = Math.min(i, fArr.length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    public static float j(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !r(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    public static int k(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? i : i2;
    }

    public static int l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !r(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    public static int m(TypedArray typedArray, int i, int i2, int i3) {
        return typedArray.getResourceId(i, typedArray.getResourceId(i2, i3));
    }

    public static TypedArray n(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static CharSequence o(TypedArray typedArray, int i, int i2) {
        CharSequence text = typedArray.getText(i);
        return text == null ? typedArray.getText(i2) : text;
    }

    public static String p(TypedArray typedArray, int i, int i2) {
        String string = typedArray.getString(i);
        return string == null ? typedArray.getString(i2) : string;
    }

    public static boolean q(TypedArray typedArray, int i, int i2, boolean z) {
        return typedArray.getBoolean(i, typedArray.getBoolean(i2, z));
    }

    public static boolean r(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static CharSequence[] s(TypedArray typedArray, int i, int i2) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        return textArray == null ? typedArray.getTextArray(i2) : textArray;
    }

    public static int t(TypedArray typedArray, int i, int i2) {
        return typedArray.getInt(i, typedArray.getInt(i2, Preference.DEFAULT_ORDER));
    }

    public static int u(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (r(xmlPullParser, str)) {
            return typedArray.getColor(i, 0);
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0181, code lost:
    
        if (r15.size() <= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0183, code lost:
    
        r0 = new defpackage.dz(r15, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018a, code lost:
    
        if (r0 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019a, code lost:
    
        switch(r13) {
            case 1: goto L71;
            case 2: goto L70;
            default: goto L69;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01cf, code lost:
    
        r1 = new android.graphics.LinearGradient(r22, r15, r16, r17, r0.a, r0.b, x(r23));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ec, code lost:
    
        r2 = new defpackage.du(r1, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ee, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ef, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x023f, code lost:
    
        android.util.Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", r0);
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a0, code lost:
    
        r1 = new android.graphics.SweepGradient(r10, r2, r0.a, r0.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01ad, code lost:
    
        if (r21 <= 0.0f) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01af, code lost:
    
        r1 = new android.graphics.RadialGradient(r10, r2, r21, r0.a, r0.b, x(r23));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01ce, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018d, code lost:
    
        if (r18 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018f, code lost:
    
        r0 = new defpackage.dz(r8, r3, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0195, code lost:
    
        r0 = new defpackage.dz(r8, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0189, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0249 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static du v(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        XmlResourceParser xml;
        AttributeSet asAttributeSet;
        int next;
        char c;
        int i2;
        String str2 = "centerColor";
        if (r(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            if (typedValue.type >= 28 && typedValue.type <= 31) {
                return du.a(typedValue.data);
            }
            Resources resources = typedArray.getResources();
            try {
                xml = resources.getXml(typedArray.getResourceId(i, 0));
                asAttributeSet = Xml.asAttributeSet(xml);
            } catch (Exception e) {
                e = e;
                str2 = null;
            }
            do {
                next = xml.next();
                if (next == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case 89650992:
                            if (name.equals("gradient")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1191572447:
                            if (name.equals("selector")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    try {
                    } catch (Exception e2) {
                        e = e2;
                    }
                    switch (c) {
                        case 0:
                            ColorStateList b = dt.b(resources, xml, asAttributeSet, theme);
                            du duVar = new du(null, b, b.getDefaultColor());
                            if (duVar != 0) {
                                return duVar;
                            }
                            break;
                        case 1:
                            String name2 = xml.getName();
                            if (!name2.equals("gradient")) {
                                throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
                            }
                            TypedArray n = n(resources, theme, asAttributeSet, as.d);
                            float j = j(n, xml, "startX", 8, 0.0f);
                            float j2 = j(n, xml, "startY", 9, 0.0f);
                            float j3 = j(n, xml, "endX", 10, 0.0f);
                            float j4 = j(n, xml, "endY", 11, 0.0f);
                            float j5 = j(n, xml, "centerX", 3, 0.0f);
                            float j6 = j(n, xml, "centerY", 4, 0.0f);
                            int l = l(n, xml, "type", 2, 0);
                            int u = u(n, xml, "startColor", 0);
                            boolean r = r(xml, "centerColor");
                            int u2 = u(n, xml, "centerColor", 7);
                            int u3 = u(n, xml, "endColor", 1);
                            int l2 = l(n, xml, "tileMode", 6, 0);
                            float j7 = j(n, xml, "gradientRadius", 5, 0.0f);
                            n.recycle();
                            int depth = xml.getDepth() + 1;
                            ArrayList arrayList = new ArrayList(20);
                            ArrayList arrayList2 = new ArrayList(20);
                            while (true) {
                                int next2 = xml.next();
                                float f = j;
                                if (next2 == 1) {
                                    i2 = l2;
                                    break;
                                } else {
                                    int depth2 = xml.getDepth();
                                    if (depth2 < depth) {
                                        i2 = l2;
                                        if (next2 == 3) {
                                            break;
                                        }
                                    } else {
                                        i2 = l2;
                                    }
                                    if (next2 != 2 || depth2 > depth) {
                                        j = f;
                                        l2 = i2;
                                    } else if (xml.getName().equals("item")) {
                                        TypedArray n2 = n(resources, theme, asAttributeSet, as.e);
                                        boolean hasValue = n2.hasValue(0);
                                        boolean hasValue2 = n2.hasValue(1);
                                        if (hasValue && hasValue2) {
                                            int color = n2.getColor(0, 0);
                                            float f2 = n2.getFloat(1, 0.0f);
                                            n2.recycle();
                                            arrayList2.add(Integer.valueOf(color));
                                            arrayList.add(Float.valueOf(f2));
                                            j = f;
                                            l2 = i2;
                                        }
                                    } else {
                                        j = f;
                                        l2 = i2;
                                    }
                                }
                            }
                            throw new XmlPullParserException(String.valueOf(xml.getPositionDescription()).concat(": <item> tag requires a 'color' attribute and a 'offset' attribute!"));
                        default:
                            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
                    }
                }
            } while (next != 1);
            throw new XmlPullParserException("No start tag found");
        }
        return du.a(0);
    }

    public static int w(int i) {
        if (i <= 4) {
            return 8;
        }
        return i + i;
    }

    public static Shader.TileMode x(int i) {
        switch (i) {
            case 1:
                return Shader.TileMode.REPEAT;
            case 2:
                return Shader.TileMode.MIRROR;
            default:
                return Shader.TileMode.CLAMP;
        }
    }

    public static String y(ByteBuffer byteBuffer, int i, int i2) {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b = byteBuffer.get(i);
            if (!G(b)) {
                break;
            }
            i++;
            D(b, cArr, i4);
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b2 = byteBuffer.get(i);
            if (G(b2)) {
                D(b2, cArr, i5);
                i = i6;
                i5++;
                while (i < i3) {
                    byte b3 = byteBuffer.get(i);
                    if (!G(b3)) {
                        break;
                    }
                    i++;
                    D(b3, cArr, i5);
                    i5++;
                }
            } else if (I(b2)) {
                if (i6 >= i3) {
                    throw ddu.d();
                }
                F(b2, byteBuffer.get(i6), cArr, i5);
                i = i6 + 1;
                i5++;
            } else if (H(b2)) {
                if (i6 >= i3 - 1) {
                    throw ddu.d();
                }
                int i7 = i6 + 1;
                E(b2, byteBuffer.get(i6), byteBuffer.get(i7), cArr, i5);
                i = i7 + 1;
                i5++;
            } else {
                if (i6 >= i3 - 2) {
                    throw ddu.d();
                }
                int i8 = i6 + 1;
                int i9 = i8 + 1;
                C(b2, byteBuffer.get(i6), byteBuffer.get(i8), byteBuffer.get(i9), cArr, i5);
                i5 += 2;
                i = i9 + 1;
            }
        }
        return new String(cArr, 0, i5);
    }

    public static String z(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b = bArr[i];
            if (!G(b)) {
                break;
            }
            i++;
            D(b, cArr, i4);
            i4++;
        }
        while (i < i3) {
            int i5 = i + 1;
            byte b2 = bArr[i];
            if (G(b2)) {
                D(b2, cArr, i4);
                i = i5;
                i4++;
                while (i < i3) {
                    byte b3 = bArr[i];
                    if (!G(b3)) {
                        break;
                    }
                    i++;
                    D(b3, cArr, i4);
                    i4++;
                }
            } else if (I(b2)) {
                if (i5 >= i3) {
                    throw ddu.d();
                }
                F(b2, bArr[i5], cArr, i4);
                i = i5 + 1;
                i4++;
            } else if (H(b2)) {
                if (i5 >= i3 - 1) {
                    throw ddu.d();
                }
                int i6 = i5 + 1;
                E(b2, bArr[i5], bArr[i6], cArr, i4);
                i = i6 + 1;
                i4++;
            } else {
                if (i5 >= i3 - 2) {
                    throw ddu.d();
                }
                int i7 = i5 + 1;
                int i8 = i7 + 1;
                C(b2, bArr[i5], bArr[i7], bArr[i8], cArr, i4);
                i4 += 2;
                i = i8 + 1;
            }
        }
        return new String(cArr, 0, i4);
    }

    public final boolean J(Object obj, dfc dfcVar) {
        int d = dfcVar.d();
        int a = dge.a(d);
        switch (dge.b(d)) {
            case 0:
                L(obj, a, dfcVar.l());
                return true;
            case 1:
                ((dfr) obj).d(dge.c(a, 1), Long.valueOf(dfcVar.k()));
                return true;
            case 2:
                K(obj, a, dfcVar.q());
                return true;
            case 3:
                int c = dge.c(a, 4);
                dfr b = dfr.b();
                while (dfcVar.c() != Integer.MAX_VALUE && J(b, dfcVar)) {
                }
                if (c != dfcVar.d()) {
                    throw ddu.b();
                }
                b.c();
                ((dfr) obj).d(dge.c(a, 3), b);
                return true;
            case 4:
                return false;
            case 5:
                ((dfr) obj).d(dge.c(a, 5), Integer.valueOf(dfcVar.f()));
                return true;
            default:
                throw ddu.a();
        }
    }

    public void e(afh afhVar) {
    }

    public static void E(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!ab(b2)) {
            if (b == -32) {
                if (b2 >= -96) {
                    b = -32;
                }
            }
            if (b == -19) {
                if (b2 < -96) {
                    b = -19;
                }
            }
            if (!ab(b3)) {
                cArr[i] = (char) (((b & 15) << 12) | (aa(b2) << 6) | aa(b3));
                return;
            }
        }
        throw ddu.d();
    }
}
