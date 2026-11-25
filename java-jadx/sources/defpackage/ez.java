package defpackage;

import android.media.Rating;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ez {
    public static void A(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            String.valueOf(valueOf).length();
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(valueOf)));
        }
        if (obj2 != null) {
            return;
        }
        String obj3 = obj.toString();
        StringBuilder sb = new StringBuilder(obj3.length() + 26);
        sb.append("null value in entry: ");
        sb.append(obj3);
        sb.append("=null");
        throw new NullPointerException(sb.toString());
    }

    public static void B(boolean z) {
        ex.s(z, "no calls to next() since the last call to remove()");
    }

    public static void C(int i, String str) {
        if (i >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static float a(Rating rating) {
        return rating.getPercentRating();
    }

    public static float b(Rating rating) {
        return rating.getStarRating();
    }

    public static int c(Rating rating) {
        return rating.getRatingStyle();
    }

    public static Rating d(boolean z) {
        return Rating.newHeartRating(z);
    }

    public static Rating e(float f) {
        return Rating.newPercentageRating(f);
    }

    public static Rating f(int i, float f) {
        return Rating.newStarRating(i, f);
    }

    public static Rating g(boolean z) {
        return Rating.newThumbRating(z);
    }

    public static Rating h(int i) {
        return Rating.newUnratedRating(i);
    }

    public static boolean i(Rating rating) {
        return rating.hasHeart();
    }

    public static boolean j(Rating rating) {
        return rating.isRated();
    }

    public static boolean k(Rating rating) {
        return rating.isThumbUp();
    }

    public static void l(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void m(Object obj) {
        if (obj == null) {
            throw null;
        }
    }

    public static /* synthetic */ String n(int i) {
        switch (i) {
            case 1:
                return "NOT_REQUIRED";
            case 2:
                return "CONNECTED";
            case 3:
                return "UNMETERED";
            case 4:
                return "NOT_ROAMING";
            case 5:
                return "METERED";
            default:
                return "TEMPORARILY_UNMETERED";
        }
    }

    public static cqz o(cqo cqoVar) {
        Set<Map.Entry> entrySet = cqoVar.a.entrySet();
        if (entrySet.isEmpty()) {
            return cpt.a;
        }
        cqi cqiVar = new cqi(entrySet.size());
        int i = 0;
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            cqw m = cqw.m((Collection) entry.getValue());
            if (!m.isEmpty()) {
                cqiVar.f(key, m);
                i += m.size();
            }
        }
        return new cqz(cqiVar.c(), i);
    }

    public static int p(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static int q(Object obj) {
        return p(obj == null ? 0 : obj.hashCode());
    }

    public static int r(int i, int i2) {
        return i & (i2 ^ (-1));
    }

    public static int s(int i, int i2, int i3) {
        return (i & (i3 ^ (-1))) | (i2 & i3);
    }

    public static int t(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    public static int u(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i2;
        int i3;
        int q = q(obj);
        int i4 = q & i;
        int v = v(obj3, i4);
        if (v == 0) {
            return -1;
        }
        int r = r(q, i);
        int i5 = -1;
        while (true) {
            i2 = v - 1;
            i3 = iArr[i2];
            if (r(i3, i) != r || !ew.t(obj, objArr[i2]) || (objArr2 != null && !ew.t(obj2, objArr2[i2]))) {
                int i6 = i3 & i;
                if (i6 == 0) {
                    return -1;
                }
                i5 = i2;
                v = i6;
            }
        }
        int i7 = i3 & i;
        if (i5 == -1) {
            z(obj3, i4, i7);
        } else {
            iArr[i5] = s(iArr[i5], i7, i);
        }
        return i2;
    }

    public static int v(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static int w(int i) {
        int max = Math.max(i + 1, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > highestOneBit && (highestOneBit = highestOneBit + highestOneBit) <= 0) {
            highestOneBit = 1073741824;
        }
        return Math.max(4, highestOneBit);
    }

    public static Object x(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        StringBuilder sb = new StringBuilder(52);
        sb.append("must be power of 2 between 2^1 and 2^30: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void y(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static void z(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
