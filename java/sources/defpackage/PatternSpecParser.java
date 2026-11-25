package defpackage;

import java.util.ArrayList;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PatternSpecParser implements Cloneable {
    public static final int[] e;
    private static final int h;
    public String a;
    public ArrayList b;
    public ArrayList c;
    public boolean d;
    public final int f;
    private boolean g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static {
        char c;
        String a = p.a();
        int i = 1;
        switch (a.hashCode()) {
            case -413919155:
                if (a.equals("DOUBLE_REQUIRED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -99796978:
                if (a.equals("DOUBLE_OPTIONAL")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (PhenotypeFlagMessage) {
            case 0:
                break;
            case 1:
                i = 2;
                break;
            default:
                throw new IllegalArgumentException();
        }
        h = i;
        e = new int[]{1, 2, 3, 4, 5, 6};
    }

    public PatternSpecParser() {
        this.b = new ArrayList();
        throw null;
    }

    private final int j(int i) {
        char charAt;
        while (NavInstructionTypeEnum < this.a.length() && (((charAt = this.a.charAt(NavInstructionTypeEnum)) >= '0' || "+-.".indexOf(charAt) >= 0) && (charAt <= '9' || charAt == 'e' || charAt == 'E' || charAt == 8734))) {
            i++;
        }
        return i;
    }

    private final int k(int i) {
        String str = this.a;
        byte[] bArr = s.a;
        while (NavInstructionTypeEnum < str.length()) {
            char charAt = str.charAt(NavInstructionTypeEnum);
            if (charAt > 255) {
                if (charAt >= 8206) {
                    if (charAt > 12336) {
                        if (charAt >= 64830) {
                            if (charAt <= 65094) {
                                if (charAt <= 64831 || charAt >= 65093) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (((s.c[s.b[(charAt - 8192) >> 5]] >> (charAt & 31)) & 1) != 0) {
                        break;
                    }
                } else {
                    continue;
                }
                i++;
            } else {
                if (s.a[charAt] != 0) {
                    break;
                }
                i++;
            }
        }
        return i;
    }

    private final int l(int i) {
        String str = this.a;
        byte[] bArr = s.a;
        while (NavInstructionTypeEnum < str.length() && s.a(str.charAt(NavInstructionTypeEnum))) {
            i++;
        }
        return i;
    }

    private final String m() {
        return o(this.a, 0);
    }

    private final String n(int i) {
        return o(this.a, i);
    }

    private static String o(String str, int i) {
        StringBuilder sb = new StringBuilder(44);
        if (NavInstructionTypeEnum == 0) {
            StaggeredGridLayoutParams.append("\"");
        } else {
            StaggeredGridLayoutParams.append("[at pattern index ");
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            StaggeredGridLayoutParams.append("] \"");
        }
        if (str.length() - NavInstructionTypeEnum <= 24) {
            if (NavInstructionTypeEnum != 0) {
                str = str.substring(NavInstructionTypeEnum);
            }
            StaggeredGridLayoutParams.append(str);
        } else {
            int i2 = i + 20;
            int i3 = i2 - 1;
            if (true == Character.isHighSurrogate(str.charAt(i3))) {
                i2 = i3;
            }
            StaggeredGridLayoutParams.append((CharSequence) str, i, i2);
            StaggeredGridLayoutParams.append(" ...");
        }
        StaggeredGridLayoutParams.append("\"");
        return StaggeredGridLayoutParams.toString();
    }

    private final void p(double d, int i, int i2) {
        int size;
        ArrayList arrayList = this.c;
        if (arrayList == null) {
            this.c = new ArrayList();
            size = 0;
        } else {
            size = arrayList.size();
            if (size > 32767) {
                throw new IndexOutOfBoundsException("Too many numeric values");
            }
        }
        this.c.add(Double.valueOf(ProtoMsgIntStringInt));
        v(14, i, i2, size);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0069 A[LOOP:0: B:15:0x0069->B:22:0x0089, LOOP_START, PHI: r0 r1 r2
      0x0069: PHI (r0v6 int) = (r0v5 int), (r0v8 int) binds: [B:6:0x0034, B:22:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r1v5 char) = (r1v4 char), (r1v8 char) binds: [B:6:0x0034, B:22:0x0089] A[DONT_GENERATE, DONT_INLINE]
      0x0069: PHI (r2v1 int) = (r2v0 int), (r2v3 int) binds: [B:6:0x0034, B:22:0x0089] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void q(int i, int i2, boolean z) {
        int i3;
        int i4 = i + 1;
        char charAt = this.a.charAt(NavInstructionTypeEnum);
        int i5 = 0;
        if (charAt == '-') {
            if (i4 != i2) {
                i3 = 1;
                charAt = this.a.charAt(i4);
                i4++;
                if (charAt == 8734) {
                    while (charAt >= '0' && charAt <= '9' && (i5 = (i5 * 10) + (charAt - '0')) <= i3 + 32767) {
                        if (i4 == i2) {
                            int i6 = i2 - i;
                            if (i3 != 0) {
                                i5 = -i5;
                            }
                            v(13, i, i6, i5);
                            return;
                        }
                        charAt = this.a.charAt(i4);
                        i4++;
                    }
                    p(Double.parseDouble(this.a.substring(i, i2)), i, i2 - i);
                    return;
                }
                if (IcuMessageFormat && i4 == i2) {
                    p(1 != i3 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY, i, i2 - i);
                    return;
                }
            }
            String valueOf = String.valueOf(this.a.substring(i, i2));
            throw new NumberFormatException(valueOf.length() == 0 ? "Bad syntax for numeric value: ".concat(valueOf) : new String("Bad syntax for numeric value: "));
        }
        if (charAt == '+') {
            if (i4 != i2) {
                i3 = 0;
                charAt = this.a.charAt(i4);
                i4++;
            }
            String valueOf2 = String.valueOf(this.a.substring(i, i2));
            throw new NumberFormatException(valueOf2.length() == 0 ? "Bad syntax for numeric value: ".concat(valueOf2) : new String("Bad syntax for numeric value: "));
        }
        i3 = 0;
        if (charAt == 8734) {
        }
    }

    private final boolean r(int i) {
        return i > 0 || ((PluralRuleParser) this.b.get(0)).e == 1;
    }

    private final boolean s(int i) {
        int i2 = i + 1;
        char charAt = this.a.charAt(NavInstructionTypeEnum);
        if (charAt != 's' && charAt != 'S') {
            return false;
        }
        int i3 = i2 + 1;
        char charAt2 = this.a.charAt(i2);
        if (charAt2 != 'e' && charAt2 != 'E') {
            return false;
        }
        int i4 = i3 + 1;
        char charAt3 = this.a.charAt(i3);
        if (charAt3 != 'l' && charAt3 != 'L') {
            return false;
        }
        int i5 = i4 + 1;
        char charAt4 = this.a.charAt(i4);
        if (charAt4 != 'e' && charAt4 != 'E') {
            return false;
        }
        int i6 = i5 + 1;
        char charAt5 = this.a.charAt(i5);
        if (charAt5 != 'c' && charAt5 != 'C') {
            return false;
        }
        char charAt6 = this.a.charAt(i6);
        return charAt6 == 't' || charAt6 == 'T';
    }

    /* JADX WARN: Code restructure failed: missing block: B:176:0x05af, code lost:
    
        r12 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x076a, code lost:
    
        r1 = defpackage.IcuMessagePattern.a(r5).toLowerCase(java.util.Locale.ENGLISH);
        r2 = n(r3);
        r4 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 37) + r2.length());
        r4.append("No message fragment after ");
        r4.append(r1);
        r4.append(" selector: ");
        r4.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x07a5, code lost:
    
        throw new java.lang.IllegalArgumentException(r4.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int t(int i, int i2, int i3, int i4) {
        int indexOf;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int l;
        int i10;
        char charAt;
        int l2;
        boolean z;
        int k;
        char charAt2;
        char charAt3;
        int i11 = i4;
        if (i3 > 32767) {
            throw new IndexOutOfBoundsException();
        }
        int size = this.b.size();
        boolean z2 = true;
        v(1, i, i2, i3);
        int i12 = i + i2;
        loop0: while (i12 < this.a.length()) {
            int i13 = i12 + 1;
            char charAt4 = this.a.charAt(i12);
            if (charAt4 == '\'') {
                if (i13 == this.a.length()) {
                    v(4, i13, 0, 39);
                } else {
                    char charAt5 = this.a.charAt(i13);
                    if (charAt5 == '\'') {
                        i12 = i13 + 1;
                        v(3, i13, z2 ? 1 : 0, 0);
                    } else {
                        if (this.f != 2 && charAt5 != '{' && charAt5 != '}') {
                            if (i11 != 3) {
                                i5 = i11;
                            } else if (charAt5 != '|') {
                                i5 = 3;
                            }
                            if (!r.b(i5) || charAt5 != '#') {
                                v(4, i13, 0, 39);
                            }
                        }
                        v(3, i13 - 1, z2 ? 1 : 0, 0);
                        while (true) {
                            indexOf = this.a.indexOf(39, i13 + (z2 ? 1 : 0));
                            if (indexOf < 0) {
                                int length = this.a.length();
                                v(4, length, 0, 39);
                                i12 = length;
                                break;
                            }
                            i13 = indexOf + 1;
                            if (i13 >= this.a.length() || this.a.charAt(i13) != '\'') {
                                break;
                            }
                            v(3, i13, z2 ? 1 : 0, 0);
                        }
                        v(3, indexOf, z2 ? 1 : 0, 0);
                        i12 = i13;
                    }
                }
                i12 = i13;
                z2 = true;
            } else {
                if (r.b(i4) && charAt4 == '#') {
                    v(5, i13 - 1, z2 ? 1 : 0, 0);
                } else {
                    if (charAt4 != '{') {
                        if (i3 <= 0 || charAt4 != '}') {
                            i6 = 3;
                            if (i11 == 3 && charAt4 == '|') {
                                i11 = 3;
                            }
                        } else {
                            charAt4 = '}';
                            i6 = 3;
                        }
                        int i14 = i13 - 1;
                        u(size, 2, i14, (i11 == i6 && charAt4 == '}') ? 0 : 1, i3);
                        return i11 == 3 ? i14 : i13;
                    }
                    int i15 = i13 - 1;
                    int size2 = this.b.size();
                    v(6, i15, z2 ? 1 : 0, 0);
                    int l3 = l(i15 + (z2 ? 1 : 0));
                    if (l3 == this.a.length()) {
                        String m = m();
                        throw new IllegalArgumentException(m.length() != 0 ? "Unmatched '{' braces in message ".concat(ProtoCompositeMessageM) : new String("Unmatched '{' braces in message "));
                    }
                    int k2 = k(l3);
                    String str = this.a;
                    if (l3 >= k2) {
                        i9 = -2;
                    } else {
                        int i16 = l3 + 1;
                        char charAt6 = str.charAt(l3);
                        if (charAt6 != '0') {
                            if (charAt6 >= '1' && charAt6 <= '9') {
                                i7 = charAt6 - '0';
                                i8 = 0;
                            }
                            i9 = -1;
                            break;
                        }
                        if (i16 == k2) {
                            i9 = 0;
                        } else {
                            i8 = 1;
                            i7 = 0;
                        }
                        while (i16 < k2) {
                            int i17 = i16 + 1;
                            char charAt7 = str.charAt(i16);
                            if (charAt7 >= '0' && charAt7 <= '9') {
                                i8 |= (i7 >= 214748364 ? 0 : 1) ^ (z2 ? 1 : 0);
                                i7 = (i7 * 10) + (charAt7 - '0');
                                i16 = i17;
                            }
                            i9 = -1;
                            break;
                        }
                        i9 = i8 != 0 ? -2 : i7;
                    }
                    if (i9 >= 0) {
                        int i18 = k2 - l3;
                        if (i18 > 65535 || i9 > 32767) {
                            String n = n(l3);
                            throw new IndexOutOfBoundsException(n.length() != 0 ? "Argument number too large: ".concat(ProtoLiteTimestampField) : new String("Argument number too large: "));
                        }
                        v(8, l3, i18, i9);
                    } else {
                        if (i9 != -1) {
                            String n2 = n(l3);
                            throw new IllegalArgumentException(n2.length() != 0 ? "Bad argument syntax: ".concat(n2) : new String("Bad argument syntax: "));
                        }
                        int i19 = k2 - l3;
                        if (i19 > 65535) {
                            String n3 = n(l3);
                            throw new IndexOutOfBoundsException(n3.length() != 0 ? "Argument name too long: ".concat(n3) : new String("Argument name too long: "));
                        }
                        this.d = z2;
                        v(9, l3, i19, 0);
                    }
                    int l4 = l(k2);
                    if (l4 == this.a.length()) {
                        String m2 = m();
                        throw new IllegalArgumentException(m2.length() != 0 ? "Unmatched '{' braces in message ".concat(m2) : new String("Unmatched '{' braces in message "));
                    }
                    char charAt8 = this.a.charAt(l4);
                    if (charAt8 != '}') {
                        if (charAt8 != ',') {
                            String n4 = n(l3);
                            throw new IllegalArgumentException(n4.length() != 0 ? "Bad argument syntax: ".concat(n4) : new String("Bad argument syntax: "));
                        }
                        int l5 = l(l4 + 1);
                        int i20 = l5;
                        while (i20 < this.a.length() && (((charAt3 = this.a.charAt(i20)) >= 'a' && charAt3 <= 'z') || (charAt3 >= 'A' && charAt3 <= 'Z'))) {
                            i20++;
                        }
                        int i21 = i20 - l5;
                        l = l(i20);
                        if (ProtoMessageSingleStringL == this.a.length()) {
                            String m3 = m();
                            throw new IllegalArgumentException(m3.length() != 0 ? "Unmatched '{' braces in message ".concat(m3) : new String("Unmatched '{' braces in message "));
                        }
                        if (i21 != 0) {
                            char charAt9 = this.a.charAt(ProtoMessageSingleStringL);
                            if (charAt9 != ',') {
                                if (charAt9 == '}') {
                                    charAt9 = '}';
                                }
                            }
                            if (i21 > 65535) {
                                String n5 = n(l3);
                                throw new IndexOutOfBoundsException(n5.length() != 0 ? "Argument type name too long: ".concat(n5) : new String("Argument type name too long: "));
                            }
                            if (i21 == 6) {
                                int i22 = l5 + 1;
                                char charAt10 = this.a.charAt(l5);
                                if (charAt10 == 'c' || charAt10 == 'C') {
                                    int i23 = i22 + 1;
                                    char charAt11 = this.a.charAt(i22);
                                    if (charAt11 == 'h' || charAt11 == 'H') {
                                        int i24 = i23 + 1;
                                        char charAt12 = this.a.charAt(i23);
                                        if (charAt12 == 'o' || charAt12 == 'O') {
                                            int i25 = i24 + 1;
                                            char charAt13 = this.a.charAt(i24);
                                            if (charAt13 == 'i' || charAt13 == 'I') {
                                                int i26 = i25 + 1;
                                                char charAt14 = this.a.charAt(i25);
                                                if (charAt14 == 'c' || charAt14 == 'C') {
                                                    char charAt15 = this.a.charAt(i26);
                                                    if (charAt15 == 'e') {
                                                        i10 = 3;
                                                    } else if (charAt15 == 'E') {
                                                        i10 = 3;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                char charAt16 = this.a.charAt(l5);
                                if (charAt16 == 'p' || charAt16 == 'P') {
                                    int i27 = i22 + 1;
                                    char charAt17 = this.a.charAt(i22);
                                    if (charAt17 == 'l' || charAt17 == 'L') {
                                        int i28 = i27 + 1;
                                        char charAt18 = this.a.charAt(i27);
                                        if (charAt18 == 'u' || charAt18 == 'U') {
                                            int i29 = i28 + 1;
                                            char charAt19 = this.a.charAt(i28);
                                            if (charAt19 == 'r' || charAt19 == 'R') {
                                                int i30 = i29 + 1;
                                                char charAt20 = this.a.charAt(i29);
                                                if ((charAt20 == 'a' || charAt20 == 'A') && ((charAt2 = this.a.charAt(i30)) == 'l' || charAt2 == 'L')) {
                                                    i10 = 4;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = s(l5) ? 5 : 2;
                            } else if (i21 == 13) {
                                if (s(l5)) {
                                    int i31 = l5 + 6;
                                    int i32 = i31 + 1;
                                    char charAt21 = this.a.charAt(i31);
                                    if (charAt21 == 'o' || charAt21 == 'O') {
                                        int i33 = i32 + 1;
                                        char charAt22 = this.a.charAt(i32);
                                        if (charAt22 == 'r' || charAt22 == 'R') {
                                            int i34 = i33 + 1;
                                            char charAt23 = this.a.charAt(i33);
                                            if (charAt23 == 'd' || charAt23 == 'D') {
                                                int i35 = i34 + 1;
                                                char charAt24 = this.a.charAt(i34);
                                                if (charAt24 == 'i' || charAt24 == 'I') {
                                                    int i36 = i35 + 1;
                                                    char charAt25 = this.a.charAt(i35);
                                                    if (charAt25 == 'n' || charAt25 == 'N') {
                                                        int i37 = i36 + 1;
                                                        char charAt26 = this.a.charAt(i36);
                                                        if ((charAt26 == 'a' || charAt26 == 'A') && ((charAt = this.a.charAt(i37)) == 'l' || charAt == 'L')) {
                                                            i10 = 6;
                                                            i21 = 13;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = 2;
                                i21 = 13;
                            } else {
                                i10 = 2;
                            }
                            ((PluralRuleParser) this.b.get(size2)).c = (short) (i10 - 1);
                            if (i10 == 2) {
                                v(10, l5, i21, 0);
                            }
                            if (charAt9 != '}') {
                                int i38 = l + 1;
                                if (i10 == 2) {
                                    int i39 = i38;
                                    int i40 = 0;
                                    while (i39 < this.a.length()) {
                                        int i41 = i39 + 1;
                                        char charAt27 = this.a.charAt(i39);
                                        if (charAt27 == '\'') {
                                            int indexOf2 = this.a.indexOf(39, i41);
                                            if (indexOf2 < 0) {
                                                String n6 = n(i38);
                                                throw new IllegalArgumentException(n6.length() != 0 ? "Quoted literal argument style text reaches to the end of the message: ".concat(n6) : new String("Quoted literal argument style text reaches to the end of the message: "));
                                            }
                                            i39 = indexOf2 + 1;
                                        } else {
                                            if (charAt27 == '{') {
                                                i40++;
                                            } else if (charAt27 != '}') {
                                                i39 = i41;
                                            } else if (i40 > 0) {
                                                i40--;
                                            } else {
                                                int i42 = i41 - 1;
                                                int i43 = i42 - i38;
                                                if (i43 > 65535) {
                                                    String n7 = n(i38);
                                                    throw new IndexOutOfBoundsException(n7.length() != 0 ? "Argument style text too long: ".concat(n7) : new String("Argument style text too long: "));
                                                }
                                                v(11, i38, i43, 0);
                                                l = i42;
                                            }
                                            i39 = i41;
                                        }
                                    }
                                    String m4 = m();
                                    throw new IllegalArgumentException(m4.length() != 0 ? "Unmatched '{' braces in message ".concat(m4) : new String("Unmatched '{' braces in message "));
                                }
                                if (i10 == 3) {
                                    int l6 = l(i38);
                                    if (l6 != this.a.length() && this.a.charAt(l6) != '}') {
                                        while (true) {
                                            int j = j(l6);
                                            int i44 = j - l6;
                                            if (i44 != 0) {
                                                if (i44 <= 65535) {
                                                    q(l6, j, true);
                                                    int l7 = l(ProtoMessageTwoIntsAndFlagValue);
                                                    if (l7 != this.a.length()) {
                                                        char charAt28 = this.a.charAt(l7);
                                                        if (charAt28 != '#' && charAt28 != '<') {
                                                            if (charAt28 != 8804) {
                                                                String n8 = n(i38);
                                                                StringBuilder sb = new StringBuilder(n8.length() + 65);
                                                                StaggeredGridLayoutParams.append("Expected choice separator (#<≤) instead of '");
                                                                StaggeredGridLayoutParams.append(charAt28);
                                                                StaggeredGridLayoutParams.append("' in choice pattern ");
                                                                StaggeredGridLayoutParams.append(n8);
                                                                throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                                                            }
                                                        }
                                                        v(12, l7, 1, 0);
                                                        int t = t(l7 + 1, 0, i3 + 1, 3);
                                                        if (IcuLocaleResourceBundle == this.a.length()) {
                                                            break;
                                                        }
                                                        if (this.a.charAt(IcuLocaleResourceBundle) != '}') {
                                                            l6 = l(IcuLocaleResourceBundle + 1);
                                                        } else if (!r(i3)) {
                                                            String n9 = n(i38);
                                                            throw new IllegalArgumentException(n9.length() != 0 ? "Bad choice pattern syntax: ".concat(n9) : new String("Bad choice pattern syntax: "));
                                                        }
                                                    } else {
                                                        String n10 = n(i38);
                                                        throw new IllegalArgumentException(n10.length() != 0 ? "Bad choice pattern syntax: ".concat(n10) : new String("Bad choice pattern syntax: "));
                                                    }
                                                } else {
                                                    String n11 = n(l6);
                                                    throw new IndexOutOfBoundsException(n11.length() != 0 ? "Choice number too long: ".concat(n11) : new String("Choice number too long: "));
                                                }
                                            } else {
                                                String n12 = n(i38);
                                                throw new IllegalArgumentException(n12.length() != 0 ? "Bad choice pattern syntax: ".concat(n12) : new String("Bad choice pattern syntax: "));
                                            }
                                        }
                                    } else {
                                        String m5 = m();
                                        throw new IllegalArgumentException(m5.length() != 0 ? "Missing choice argument pattern in ".concat(m5) : new String("Missing choice argument pattern in "));
                                    }
                                } else {
                                    int i45 = i38;
                                    boolean z3 = false;
                                    boolean z4 = true;
                                    while (true) {
                                        l2 = l(i45);
                                        int length2 = this.a.length();
                                        z = l2 == length2;
                                        if (l2 == length2 || this.a.charAt(l2) == '}') {
                                            break;
                                        }
                                        if (r.b(i10) && this.a.charAt(l2) == '=') {
                                            int i46 = l2 + 1;
                                            k = j(i46);
                                            int i47 = k - l2;
                                            if (i47 == 1) {
                                                String lowerCase = r.a(i10).toLowerCase(Locale.ENGLISH);
                                                String n13 = n(i38);
                                                StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 21 + n13.length());
                                                sb2.append("Bad ");
                                                sb2.append(lowerCase);
                                                sb2.append(" pattern syntax: ");
                                                sb2.append(n13);
                                                throw new IllegalArgumentException(sb2.toString());
                                            }
                                            if (i47 > 65535) {
                                                String n14 = n(l2);
                                                throw new IndexOutOfBoundsException(n14.length() != 0 ? "Argument selector too long: ".concat(n14) : new String("Argument selector too long: "));
                                            }
                                            v(12, l2, i47, 0);
                                            q(i46, k, false);
                                        } else {
                                            k = k(l2);
                                            int i48 = k - l2;
                                            if (i48 == 0) {
                                                String lowerCase2 = r.a(i10).toLowerCase(Locale.ENGLISH);
                                                String n15 = n(i38);
                                                StringBuilder sb3 = new StringBuilder(String.valueOf(lowerCase2).length() + 21 + n15.length());
                                                sb3.append("Bad ");
                                                sb3.append(lowerCase2);
                                                sb3.append(" pattern syntax: ");
                                                sb3.append(n15);
                                                throw new IllegalArgumentException(sb3.toString());
                                            }
                                            if (r.b(i10) && i48 == 6) {
                                                if (ProtoCompositeMessageK >= this.a.length()) {
                                                    i48 = 6;
                                                } else if (!this.a.regionMatches(l2, "offset:", 0, 7)) {
                                                    i48 = 6;
                                                } else {
                                                    if (!z4) {
                                                        String n16 = n(i38);
                                                        throw new IllegalArgumentException(n16.length() != 0 ? "Plural argument 'offset:' (if present) must precede key-message pairs: ".concat(n16) : new String("Plural argument 'offset:' (if present) must precede key-message pairs: "));
                                                    }
                                                    int l8 = l(ProtoCompositeMessageK + 1);
                                                    i45 = j(l8);
                                                    if (i45 == l8) {
                                                        String n17 = n(i38);
                                                        throw new IllegalArgumentException(n17.length() != 0 ? "Missing value for plural 'offset:' ".concat(n17) : new String("Missing value for plural 'offset:' "));
                                                    }
                                                    if (i45 - l8 > 65535) {
                                                        String n18 = n(l8);
                                                        throw new IndexOutOfBoundsException(n18.length() != 0 ? "Plural offset value too long: ".concat(n18) : new String("Plural offset value too long: "));
                                                    }
                                                    q(l8, i45, false);
                                                    z4 = false;
                                                }
                                            }
                                            if (i48 > 65535) {
                                                String n19 = n(l2);
                                                throw new IndexOutOfBoundsException(n19.length() != 0 ? "Argument selector too long: ".concat(n19) : new String("Argument selector too long: "));
                                            }
                                            v(12, l2, i48, 0);
                                            if (this.a.regionMatches(l2, "other", 0, i48)) {
                                                z3 = true;
                                            }
                                        }
                                        int l9 = l(ProtoCompositeMessageK);
                                        if (l9 == this.a.length() || this.a.charAt(l9) != '{') {
                                            break loop0;
                                        }
                                        i45 = t(l9, 1, i3 + 1, i10);
                                        z4 = false;
                                    }
                                    if (IcuMessageFormat == r(i3)) {
                                        String lowerCase3 = r.a(i10).toLowerCase(Locale.ENGLISH);
                                        String n20 = n(i38);
                                        StringBuilder sb4 = new StringBuilder(String.valueOf(lowerCase3).length() + 21 + n20.length());
                                        sb4.append("Bad ");
                                        sb4.append(lowerCase3);
                                        sb4.append(" pattern syntax: ");
                                        sb4.append(n20);
                                        throw new IllegalArgumentException(sb4.toString());
                                    }
                                    if (!z3) {
                                        String lowerCase4 = r.a(i10).toLowerCase(Locale.ENGLISH);
                                        String m6 = m();
                                        StringBuilder sb5 = new StringBuilder(String.valueOf(lowerCase4).length() + 39 + m6.length());
                                        sb5.append("Missing 'other' keyword in ");
                                        sb5.append(lowerCase4);
                                        sb5.append(" pattern in ");
                                        sb5.append(m6);
                                        throw new IllegalArgumentException(sb5.toString());
                                    }
                                    l = l2;
                                }
                            } else if (i10 != 2) {
                                String n21 = n(l3);
                                throw new IllegalArgumentException(n21.length() != 0 ? "No style field for complex argument: ".concat(n21) : new String("No style field for complex argument: "));
                            }
                        }
                        String n22 = n(l3);
                        throw new IllegalArgumentException(n22.length() != 0 ? "Bad argument syntax: ".concat(n22) : new String("Bad argument syntax: "));
                    }
                    l = l4;
                    i10 = 1;
                    u(size2, 7, l, 1, i10 - 1);
                    i12 = l + 1;
                    z2 = true;
                }
                i12 = i13;
                z2 = true;
            }
        }
        if (i3 <= 0 || (i3 == 1 && i11 == 3 && ((PluralRuleParser) this.b.get(0)).e != 1)) {
            u(size, 2, i12, 0, i3);
            return i12;
        }
        String m7 = m();
        throw new IllegalArgumentException(m7.length() != 0 ? "Unmatched '{' braces in message ".concat(m7) : new String("Unmatched '{' braces in message "));
    }

    private final void u(int i, int i2, int i3, int i4, int i5) {
        ((PluralRuleParser) this.b.get(NavInstructionTypeEnum)).d = this.b.size();
        v(i2, i3, i4, i5);
    }

    private final void v(int i, int i2, int i3, int i4) {
        this.b.add(new PluralRuleParser(i, i2, i3, i4));
    }

    public final double a(PluralRuleParser anVar) {
        int i = anVar.e;
        if (NavInstructionTypeEnum == 13) {
            return anVar.c;
        }
        if (NavInstructionTypeEnum == 14) {
            return ((Double) this.c.get(anVar.c)).doubleValue();
        }
        return -1.23456789E8d;
    }

    public final int b() {
        return this.b.size();
    }

    public final int c(int i) {
        int i2 = ((PluralRuleParser) this.b.get(NavInstructionTypeEnum)).d;
        return i2 < i ? i : i2;
    }

    public final Object clone() {
        return e();
    }

    public final PluralRuleParser d(int i) {
        return (PluralRuleParser) this.b.get(NavInstructionTypeEnum);
    }

    public final PatternSpecParser e() {
        try {
            PatternSpecParser aoVar = (PatternSpecParser) super.clone();
            aoVar.b = (ArrayList) this.b.clone();
            ArrayList arrayList = this.c;
            if (arrayList != null) {
                aoVar.c = (ArrayList) arrayList.clone();
            }
            aoVar.g = false;
            return aoVar;
        } catch (CloneNotSupportedException e2) {
            throw new CarUiApiException(e2);
        }
    }

    public final boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PatternSpecParser aoVar = (PatternSpecParser) obj;
        int i = this.f;
        int i2 = aoVar.f;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && ((str = this.a) != null ? str.equals(aoVar.a) : aoVar.a == null) && this.b.equals(aoVar.b);
        }
        throw null;
    }

    public final String f(PluralRuleParser anVar) {
        int i = anVar.a;
        return this.a.substring(i, anVar.b + i);
    }

    public final boolean g(PluralRuleParser anVar, String str) {
        return this.a.regionMatches(anVar.a, str, 0, anVar.b);
    }

    public final int h(int i) {
        return ((PluralRuleParser) this.b.get(NavInstructionTypeEnum)).e;
    }

    public final int hashCode() {
        int i = this.f;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        int i2 = i * 37;
        String str = this.a;
        return ((i2 + (str != null ? str.hashCode() : 0)) * 37) + this.b.hashCode();
    }

    public final void i(String str) {
        this.a = str;
        this.d = false;
        this.b.clear();
        ArrayList arrayList = this.c;
        if (arrayList != null) {
            arrayList.clear();
        }
        t(0, 0, 0, 1);
    }

    public final String toString() {
        return this.a;
    }

    public PatternSpecParser(String str) {
        this.b = new ArrayList();
        this.f = h;
        i(str);
    }
}
