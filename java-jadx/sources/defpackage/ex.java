package defpackage;

import android.media.MediaDescription;
import android.net.Uri;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ex {
    private static String A(int i, int i2, String str) {
        if (i < 0) {
            return k("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return k("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static Uri a(MediaDescription mediaDescription) {
        return mediaDescription.getMediaUri();
    }

    public static void b(MediaDescription.Builder builder, Uri uri) {
        builder.setMediaUri(uri);
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static agk d(Map map) {
        agk agkVar = new agk(map);
        agk.c(agkVar);
        return agkVar;
    }

    public static void e(Map map, Map map2) {
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                map2.put(str, null);
            } else {
                Class<?> cls = value.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    map2.put(str, value);
                } else if (cls == boolean[].class) {
                    map2.put(str, agk.d((boolean[]) value));
                } else if (cls == byte[].class) {
                    map2.put(str, agk.e((byte[]) value));
                } else if (cls == int[].class) {
                    map2.put(str, agk.h((int[]) value));
                } else if (cls == long[].class) {
                    map2.put(str, agk.i((long[]) value));
                } else if (cls == float[].class) {
                    map2.put(str, agk.g((float[]) value));
                } else {
                    if (cls != double[].class) {
                        throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                    }
                    map2.put(str, agk.f((double[]) value));
                }
            }
        }
    }

    public static ex f() {
        return new ago();
    }

    public static ex g() {
        return new agp();
    }

    public static ex h() {
        return new agq(agk.a);
    }

    public static col i(col colVar) {
        return ((colVar instanceof con) || (colVar instanceof com)) ? colVar : colVar instanceof Serializable ? new com(colVar) : new con(colVar);
    }

    public static col j(Object obj) {
        return new coo(obj);
    }

    public static String k(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String sb;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            if (obj == null) {
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", sb3.length() != 0 ? "Exception during lenientFormat for ".concat(sb3) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(sb3.length() + 9 + String.valueOf(name2).length());
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i2] = sb;
            i2++;
        }
        StringBuilder sb5 = new StringBuilder(str.length() + (length * 16));
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf("%s", i3)) == -1) {
                break;
            }
            sb5.append((CharSequence) str, i3, indexOf);
            sb5.append(objArr[i]);
            i3 = indexOf + 2;
            i++;
        }
        sb5.append((CharSequence) str, i3, str.length());
        if (i < length2) {
            sb5.append(" [");
            sb5.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb5.append(", ");
                sb5.append(objArr[i4]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }

    public static void l(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void m(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void n(boolean z, String str, char c) {
        if (!z) {
            throw new IllegalArgumentException(k(str, Character.valueOf(c)));
        }
    }

    public static void o(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(k(str, obj));
        }
    }

    public static void p(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(k(str, obj, obj2));
        }
    }

    public static void q(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? A(i, i3, "start index") : (i2 < 0 || i2 > i3) ? A(i2, i3, "end index") : k("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void r(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void s(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void t(boolean z, String str, int i) {
        if (!z) {
            throw new IllegalStateException(k(str, Integer.valueOf(i)));
        }
    }

    public static void u(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalStateException(k(str, obj));
        }
    }

    public static void v(int i, int i2) {
        String k;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                k = k("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("negative size: ");
                    sb.append(i2);
                    throw new IllegalArgumentException(sb.toString());
                }
                k = k("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(k);
        }
    }

    public static void w(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(A(i, i2, "index"));
        }
    }

    public static String x(Iterable iterable, String str) {
        Iterator it = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        y(sb, it, str);
        return sb.toString();
    }

    public static void y(StringBuilder sb, Iterator it, String str) {
        try {
            if (it.hasNext()) {
                sb.append(z(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) str);
                    sb.append(z(it.next()));
                }
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    static CharSequence z(Object obj) {
        obj.getClass();
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
