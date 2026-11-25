package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.EdgeEffect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ViewAutofillAndFarmHashUtil {
    static int a(View view) {
        return view.getImportantForAutofill();
    }

    static void b(View view, int i) {
        view.setImportantForAutofill(8);
    }

    public static long d(byte[] bArr) {
        int length = bArr.length;
        int i = 37;
        char c = 0;
        if (length <= 32) {
            if (length > 16) {
                long j = (length + length) - 7286425919675154353L;
                long h = h(bArr, 0) * (-5435081209227447693L);
                long h2 = h(bArr, 8);
                long h3 = h(bArr, length - 8) * j;
                return g(Long.rotateRight(ProtoMessageSingleEnumFieldH + h2, 43) + Long.rotateRight(h3, 30) + (h(bArr, length - 16) * (-7286425919675154353L)), h + Long.rotateRight(h2 - 7286425919675154353L, 18) + h3, j);
            }
            if (length >= 8) {
                long j2 = (length + length) - 7286425919675154353L;
                long h4 = h(bArr, 0) - 7286425919675154353L;
                long h5 = h(bArr, length - 8);
                return g((Long.rotateRight(h5, 37) * j2) + h4, (Long.rotateRight(h4, 25) + h5) * j2, j2);
            }
            if (length >= 4) {
                return g(length + ((f(bArr, 0) & 4294967295L) << 3), f(bArr, length - 4) & 4294967295L, (length + length) - 7286425919675154353L);
            }
            if (length > 0) {
                return (-7286425919675154353L) * i((((bArr[0] & 255) + ((bArr[length >> 1] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[length - 1] & 255) << 2)) * (-4348849565147123417L)));
            }
            return -7286425919675154353L;
        }
        if (length <= 64) {
            long j3 = (length + length) - 7286425919675154353L;
            long h6 = h(bArr, 0) * (-7286425919675154353L);
            long h7 = h(bArr, 8);
            long h8 = h(bArr, length - 8) * j3;
            long rotateRight = Long.rotateRight(h6 + h7, 43) + Long.rotateRight(h8, 30) + (h(bArr, length - 16) * (-7286425919675154353L));
            long rotateRight2 = Long.rotateRight(h7 - 7286425919675154353L, 18);
            long h9 = h(bArr, 16) * j3;
            long h10 = h(bArr, 24);
            long h11 = (rotateRight + h(bArr, length - 32)) * j3;
            return g(Long.rotateRight(h9 + h10, 43) + Long.rotateRight(h11, 30) + ((g(rotateRight, rotateRight2 + h6 + h8, j3) + h(bArr, length - 24)) * j3), h9 + Long.rotateRight(h10 + h6, 18) + h11, j3);
        }
        long i2 = i(-7956866745689871395L) * (-7286425919675154353L);
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long h12 = h(bArr, 0) + 95310865018149119L;
        int i3 = length - 1;
        int i4 = (i3 >> 6) * 64;
        int i5 = i3 & 63;
        int i6 = (i4 + i5) - 63;
        long j4 = 2480279821605975764L;
        int i7 = 0;
        while (true) {
            long rotateRight3 = Long.rotateRight(h12 + j4 + jArr[c] + h(bArr, i7 + 8), i);
            long rotateRight4 = Long.rotateRight(j4 + jArr[1] + h(bArr, i7 + 48), 42);
            long j5 = (rotateRight3 * (-5435081209227447693L)) ^ jArr2[1];
            long h13 = (rotateRight4 * (-5435081209227447693L)) + jArr[c] + h(bArr, i7 + 40);
            long rotateRight5 = Long.rotateRight(i2 + jArr2[c], 33) * (-5435081209227447693L);
            long j6 = jArr[1] * (-5435081209227447693L);
            long j7 = j5 + jArr2[c];
            int i8 = i5;
            int i9 = i4;
            j(bArr, i7, j6, j7, jArr);
            j(bArr, i7 + 32, rotateRight5 + jArr2[1], h(bArr, i7 + 16) + h13, jArr2);
            int i10 = i7 + 64;
            if (i10 == i9) {
                long j8 = j5 & 255;
                long j9 = (-5435081209227447693L) + j8 + j8;
                long j10 = jArr2[0] + i8;
                long j11 = jArr[0] + j10;
                jArr[0] = j11;
                jArr2[0] = j10 + j11;
                long rotateRight6 = Long.rotateRight(rotateRight5 + h13 + j11 + h(bArr, i6 + 8), 37);
                long rotateRight7 = Long.rotateRight(h13 + jArr[1] + h(bArr, i6 + 48), 42);
                long j12 = (rotateRight6 * j9) ^ (jArr2[1] * 9);
                long h14 = (rotateRight7 * j9) + (jArr[0] * 9) + h(bArr, i6 + 40);
                long rotateRight8 = Long.rotateRight(j5 + jArr2[0], 33) * j9;
                j(bArr, i6, jArr[1] * j9, jArr2[0] + j12, jArr);
                j(bArr, i6 + 32, rotateRight8 + jArr2[1], h(bArr, i6 + 16) + h14, jArr2);
                return g(g(jArr[0], jArr2[0], j9) + (i(h14) * (-4348849565147123417L)) + j12, g(jArr[1], jArr2[1], j9) + rotateRight8, j9);
            }
            i7 = i10;
            i5 = i8;
            i4 = i9;
            i2 = j5;
            h12 = rotateRight5;
            c = 0;
            j4 = h13;
            i = 37;
        }
    }

    public static LazyValueHolder e(Object obj) {
        return new LazyValueHolder(obj);
    }

    private static int f(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private static long g(long j, long j2, long j3) {
        long j4 = (ProtoMessageTwoIntsAndFlagValue ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    private static long h(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    private static long i(long j) {
        return j ^ (ProtoMessageTwoIntsAndFlagValue >>> 47);
    }

    private static void j(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long h = h(bArr, i);
        long h2 = h(bArr, i + 8);
        long h3 = h(bArr, i + 16);
        long h4 = h(bArr, i + 24);
        long j3 = j + h;
        long rotateRight = Long.rotateRight(j2 + j3 + h4, 21);
        long j4 = h2 + j3 + h3;
        long rotateRight2 = Long.rotateRight(j4, 44);
        jArr[0] = j4 + h4;
        jArr[1] = rotateRight + rotateRight2 + j3;
    }

    public EdgeEffect c(RecyclerView recyclerView) {
        throw null;
    }
}
