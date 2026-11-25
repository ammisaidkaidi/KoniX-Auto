package defpackage;

import java.io.Serializable;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PluralRulesLocaleData implements Serializable {
    public static final PluralRulesLocaleData a;
    static final Pattern b;
    static final Pattern c;
    static final Pattern d;
    static final Pattern e;
    static final Pattern f;
    static final Pattern g;
    private static final DecimalPredicate i;
    private static final PluralRuleExpression j;
    private static final long serialVersionUID = 1;
    public final PluralKeywordValues h;

    static {
        AlwaysTrueDecimalPredicate aaVar = new AlwaysTrueDecimalPredicate();
        i = aaVar;
        PluralRuleExpression ajVar = new PluralRuleExpression("other", aaVar, null, null);
        j = ajVar;
        PluralKeywordValues akVar = new PluralKeywordValues();
        akVar.a(ajVar);
        a = new PluralRulesLocaleData(akVar);
        b = Pattern.compile("\\s*\\Q\\E@\\s*");
        c = Pattern.compile("\\s*or\\s*");
        d = Pattern.compile("\\s*and\\s*");
        e = Pattern.compile("\\s*,\\s*");
        Pattern.compile("\\s*\\Q..\\E\\s*");
        f = Pattern.compile("\\s*~\\s*");
        g = Pattern.compile("\\s*;\\s*");
    }

    private PluralRulesLocaleData(PluralKeywordValues akVar) {
        this.h = akVar;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = akVar.b.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((PluralRuleExpression) it.next()).a);
        }
        Collections.unmodifiableSet(linkedHashSet);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0414 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x042f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static PluralRuleExpression a(String str) {
        PluralSampleListParser agVar;
        PluralSampleListParser agVar2;
        String str2;
        PluralSampleListParser agVar3;
        PluralSampleListParser agVar4;
        DecimalPredicate adVar;
        char c2;
        int i2;
        String[] strArr;
        DecimalPredicate adVar2;
        String str3;
        PluralSampleListParser agVar5;
        PluralSampleListParser agVar6;
        int i3;
        String[] strArr2;
        int i4;
        DecimalPredicate adVar3;
        int parseInt;
        int i5;
        boolean z;
        boolean equals;
        int i6;
        String f2;
        boolean z2;
        boolean z3;
        long parseLong;
        int length;
        String[] strArr3;
        long j2;
        boolean z4;
        Object obj;
        long[] jArr;
        if (str.length() == 0) {
            return j;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int indexOf = lowerCase.indexOf(58);
        if (indexOf == -1) {
            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 34);
            StaggeredGridLayoutParams.append("missing ':' in rule description '");
            StaggeredGridLayoutParams.append(lowerCase);
            StaggeredGridLayoutParams.append("'");
            throw new ParseException(StaggeredGridLayoutParams.toString(), 0);
        }
        String trim = lowerCase.substring(0, indexOf).trim();
        for (int i7 = 0; i7 < trim.length(); i7++) {
            char charAt = trim.charAt(i7);
            if (charAt < 'a' || charAt > 'z') {
                StringBuilder sb2 = new StringBuilder(String.valueOf(trim).length() + 22);
                sb2.append("keyword '");
                sb2.append(trim);
                sb2.append(" is not valid");
                throw new ParseException(sb2.toString(), 0);
            }
        }
        String trim2 = lowerCase.substring(indexOf + 1).trim();
        String[] split = b.split(trim2);
        switch (split.length) {
            case 1:
                agVar = null;
                agVar2 = null;
                break;
            case 2:
                agVar = PluralSampleListParser.a(split[1]);
                if (agVar.c == 2) {
                    agVar2 = agVar;
                    agVar = null;
                    break;
                } else {
                    agVar2 = null;
                    break;
                }
            case 3:
                agVar = PluralSampleListParser.a(split[1]);
                agVar2 = PluralSampleListParser.a(split[2]);
                if (agVar.c != 1 || agVar2.c != 2) {
                    String valueOf = String.valueOf(trim2);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Must have @integer then @decimal in ".concat(valueOf) : new String("Must have @integer then @decimal in "));
                }
                break;
            default:
                String valueOf2 = String.valueOf(trim2);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Too many samples in ".concat(valueOf2) : new String("Too many samples in "));
        }
        boolean equals2 = trim.equals("other");
        if (equals2 != (split[0].length() == 0)) {
            throw new IllegalArgumentException("The keyword 'other' must have AppCompatEditText constraints, just samples.");
        }
        if (equals2) {
            adVar = i;
            str2 = trim;
            agVar3 = agVar;
            agVar4 = agVar2;
        } else {
            String[] split2 = c.split(split[0]);
            DecimalPredicate adVar4 = null;
            int i8 = 0;
            while (i8 < split2.length) {
                String[] split3 = d.split(split2[i8]);
                int i9 = 0;
                DecimalPredicate adVar5 = null;
                while (i9 < split3.length) {
                    DecimalPredicate adVar6 = i;
                    String trim3 = split3[i9].trim();
                    ArrayList arrayList = new ArrayList();
                    int i10 = -1;
                    for (int i11 = 0; i11 < trim3.length(); i11++) {
                        char charAt2 = trim3.charAt(i11);
                        if (charAt2 > ' ' || !(charAt2 == ' ' || charAt2 == '\t' || charAt2 == '\n' || charAt2 == '\f' || charAt2 == '\r')) {
                            if (charAt2 <= '=' && charAt2 >= '!' && (charAt2 == '!' || charAt2 == '%' || charAt2 == ',' || charAt2 == '.' || charAt2 == '=')) {
                                if (i10 >= 0) {
                                    arrayList.add(trim3.substring(i10, i11));
                                }
                                arrayList.add(trim3.substring(i11, i11 + 1));
                                i10 = -1;
                            } else if (i10 < 0) {
                                i10 = i11;
                            }
                        } else if (i10 >= 0) {
                            arrayList.add(trim3.substring(i10, i11));
                            i10 = -1;
                        }
                    }
                    if (i10 >= 0) {
                        arrayList.add(trim3.substring(i10));
                    }
                    String[] strArr4 = (String[]) arrayList.toArray(new String[arrayList.size()]);
                    String str4 = strArr4[0];
                    try {
                        switch (str4.hashCode()) {
                            case 102:
                                if (str4.equals("f")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 105:
                                if (str4.equals("i")) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 106:
                                if (str4.equals("j")) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 110:
                                if (str4.equals("n")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 116:
                                if (str4.equals("t")) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 118:
                                if (str4.equals("v")) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 119:
                                if (str4.equals("w")) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                                i2 = 1;
                                if (strArr4.length > 1) {
                                    String str5 = strArr4[1];
                                    if ("mod".equals(str5) || "%".equals(str5)) {
                                        parseInt = Integer.parseInt(strArr4[2]);
                                        str5 = f(strArr4, 3, trim3);
                                        i5 = 4;
                                    } else {
                                        i5 = 2;
                                        parseInt = 0;
                                    }
                                    if ("not".equals(str5)) {
                                        int i12 = i5 + 1;
                                        String f3 = f(strArr4, i5, trim3);
                                        if ("=".equals(f3)) {
                                            throw g(f3, trim3);
                                        }
                                        strArr = split2;
                                        z = false;
                                        i5 = i12;
                                        str5 = f3;
                                    } else {
                                        strArr = split2;
                                        if ("!".equals(str5)) {
                                            int i13 = i5 + 1;
                                            str5 = f(strArr4, i5, trim3);
                                            if (!"=".equals(str5)) {
                                                throw g(str5, trim3);
                                            }
                                            i5 = i13;
                                            z = false;
                                        } else {
                                            z = true;
                                        }
                                    }
                                    strArr2 = split3;
                                    if ("is".equals(str5)) {
                                        str3 = trim;
                                    } else {
                                        str3 = trim;
                                        if (!"in".equals(str5) && !"=".equals(str5)) {
                                            if (!"within".equals(str5)) {
                                                throw g(str5, trim3);
                                            }
                                            i6 = i5 + 1;
                                            f2 = f(strArr4, i5, trim3);
                                            equals = false;
                                            z2 = false;
                                            if ("not".equals(f2)) {
                                                z3 = z;
                                            } else {
                                                if (!equals && !z) {
                                                    throw g(f2, trim3);
                                                }
                                                z3 = !z;
                                                f2 = f(strArr4, i6, trim3);
                                                i6++;
                                            }
                                            ArrayList arrayList2 = new ArrayList();
                                            agVar6 = agVar2;
                                            i3 = i8;
                                            double d2 = 9.223372036854776E18d;
                                            double d3 = -9.223372036854776E18d;
                                            while (true) {
                                                i4 = i9;
                                                adVar3 = adVar5;
                                                parseLong = Long.parseLong(f2);
                                                length = strArr4.length;
                                                String str6 = f2;
                                                if (i6 >= length) {
                                                    agVar5 = agVar;
                                                    int i14 = i6 + 1;
                                                    String f4 = f(strArr4, i6, trim3);
                                                    adVar2 = adVar4;
                                                    if (f4.equals(".")) {
                                                        int i15 = i14 + 1;
                                                        String f5 = f(strArr4, i14, trim3);
                                                        if (!f5.equals(".")) {
                                                            throw g(f5, trim3);
                                                        }
                                                        int i16 = i15 + 1;
                                                        String f6 = f(strArr4, i15, trim3);
                                                        long parseLong2 = Long.parseLong(f6);
                                                        if (i16 < length) {
                                                            i6 = i16 + 1;
                                                            String f7 = f(strArr4, i16, trim3);
                                                            if (!f7.equals(",")) {
                                                                throw g(f7, trim3);
                                                            }
                                                            strArr3 = strArr4;
                                                            str6 = f7;
                                                            j2 = parseLong2;
                                                        } else {
                                                            strArr3 = strArr4;
                                                            i6 = i16;
                                                            j2 = parseLong2;
                                                            str6 = f6;
                                                        }
                                                        if (parseLong > j2) {
                                                            StringBuilder sb3 = new StringBuilder(41);
                                                            sb3.append(parseLong);
                                                            sb3.append("~");
                                                            sb3.append(j2);
                                                            throw g(sb3.toString(), trim3);
                                                        }
                                                        if (parseInt != 0) {
                                                            z4 = equals;
                                                            obj = ",";
                                                            if (j2 >= parseInt) {
                                                                StringBuilder sb4 = new StringBuilder(36);
                                                                sb4.append(j2);
                                                                sb4.append(">mod=");
                                                                sb4.append(parseInt);
                                                                throw g(sb4.toString(), trim3);
                                                            }
                                                        } else {
                                                            z4 = equals;
                                                            obj = ",";
                                                        }
                                                        arrayList2.add(Long.valueOf(parseLong));
                                                        arrayList2.add(Long.valueOf(j2));
                                                        d2 = Math.min(d2, parseLong);
                                                        d3 = Math.max(d3, j2);
                                                        if (i6 >= length) {
                                                            String str7 = str6;
                                                            if (str7.equals(obj)) {
                                                                throw g(str7, trim3);
                                                            }
                                                            if (arrayList2.size() == 2) {
                                                                jArr = null;
                                                            } else {
                                                                int size = arrayList2.size();
                                                                long[] jArr2 = new long[size];
                                                                for (int i17 = 0; i17 < size; i17++) {
                                                                    jArr2[i17] = ((Long) arrayList2.get(i17)).longValue();
                                                                }
                                                                jArr = jArr2;
                                                            }
                                                            if (d2 != d3 && z4 && !z3) {
                                                                throw g("is not <range>", trim3);
                                                            }
                                                            adVar6 = new DecimalRangeCondition(parseInt, z3, i2, z2, d2, d3, jArr);
                                                        } else {
                                                            f2 = f(strArr3, i6, trim3);
                                                            i6++;
                                                            strArr4 = strArr3;
                                                            equals = z4;
                                                            i9 = i4;
                                                            adVar5 = adVar3;
                                                            agVar = agVar5;
                                                            adVar4 = adVar2;
                                                        }
                                                    } else {
                                                        if (!f4.equals(",")) {
                                                            throw g(f4, trim3);
                                                        }
                                                        str6 = f4;
                                                        i6 = i14;
                                                    }
                                                } else {
                                                    adVar2 = adVar4;
                                                    agVar5 = agVar;
                                                }
                                                strArr3 = strArr4;
                                                j2 = parseLong;
                                                if (parseLong > j2) {
                                                }
                                            }
                                        }
                                    }
                                    equals = "is".equals(str5);
                                    if (equals && !z) {
                                        throw g(str5, trim3);
                                    }
                                    i6 = i5 + 1;
                                    f2 = f(strArr4, i5, trim3);
                                    z2 = true;
                                    if ("not".equals(f2)) {
                                    }
                                    ArrayList arrayList22 = new ArrayList();
                                    agVar6 = agVar2;
                                    i3 = i8;
                                    double d22 = 9.223372036854776E18d;
                                    double d32 = -9.223372036854776E18d;
                                    while (true) {
                                        i4 = i9;
                                        adVar3 = adVar5;
                                        parseLong = Long.parseLong(f2);
                                        length = strArr4.length;
                                        String str62 = f2;
                                        if (i6 >= length) {
                                        }
                                        strArr3 = strArr4;
                                        j2 = parseLong;
                                        if (parseLong > j2) {
                                        }
                                        f2 = f(strArr3, i6, trim3);
                                        i6++;
                                        strArr4 = strArr3;
                                        equals = z4;
                                        i9 = i4;
                                        adVar5 = adVar3;
                                        agVar = agVar5;
                                        adVar4 = adVar2;
                                    }
                                } else {
                                    strArr = split2;
                                    adVar2 = adVar4;
                                    str3 = trim;
                                    agVar5 = agVar;
                                    agVar6 = agVar2;
                                    i3 = i8;
                                    strArr2 = split3;
                                    i4 = i9;
                                    adVar3 = adVar5;
                                }
                                adVar5 = adVar3 == null ? adVar6 : new AndDecimalPredicate(adVar3, adVar6);
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 1:
                                i2 = 2;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 2:
                                i2 = 3;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 3:
                                i2 = 4;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 4:
                                i2 = 5;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 5:
                                i2 = 6;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            case 6:
                                i2 = 7;
                                if (strArr4.length > 1) {
                                }
                                if (adVar3 == null) {
                                }
                                i9 = i4 + 1;
                                split2 = strArr;
                                split3 = strArr2;
                                trim = str3;
                                i8 = i3;
                                agVar2 = agVar6;
                                agVar = agVar5;
                                adVar4 = adVar2;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    } catch (Exception e2) {
                        throw g(str4, trim3);
                    }
                }
                String[] strArr5 = split2;
                DecimalPredicate adVar7 = adVar4;
                String str8 = trim;
                PluralSampleListParser agVar7 = agVar;
                PluralSampleListParser agVar8 = agVar2;
                int i18 = i8;
                DecimalPredicate adVar8 = adVar5;
                adVar4 = adVar7 == null ? adVar8 : new OrDecimalPredicate(adVar7, adVar8);
                i8 = i18 + 1;
                split2 = strArr5;
                trim = str8;
                agVar2 = agVar8;
                agVar = agVar7;
            }
            str2 = trim;
            agVar3 = agVar;
            agVar4 = agVar2;
            adVar = adVar4;
        }
        return new PluralRuleExpression(str2, adVar, agVar3, agVar4);
    }

    public static PluralRulesLocaleData b(String str) {
        String trim = str.trim();
        if (trim.length() == 0) {
            return a;
        }
        PluralKeywordValues akVar = new PluralKeywordValues();
        if (trim.endsWith(";")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        for (String str2 : g.split(trim)) {
            PluralRuleExpression a2 = a(str2.trim());
            boolean z = akVar.a;
            boolean z2 = true;
            if (a2.c == null && a2.d == null) {
                z2 = false;
            }
            akVar.a = z | z2;
            akVar.a(a2);
        }
        Iterator it = akVar.b.iterator();
        PluralRuleExpression ajVar = null;
        while (it.hasNext()) {
            PluralRuleExpression ajVar2 = (PluralRuleExpression) it.next();
            if ("other".equals(ajVar2.a)) {
                it.remove();
                ajVar = ajVar2;
            }
        }
        if (ajVar == null) {
            ajVar = a("other:");
        }
        akVar.b.add(ajVar);
        return new PluralRulesLocaleData(akVar);
    }

    public static void c(StringBuilder sb, double d2, double d3, boolean z) {
        if (IcuMessageFormat) {
            StaggeredGridLayoutParams.append(",");
        }
        if (d2 == d3) {
            StaggeredGridLayoutParams.append(e(d2));
            return;
        }
        String e2 = e(d2);
        String e3 = e(d3);
        StringBuilder sb2 = new StringBuilder(String.valueOf(e2).length() + 2 + String.valueOf(e3).length());
        sb2.append(e2);
        sb2.append("..");
        sb2.append(e3);
        StaggeredGridLayoutParams.append(sb2.toString());
    }

    public static PluralRulesLocaleData d(Locale locale, int i2) {
        OrdinalPluralRulesData amVar = am.a;
        amVar.b();
        String str = (String) (i2 == 1 ? amVar.b : amVar.c).get(locale.getLanguage());
        if (str == null || str.trim().length() == 0) {
            return a;
        }
        PluralRulesLocaleData a2 = amVar.a(str);
        return a2 == null ? a : a2;
    }

    private static String e(double d2) {
        long j2 = (long) d2;
        return d2 == ((double) j2) ? String.valueOf(j2) : String.valueOf(d2);
    }

    private static String f(String[] strArr, int i2, String str) {
        if (i2 < strArr.length) {
            return strArr[i2];
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        StaggeredGridLayoutParams.append("missing token at end of '");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("'");
        throw new ParseException(StaggeredGridLayoutParams.toString(), -1);
    }

    private static ParseException g(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append("unexpected token '");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("' in '");
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append("'");
        return new ParseException(StaggeredGridLayoutParams.toString(), -1);
    }

    public final boolean equals(Object obj) {
        PluralRulesLocaleData alVar;
        return (obj instanceof PluralRulesLocaleData) && (alVar = (PluralRulesLocaleData) obj) != null && toString().equals(alVar.toString());
    }

    @Deprecated
    public final int hashCode() {
        return this.h.hashCode();
    }

    public final String toString() {
        return this.h.toString();
    }
}
