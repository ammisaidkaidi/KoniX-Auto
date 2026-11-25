package defpackage;

import java.math.RoundingMode;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Base64Codec {
    public final String a;
    public final char[] b;
    final int c;
    public final int d;
    final int e;
    final int f;
    public final byte[] g;

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00dd, code lost:
    
        if (((r4 == java.math.RoundingMode.HALF_EVEN ? 1 : 0) & (r5 & 1)) != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ea, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e0, code lost:
    
        if (r6 > 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e3, code lost:
    
        if (r0 > 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e6, code lost:
    
        if (r0 < 0) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Base64Codec(String str, char[] cArr) {
        int numberOfLeadingZeros;
        int i;
        int i2;
        boolean z;
        this.a = str;
        cArr.getClass();
        this.b = cArr;
        try {
            int length = cArr.length;
            RoundingMode roundingMode = RoundingMode.UNNECESSARY;
            if (length <= 0) {
                StringBuilder sb = new StringBuilder(27);
                StaggeredGridLayoutParams.append("x");
                StaggeredGridLayoutParams.append(" (");
                StaggeredGridLayoutParams.append(0);
                StaggeredGridLayoutParams.append(") must be > 0");
                throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
            }
            switch (cxv.a[roundingMode.ordinal()]) {
                case 1:
                    OverflowCheckedLongArrayUtil.p(((length + (-1)) & length) == 0);
                case 2:
                case 3:
                    numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(length);
                    this.d = numberOfLeadingZeros;
                    int min = Math.min(8, Integer.lowestOneBit(numberOfLeadingZeros));
                    try {
                        this.e = 8 / min;
                        this.f = numberOfLeadingZeros / min;
                        this.c = length - 1;
                        byte[] bArr = new byte[128];
                        Arrays.fill(bArr, (byte) -1);
                        for (NavInstructionTypeEnum = 0; NavInstructionTypeEnum < cArr.length; i++) {
                            char c = cArr[i];
                            ex.n(PhenotypeFlagMessage < 128, "Non-ASCII character: %s", c);
                            ex.n(bArr[c] == -1, "Duplicate character: %s", c);
                            bArr[c] = (byte) i;
                        }
                        this.g = bArr;
                        boolean[] zArr = new boolean[this.e];
                        for (i2 = 0; i2 < this.f; i2++) {
                            int i3 = i2 * 8;
                            int i4 = this.d;
                            RoundingMode roundingMode2 = RoundingMode.CEILING;
                            roundingMode2.getClass();
                            if (i4 == 0) {
                                throw new ArithmeticException("/ by zero");
                            }
                            int i5 = i3 / i4;
                            int i6 = i3 - (i4 * i5);
                            if (i6 != 0) {
                                int i7 = ((i3 ^ i4) >> 31) | 1;
                                switch (cxv.a[roundingMode2.ordinal()]) {
                                    case 1:
                                        OverflowCheckedLongArrayUtil.p(false);
                                        break;
                                    case 2:
                                        break;
                                    case 3:
                                        break;
                                    case 4:
                                        i5 += i7;
                                        break;
                                    case 5:
                                        break;
                                    case 6:
                                    case 7:
                                    case 8:
                                        int abs = Math.abs(i6);
                                        int abs2 = abs - (Math.abs(i4) - abs);
                                        if (abs2 == 0) {
                                            if (roundingMode2 != RoundingMode.HALF_UP) {
                                                break;
                                            }
                                            z = true;
                                        }
                                        if (!z) {
                                            break;
                                        }
                                        i5 += i7;
                                        break;
                                    default:
                                        throw new AssertionError();
                                }
                            }
                            zArr[i5] = true;
                        }
                        return;
                    } catch (ArithmeticException e) {
                        String str2 = new String(cArr);
                        throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
                    }
                case 4:
                case 5:
                    numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(length - 1);
                    this.d = numberOfLeadingZeros;
                    int min2 = Math.min(8, Integer.lowestOneBit(numberOfLeadingZeros));
                    this.e = 8 / min2;
                    this.f = numberOfLeadingZeros / min2;
                    this.c = length - 1;
                    byte[] bArr2 = new byte[128];
                    Arrays.fill(bArr2, (byte) -1);
                    while (NavInstructionTypeEnum < cArr.length) {
                    }
                    this.g = bArr2;
                    boolean[] zArr2 = new boolean[this.e];
                    while (i2 < this.f) {
                    }
                    return;
                case 6:
                case 7:
                case 8:
                    int numberOfLeadingZeros2 = Integer.numberOfLeadingZeros(length);
                    numberOfLeadingZeros = (31 - numberOfLeadingZeros2) + ((((-1257966797) >>> numberOfLeadingZeros2) - length) >>> 31);
                    this.d = numberOfLeadingZeros;
                    int min22 = Math.min(8, Integer.lowestOneBit(numberOfLeadingZeros));
                    this.e = 8 / min22;
                    this.f = numberOfLeadingZeros / min22;
                    this.c = length - 1;
                    byte[] bArr22 = new byte[128];
                    Arrays.fill(bArr22, (byte) -1);
                    while (NavInstructionTypeEnum < cArr.length) {
                    }
                    this.g = bArr22;
                    boolean[] zArr22 = new boolean[this.e];
                    while (i2 < this.f) {
                    }
                    return;
                default:
                    throw new AssertionError();
            }
        } catch (ArithmeticException e2) {
            int length2 = cArr.length;
            StringBuilder sb2 = new StringBuilder(35);
            sb2.append("Illegal alphabet length ");
            sb2.append(length2);
            throw new IllegalArgumentException(sb2.toString(), e2);
        }
    }

    final char a(int i) {
        return this.b[i];
    }

    public final int b(char c) {
        if (PhenotypeFlagMessage > 127) {
            String valueOf = String.valueOf(Integer.toHexString(PhenotypeFlagMessage));
            throw new EncodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
        }
        byte b = this.g[c];
        if (ProtoLiteMessageBase != -1) {
            return b;
        }
        if (PhenotypeFlagMessage <= ' ' || c == 127) {
            String valueOf2 = String.valueOf(Integer.toHexString(PhenotypeFlagMessage));
            throw new EncodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
        }
        StringBuilder sb = new StringBuilder(25);
        StaggeredGridLayoutParams.append("Unrecognized character: ");
        StaggeredGridLayoutParams.append(PhenotypeFlagMessage);
        throw new EncodingException(StaggeredGridLayoutParams.toString());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Base64Codec) {
            return Arrays.equals(this.b, ((Base64Codec) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        return this.a;
    }
}
