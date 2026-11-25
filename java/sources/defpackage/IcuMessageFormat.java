package defpackage;

import java.io.IOException;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class IcuMessageFormat extends Format {
    private static final String[] d = {"number", "date", "time", "spellout", "ordinal", "duration"};
    private static final String[] e = {"", "currency", "percent", "integer"};
    private static final String[] f = {"", "short", "medium", "long", "full"};
    private static final Locale g = new Locale("");
    static final long serialVersionUID = 7136212545847378652L;
    public transient Locale a;
    public transient PatternSpecParser b;
    public transient Map c;
    private transient DateFormat h;
    private transient NumberFormat i;
    private transient MessageFormatFormatterState j;
    private transient MessageFormatFormatterState k;

    /* JADX WARN: Removed duplicated region for block: B:29:0x0116 A[Catch: RuntimeException -> 0x0150, TryCatch #0 {RuntimeException -> 0x0150, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0015, B:8:0x0019, B:9:0x001c, B:11:0x0028, B:16:0x0035, B:18:0x003c, B:20:0x0058, B:21:0x0062, B:22:0x0069, B:55:0x006c, B:56:0x0128, B:57:0x014b, B:23:0x0070, B:24:0x0076, B:25:0x0079, B:26:0x00a4, B:27:0x0112, B:29:0x0116, B:30:0x011d, B:32:0x007c, B:33:0x0084, B:34:0x008c, B:35:0x0094, B:36:0x009c, B:37:0x00ab, B:38:0x00b1, B:39:0x00b4, B:40:0x00da, B:41:0x00b7, B:42:0x00be, B:43:0x00c5, B:44:0x00cc, B:45:0x00d3, B:46:0x00e0, B:47:0x00e6, B:48:0x00e9, B:49:0x0108, B:50:0x00ec, B:51:0x00f3, B:52:0x00fa, B:53:0x0101, B:63:0x0012), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IcuMessageFormat(String str, Locale locale) {
        Cloneable numberFormat;
        this.a = locale;
        try {
            PatternSpecParser aoVar = this.b;
            if (aoVar == null) {
                this.b = new PatternSpecParser(str);
            } else {
                aoVar.i(str);
            }
            Map map = this.c;
            if (map != null) {
                map.clear();
            }
            int b = this.b.b() - 2;
            int i = 1;
            while (NavInstructionTypeEnum < b) {
                PluralRuleParser d2 = this.b.d(NavInstructionTypeEnum);
                if (d2.e == 6 && d2.b() == 2) {
                    int i2 = i + 2;
                    PatternSpecParser aoVar2 = this.b;
                    int i3 = i2 + 1;
                    String f2 = aoVar2.f(aoVar2.d(i2));
                    String str2 = "";
                    PluralRuleParser d3 = this.b.d(i3);
                    if (d3.e == 11) {
                        str2 = this.b.f(d3);
                        i3++;
                    }
                    switch (c(f2, d)) {
                        case 0:
                            switch (c(str2, e)) {
                                case 0:
                                    numberFormat = NumberFormat.getInstance(this.a);
                                    break;
                                case 1:
                                    numberFormat = NumberFormat.getCurrencyInstance(this.a);
                                    break;
                                case 2:
                                    numberFormat = NumberFormat.getPercentInstance(this.a);
                                    break;
                                case 3:
                                    numberFormat = NumberFormat.getIntegerInstance(this.a);
                                    break;
                                default:
                                    numberFormat = new DecimalFormat(str2, new DecimalFormatSymbols(this.a));
                                    break;
                            }
                            if (this.c == null) {
                                this.c = new HashMap();
                            }
                            this.c.put(Integer.valueOf(NavInstructionTypeEnum), numberFormat);
                            i = i3;
                            break;
                        case 1:
                            switch (c(str2, f)) {
                                case 0:
                                    numberFormat = DateFormat.getDateInstance(2, this.a);
                                    break;
                                case 1:
                                    numberFormat = DateFormat.getDateInstance(3, this.a);
                                    break;
                                case 2:
                                    numberFormat = DateFormat.getDateInstance(2, this.a);
                                    break;
                                case 3:
                                    numberFormat = DateFormat.getDateInstance(1, this.a);
                                    break;
                                case 4:
                                    numberFormat = DateFormat.getDateInstance(0, this.a);
                                    break;
                                default:
                                    numberFormat = new SimpleDateFormat(str2, this.a);
                                    break;
                            }
                            if (this.c == null) {
                            }
                            this.c.put(Integer.valueOf(NavInstructionTypeEnum), numberFormat);
                            i = i3;
                            break;
                        case 2:
                            switch (c(str2, f)) {
                                case 0:
                                    numberFormat = DateFormat.getTimeInstance(2, this.a);
                                    break;
                                case 1:
                                    numberFormat = DateFormat.getTimeInstance(3, this.a);
                                    break;
                                case 2:
                                    numberFormat = DateFormat.getTimeInstance(2, this.a);
                                    break;
                                case 3:
                                    numberFormat = DateFormat.getTimeInstance(1, this.a);
                                    break;
                                case 4:
                                    numberFormat = DateFormat.getTimeInstance(0, this.a);
                                    break;
                                default:
                                    numberFormat = new SimpleDateFormat(str2, this.a);
                                    break;
                            }
                            if (this.c == null) {
                            }
                            this.c.put(Integer.valueOf(NavInstructionTypeEnum), numberFormat);
                            i = i3;
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(String.valueOf(f2).length() + 22);
                            StaggeredGridLayoutParams.append("Unknown format type \"");
                            StaggeredGridLayoutParams.append(f2);
                            StaggeredGridLayoutParams.append("\"");
                            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                    }
                }
                i++;
            }
        } catch (RuntimeException e2) {
            PatternSpecParser aoVar3 = this.b;
            if (aoVar3 != null) {
                aoVar3.a = null;
                aoVar3.d = false;
                aoVar3.b.clear();
                ArrayList arrayList = aoVar3.c;
                if (arrayList != null) {
                    arrayList.clear();
                }
            }
            Map map2 = this.c;
            if (map2 != null) {
                map2.clear();
            }
            throw e2;
        }
    }

    public static final String a(Locale locale, String str, Object... objArr) {
        StringBuilder sb = new StringBuilder(str.length());
        new IcuMessageFormat(str, locale).f(0, null, null, null, objArr, new MessagePatternParserHelper(StaggeredGridLayoutParams), null);
        return StaggeredGridLayoutParams.toString();
    }

    private static final int c(String str, String[] strArr) {
        byte[] bArr = s.a;
        if (str.length() != 0 && (s.a(str.charAt(0)) || s.a(str.charAt(str.length() - 1)))) {
            int length = str.length();
            int i = 0;
            while (NavInstructionTypeEnum < length && s.a(str.charAt(NavInstructionTypeEnum))) {
                i++;
            }
            if (NavInstructionTypeEnum < length) {
                while (true) {
                    int i2 = length - 1;
                    if (!s.a(str.charAt(i2))) {
                        break;
                    }
                    length = i2;
                }
            }
            str = str.substring(i, length);
        }
        String lowerCase = str.toLowerCase(ProtoMessageIntAndBooleanG);
        for (int i3 = 0; i3 < strArr.length; i3++) {
            if (lowerCase.equals(strArr[i3])) {
                return i3;
            }
        }
        return -1;
    }

    private final void d(Object obj, MessagePatternParserHelper uVar, FieldPosition fieldPosition) {
        if (obj == null || (obj instanceof Map)) {
            e(null, (Map) obj, uVar, fieldPosition);
        } else {
            e((Object[]) obj, null, uVar, fieldPosition);
        }
    }

    private final void f(int i, IcuPluralSelector xVar, Object[] objArr, Map map, Object[] objArr2, MessagePatternParserHelper uVar, FieldPosition fieldPosition) {
        Object obj;
        Object obj2;
        boolean z;
        int i2;
        FieldPosition fieldPosition2;
        int i3;
        String str;
        Object obj3;
        int i4;
        MessagePatternParserHelper uVar2;
        int i5;
        MessageFormatFormatterState yVar;
        double d2;
        int i6;
        int i7;
        MessageFormatFormatterState yVar2;
        boolean z2;
        int i8;
        int i9;
        int i10;
        int i11;
        String str2;
        PluralRuleExpression ajVar;
        Map map2;
        int i12;
        MessageFormatFormatterState yVar3;
        int i13;
        Format format;
        int i14;
        int i15;
        boolean z3;
        IcuPluralSelector xVar2 = xVar;
        Object[] objArr3 = objArr;
        Map map3 = map;
        Object[] objArr4 = objArr2;
        MessagePatternParserHelper uVar3 = uVar;
        PatternSpecParser aoVar = this.b;
        String str3 = aoVar.a;
        int a = aoVar.d(NavInstructionTypeEnum).a();
        int i16 = i + 1;
        FieldPosition fieldPosition3 = fieldPosition;
        while (true) {
            PluralRuleParser d3 = this.b.d(i16);
            int i17 = d3.e;
            int i18 = d3.a;
            try {
                uVar3.a.append(str3, a, i18);
                uVar3.b += i18 - a;
                if (i17 == 2) {
                    return;
                }
                int a2 = d3.a();
                if (i17 == 5) {
                    if (xVar2.h) {
                        uVar3.c(xVar2.f, xVar2.c, xVar2.g);
                    } else {
                        uVar3.b(b(), xVar2.c);
                    }
                } else if (i17 == 6) {
                    int c = this.b.c(i16);
                    int b = d3.b();
                    int i19 = i16 + 1;
                    PluralRuleParser d4 = this.b.d(i19);
                    String f2 = this.b.f(d4);
                    if (objArr3 != null) {
                        short s = d4.c;
                        Object valueOf = uVar3.c != null ? Integer.valueOf(IcuMessageArgTypeHolder) : null;
                        if (IcuMessageArgTypeHolder < 0 || s >= objArr3.length) {
                            obj2 = null;
                            z3 = true;
                        } else {
                            obj2 = objArr3[s];
                            z3 = false;
                        }
                        boolean z4 = z3;
                        obj = valueOf;
                        z = z4;
                    } else if (objArr4 != null) {
                        int i20 = 0;
                        while (true) {
                            if (i20 >= objArr4.length) {
                                obj2 = null;
                                z = true;
                                break;
                            } else {
                                if (f2.equals(objArr4[i20].toString())) {
                                    obj2 = objArr4[i20 + 1];
                                    z = false;
                                    break;
                                }
                                i20 += 2;
                            }
                        }
                        obj = f2;
                    } else if (map3 == null) {
                        obj = f2;
                        obj2 = null;
                        z = true;
                    } else if (map3.containsKey(f2)) {
                        obj2 = map3.get(f2);
                        obj = f2;
                        z = false;
                    } else {
                        obj = f2;
                        obj2 = null;
                        z = true;
                    }
                    int i21 = i19 + 1;
                    int i22 = uVar3.b;
                    if (IcuMessageFormat) {
                        StringBuilder sb = new StringBuilder(String.valueOf(f2).length() + 2);
                        StaggeredGridLayoutParams.append("{");
                        StaggeredGridLayoutParams.append(f2);
                        StaggeredGridLayoutParams.append("}");
                        uVar3.a(StaggeredGridLayoutParams.toString());
                        fieldPosition2 = fieldPosition3;
                        i4 = i22;
                        i3 = c;
                        uVar2 = uVar3;
                        str = str3;
                        obj3 = obj;
                    } else if (obj2 == null) {
                        uVar3.a("null");
                        fieldPosition2 = fieldPosition3;
                        i4 = i22;
                        i3 = c;
                        uVar2 = uVar3;
                        str = str3;
                        obj3 = obj;
                    } else {
                        if (xVar2 != null) {
                            i2 = i22;
                            if (xVar2.e == i21 - 2) {
                                if (xVar2.d == 0.0d) {
                                    uVar3.c(xVar2.f, xVar2.c, xVar2.g);
                                    fieldPosition2 = fieldPosition3;
                                    i3 = c;
                                    uVar2 = uVar3;
                                    str = str3;
                                    obj3 = obj;
                                    i4 = i2;
                                } else {
                                    uVar3.b(xVar2.f, obj2);
                                    fieldPosition2 = fieldPosition3;
                                    i3 = c;
                                    uVar2 = uVar3;
                                    str = str3;
                                    obj3 = obj;
                                    i4 = i2;
                                }
                            }
                        } else {
                            i2 = i22;
                        }
                        Map map4 = this.c;
                        if (map4 == null || (format = (Format) map4.get(Integer.valueOf(i21 - 2))) == null) {
                            if (ProtoLiteMessageBase != 1) {
                                Map map5 = this.c;
                                if (map5 != null && map5.containsKey(Integer.valueOf(i21 - 2))) {
                                    fieldPosition2 = fieldPosition3;
                                    i3 = c;
                                    str = str3;
                                    obj3 = obj;
                                    i4 = i2;
                                } else if (ProtoLiteMessageBase != 3) {
                                    int i23 = i2;
                                    int i24 = c;
                                    if (!r.b(ProtoLiteMessageBase)) {
                                        fieldPosition2 = fieldPosition3;
                                        i4 = i23;
                                        i3 = i24;
                                        str = str3;
                                        obj3 = obj;
                                        if (ProtoLiteMessageBase != 5) {
                                            throw new IllegalStateException("unexpected argType ".concat(r.a(ProtoLiteMessageBase)));
                                        }
                                        PatternSpecParser aoVar2 = this.b;
                                        String obj4 = obj2.toString();
                                        int b2 = aoVar2.b();
                                        int i25 = 0;
                                        while (true) {
                                            int i26 = i21 + 1;
                                            PluralRuleParser d5 = aoVar2.d(i21);
                                            if (d5.e == 7) {
                                                i5 = i25;
                                                break;
                                            }
                                            if (aoVar2.g(d5, obj4)) {
                                                i5 = i26;
                                                break;
                                            }
                                            if (i25 == 0) {
                                                i25 = aoVar2.g(d5, "other") ? i26 : 0;
                                            }
                                            i21 = aoVar2.c(i26) + 1;
                                            if (i21 >= b2) {
                                                i5 = i25;
                                                break;
                                            }
                                        }
                                        g(i5, null, objArr, map, objArr2, uVar);
                                        uVar2 = uVar;
                                    } else {
                                        if (!(obj2 instanceof Number)) {
                                            String obj5 = obj2.toString();
                                            StringBuilder sb2 = new StringBuilder(obj5.length() + 18);
                                            sb2.append("'");
                                            sb2.append(obj5);
                                            sb2.append("' is not a Number");
                                            throw new IllegalArgumentException(sb2.toString());
                                        }
                                        if (ProtoLiteMessageBase == 4) {
                                            if (this.j == null) {
                                                this.j = new MessageFormatFormatterState(this, 1);
                                            }
                                            yVar = this.j;
                                        } else {
                                            if (this.k == null) {
                                                this.k = new MessageFormatFormatterState(this, 2);
                                            }
                                            yVar = this.k;
                                        }
                                        Number number = (Number) obj2;
                                        PatternSpecParser aoVar3 = this.b;
                                        PluralRuleParser anVar = (PluralRuleParser) aoVar3.b.get(i21);
                                        IcuPluralSelector xVar3 = new IcuPluralSelector(i21, f2, number, r.h(anVar.e) ? aoVar3.a(anVar) : 0.0d);
                                        PatternSpecParser aoVar4 = this.b;
                                        double doubleValue = number.doubleValue();
                                        int b3 = aoVar4.b();
                                        PluralRuleParser d6 = aoVar4.d(i21);
                                        if (r.h(d6.e)) {
                                            d2 = aoVar4.a(d6);
                                            i21++;
                                        } else {
                                            d2 = 0.0d;
                                        }
                                        String str4 = null;
                                        boolean z5 = false;
                                        int i27 = 0;
                                        while (true) {
                                            str = str3;
                                            int i28 = i21 + 1;
                                            PluralRuleParser d7 = aoVar4.d(i21);
                                            i3 = i24;
                                            fieldPosition2 = fieldPosition3;
                                            if (d7.e == 7) {
                                                i6 = i27;
                                                i4 = i23;
                                                obj3 = obj;
                                                break;
                                            }
                                            if (r.h(aoVar4.h(i28))) {
                                                int i29 = i28 + 1;
                                                if (doubleValue == aoVar4.a(aoVar4.d(i28))) {
                                                    i6 = i29;
                                                    i4 = i23;
                                                    obj3 = obj;
                                                    break;
                                                } else {
                                                    i28 = i29;
                                                    i7 = b3;
                                                    yVar2 = yVar;
                                                    i4 = i23;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                if (z5) {
                                                    i7 = b3;
                                                    yVar2 = yVar;
                                                    z2 = z5;
                                                    i4 = i23;
                                                    i8 = i28;
                                                    obj3 = obj;
                                                } else if (!aoVar4.g(d7, "other")) {
                                                    if (str4 == null) {
                                                        Object obj6 = obj;
                                                        double d8 = doubleValue - d2;
                                                        if (yVar.b == null) {
                                                            z2 = z5;
                                                            yVar.b = PluralRulesLocaleData.d(yVar.a.a, yVar.c);
                                                        } else {
                                                            z2 = z5;
                                                        }
                                                        IcuMessageFormat zVar = yVar.a;
                                                        int i30 = xVar3.a;
                                                        i8 = i28;
                                                        int b4 = zVar.b.b();
                                                        obj3 = obj6;
                                                        if (r.h(zVar.b.d(i30).e)) {
                                                            i30++;
                                                        }
                                                        while (true) {
                                                            i9 = i30 + 1;
                                                            i4 = i23;
                                                            PluralRuleParser d9 = zVar.b.d(i30);
                                                            if (d9.e == 7) {
                                                                i9 = 0;
                                                                i10 = 1;
                                                                break;
                                                            }
                                                            if (zVar.b.g(d9, "other")) {
                                                                i10 = 1;
                                                                break;
                                                            }
                                                            if (r.h(zVar.b.h(i9))) {
                                                                i9++;
                                                            }
                                                            i10 = 1;
                                                            i30 = zVar.b.c(i9) + 1;
                                                            if (i30 >= b4) {
                                                                i9 = 0;
                                                                break;
                                                            } else {
                                                                i23 = i4;
                                                                yVar = yVar;
                                                            }
                                                        }
                                                        IcuMessageFormat zVar2 = yVar.a;
                                                        String str5 = xVar3.b;
                                                        int i31 = i9 + i10;
                                                        while (true) {
                                                            PluralRuleParser d10 = zVar2.b.d(i31);
                                                            int i32 = d10.e;
                                                            if (i32 == 2) {
                                                                i31 = 0;
                                                                break;
                                                            }
                                                            if (i32 == 5) {
                                                                i31 = -1;
                                                                break;
                                                            }
                                                            if (i32 == 6) {
                                                                int b5 = d10.b();
                                                                if (str5.length() != 0) {
                                                                    if (b5 != 1 && b5 != 2) {
                                                                        i12 = b3;
                                                                        yVar3 = yVar;
                                                                    }
                                                                    if (zVar2.b.g(zVar2.b.d(i31 + 1), str5)) {
                                                                        break;
                                                                    }
                                                                    i12 = b3;
                                                                    yVar3 = yVar;
                                                                } else {
                                                                    i12 = b3;
                                                                    yVar3 = yVar;
                                                                }
                                                                i31 = zVar2.b.c(i31);
                                                            } else {
                                                                i12 = b3;
                                                                yVar3 = yVar;
                                                            }
                                                            i31++;
                                                            b3 = i12;
                                                            yVar = yVar3;
                                                        }
                                                        xVar3.e = i31;
                                                        if (i31 > 0 && (map2 = yVar.a.c) != null) {
                                                            xVar3.f = (Format) map2.get(Integer.valueOf(i31));
                                                        }
                                                        if (xVar3.f == null) {
                                                            xVar3.f = yVar.a.b();
                                                            xVar3.h = true;
                                                        }
                                                        xVar3.g = xVar3.f.format(xVar3.c);
                                                        PluralKeywordValues akVar = yVar.b.h;
                                                        if (Double.isInfinite(d8)) {
                                                            i7 = b3;
                                                            yVar2 = yVar;
                                                            i11 = 0;
                                                        } else if (Double.isNaN(d8)) {
                                                            i7 = b3;
                                                            yVar2 = yVar;
                                                            i11 = 0;
                                                        } else {
                                                            double d11 = d8 < 0.0d ? -d8 : d8;
                                                            if (d11 < 1.0E9d) {
                                                                long j = ((long) (d11 * 1000000.0d)) % 1000000;
                                                                int i33 = 10;
                                                                int i34 = 6;
                                                                while (true) {
                                                                    if (i34 <= 0) {
                                                                        i7 = b3;
                                                                        yVar2 = yVar;
                                                                        i11 = 0;
                                                                        break;
                                                                    }
                                                                    i7 = b3;
                                                                    yVar2 = yVar;
                                                                    if (ProtoMessageTwoIntsAndFlagValue % i33 != 0) {
                                                                        i11 = i34;
                                                                        break;
                                                                    }
                                                                    i33 *= 10;
                                                                    i34--;
                                                                    b3 = i7;
                                                                    yVar = yVar2;
                                                                }
                                                            } else {
                                                                i7 = b3;
                                                                yVar2 = yVar;
                                                                String format2 = String.format(Locale.ENGLISH, "%1.15e", Double.valueOf(d11));
                                                                int lastIndexOf = format2.lastIndexOf(101);
                                                                int i35 = lastIndexOf + 1;
                                                                if (format2.charAt(i35) == '+') {
                                                                    i35++;
                                                                }
                                                                int parseInt = (lastIndexOf - 2) - Integer.parseInt(format2.substring(i35));
                                                                if (parseInt < 0) {
                                                                    i11 = 0;
                                                                } else {
                                                                    int i36 = parseInt;
                                                                    for (int i37 = lastIndexOf - 1; i36 > 0 && format2.charAt(i37) == '0'; i37--) {
                                                                        i36--;
                                                                    }
                                                                    i11 = i36;
                                                                }
                                                            }
                                                        }
                                                        DecimalQuantityValue aeVar = new DecimalQuantityValue(d8, i11);
                                                        if (Double.isInfinite(aeVar.a) || Double.isNaN(aeVar.a)) {
                                                            str2 = "other";
                                                        } else {
                                                            Iterator it = akVar.b.iterator();
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    ajVar = (PluralRuleExpression) it.next();
                                                                    if (ajVar.b.a(aeVar)) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    ajVar = null;
                                                                    break;
                                                                }
                                                            }
                                                            str2 = ajVar.a;
                                                        }
                                                        if (i27 == 0 || !str2.equals("other")) {
                                                            str4 = str2;
                                                        } else {
                                                            str4 = str2;
                                                            z2 = true;
                                                        }
                                                    } else {
                                                        i7 = b3;
                                                        yVar2 = yVar;
                                                        z2 = z5;
                                                        i4 = i23;
                                                        i8 = i28;
                                                        obj3 = obj;
                                                    }
                                                    if (!z2 && aoVar4.g(d7, str4)) {
                                                        i27 = i8;
                                                        i28 = i27;
                                                        z5 = true;
                                                    }
                                                } else if (i27 != 0) {
                                                    i7 = b3;
                                                    yVar2 = yVar;
                                                    z2 = z5;
                                                    i4 = i23;
                                                    i8 = i28;
                                                    obj3 = obj;
                                                } else if (str4 == null || !str4.equals("other")) {
                                                    i7 = b3;
                                                    yVar2 = yVar;
                                                    i4 = i23;
                                                    i27 = i28;
                                                    obj3 = obj;
                                                } else {
                                                    i7 = b3;
                                                    yVar2 = yVar;
                                                    i4 = i23;
                                                    i27 = i28;
                                                    obj3 = obj;
                                                    z5 = true;
                                                }
                                                z5 = z2;
                                                i28 = i8;
                                            }
                                            int c2 = aoVar4.c(i28) + 1;
                                            int i38 = i7;
                                            if (c2 >= i38) {
                                                i6 = i27;
                                                break;
                                            }
                                            b3 = i38;
                                            str3 = str;
                                            i24 = i3;
                                            obj = obj3;
                                            i23 = i4;
                                            yVar = yVar2;
                                            i21 = c2;
                                            fieldPosition3 = fieldPosition2;
                                        }
                                        g(i6, xVar3, objArr, map, objArr2, uVar);
                                        uVar2 = uVar;
                                    }
                                } else {
                                    if (!(obj2 instanceof Number)) {
                                        String obj7 = obj2.toString();
                                        StringBuilder sb3 = new StringBuilder(obj7.length() + 18);
                                        sb3.append("'");
                                        sb3.append(obj7);
                                        sb3.append("' is not a Number");
                                        throw new IllegalArgumentException(sb3.toString());
                                    }
                                    double doubleValue2 = ((Number) obj2).doubleValue();
                                    PatternSpecParser aoVar5 = this.b;
                                    int b6 = aoVar5.b();
                                    int i39 = i21 + 2;
                                    while (true) {
                                        i13 = i39;
                                        int c3 = aoVar5.c(i13) + 1;
                                        if (c3 >= b6) {
                                            break;
                                        }
                                        int i40 = c3 + 1;
                                        PluralRuleParser d12 = aoVar5.d(c3);
                                        int i41 = b6;
                                        if (d12.e == 7) {
                                            break;
                                        }
                                        double a3 = aoVar5.a(d12);
                                        i39 = i40 + 1;
                                        if (aoVar5.a.charAt(((PluralRuleParser) aoVar5.b.get(i40)).a) != '<') {
                                            if (doubleValue2 < a3) {
                                                break;
                                            } else {
                                                b6 = i41;
                                            }
                                        } else if (doubleValue2 <= a3) {
                                            break;
                                        } else {
                                            b6 = i41;
                                        }
                                    }
                                    g(i13, null, objArr, map, objArr2, uVar);
                                    fieldPosition2 = fieldPosition3;
                                    i4 = i2;
                                    i3 = c;
                                    uVar2 = uVar3;
                                    str = str3;
                                    obj3 = obj;
                                }
                            } else {
                                fieldPosition2 = fieldPosition3;
                                i3 = c;
                                str = str3;
                                obj3 = obj;
                                i4 = i2;
                            }
                            if (obj2 instanceof Number) {
                                uVar2 = uVar;
                                uVar2.b(b(), obj2);
                            } else {
                                uVar2 = uVar;
                                if (obj2 instanceof Date) {
                                    if (this.h == null) {
                                        this.h = DateFormat.getDateTimeInstance(3, 3, this.a);
                                    }
                                    uVar2.b(this.h, obj2);
                                } else {
                                    uVar2.a(obj2.toString());
                                }
                            }
                        } else {
                            uVar3.b(format, obj2);
                            fieldPosition2 = fieldPosition3;
                            i3 = c;
                            uVar2 = uVar3;
                            str = str3;
                            obj3 = obj;
                            i4 = i2;
                        }
                    }
                    List list = uVar2.c;
                    if (list != null) {
                        int i42 = uVar2.b;
                        i14 = i4;
                        if (i14 < i42) {
                            list.add(new MessageFormatAttributeHolder(obj3, i14, i42));
                        }
                    } else {
                        i14 = i4;
                    }
                    if (fieldPosition2 == null) {
                        fieldPosition3 = fieldPosition2;
                    } else if (w.a.equals(fieldPosition2.getFieldAttribute())) {
                        FieldPosition fieldPosition4 = fieldPosition2;
                        fieldPosition4.setBeginIndex(i14);
                        fieldPosition4.setEndIndex(uVar2.b);
                        fieldPosition3 = null;
                    } else {
                        fieldPosition3 = fieldPosition2;
                    }
                    i15 = i3;
                    a = this.b.d(i15).a();
                    xVar2 = xVar;
                    objArr3 = objArr;
                    map3 = map;
                    objArr4 = objArr2;
                    uVar3 = uVar2;
                    i16 = i15 + 1;
                    str3 = str;
                }
                i15 = i16;
                a = a2;
                uVar2 = uVar3;
                str = str3;
                xVar2 = xVar;
                objArr3 = objArr;
                map3 = map;
                objArr4 = objArr2;
                uVar3 = uVar2;
                i16 = i15 + 1;
                str3 = str;
            } catch (IOException e2) {
                throw new CarUiLayoutException(e2);
            }
        }
    }

    private final void h(String str, ParsePosition parsePosition, Object[] objArr, Map map) {
        String str2;
        String f2;
        Object obj;
        short s;
        String str3;
        Object obj2;
        PatternSpecParser aoVar;
        int i;
        int i2;
        Format format;
        if (str == null) {
            return;
        }
        PatternSpecParser aoVar2 = this.b;
        String str4 = aoVar2.a;
        int a = aoVar2.d(0).a();
        int index = parsePosition.getIndex();
        ParsePosition parsePosition2 = new ParsePosition(0);
        boolean z = true;
        int i3 = 1;
        while (true) {
            PluralRuleParser d2 = this.b.d(i3);
            int i4 = d2.e;
            int i5 = d2.a - a;
            if (i5 != 0 && !str4.regionMatches(a, str, index, i5)) {
                parsePosition.setErrorIndex(index);
                return;
            }
            index += i5;
            if (i4 == 2) {
                parsePosition.setIndex(index);
                return;
            }
            if (i4 == 3) {
                str2 = str4;
            } else if (i4 == 4) {
                str2 = str4;
            } else {
                int c = this.b.c(i3);
                int b = d2.b();
                int i6 = i3 + 1;
                PluralRuleParser d3 = this.b.d(i6);
                if (objArr != null) {
                    s = d3.c;
                    obj = Integer.valueOf(IcuMessageArgTypeHolder);
                    f2 = null;
                } else {
                    f2 = d3.e == 9 ? this.b.f(d3) : Integer.toString(d3.c);
                    obj = f2;
                    s = 0;
                }
                int i7 = i6 + 1;
                Map map2 = this.c;
                if (map2 == null || (format = (Format) map2.get(Integer.valueOf(i7 - 2))) == null) {
                    if (ProtoLiteMessageBase != z) {
                        Map map3 = this.c;
                        if (map3 != null && map3.containsKey(Integer.valueOf(i7 - 2))) {
                            str2 = str4;
                            str3 = f2;
                        } else {
                            if (ProtoLiteMessageBase != 3) {
                                if (!r.b(ProtoLiteMessageBase) && b != 5) {
                                    throw new IllegalStateException("unexpected argType ".concat(r.a(ProtoLiteMessageBase)));
                                }
                                throw new UnsupportedOperationException("Parsing of plural/select/selectordinal argument is not supported.");
                            }
                            parsePosition2.setIndex(index);
                            PatternSpecParser aoVar3 = this.b;
                            int index2 = parsePosition2.getIndex();
                            double d4 = Double.NaN;
                            int i8 = index2;
                            while (true) {
                                if (aoVar3.h(i7) == 7) {
                                    str2 = str4;
                                    str3 = f2;
                                    break;
                                }
                                double a2 = aoVar3.a(aoVar3.d(i7));
                                int i9 = i7 + 2;
                                int c2 = aoVar3.c(i9);
                                String str5 = aoVar3.a;
                                int i10 = 0;
                                str2 = str4;
                                int a3 = aoVar3.d(i9).a();
                                while (true) {
                                    i9++;
                                    str3 = f2;
                                    PluralRuleParser d5 = aoVar3.d(i9);
                                    if (i9 != c2) {
                                        aoVar = aoVar3;
                                        if (d5.e != 3) {
                                            continue;
                                            f2 = str3;
                                            aoVar3 = aoVar;
                                        }
                                    } else {
                                        aoVar = aoVar3;
                                    }
                                    int i11 = d5.a - a3;
                                    if (i11 != 0 && !str.regionMatches(index2, str5, a3, i11)) {
                                        i = -1;
                                        break;
                                    }
                                    i10 += i11;
                                    if (i9 == c2) {
                                        i = i10;
                                        break;
                                    } else {
                                        a3 = d5.a();
                                        f2 = str3;
                                        aoVar3 = aoVar;
                                    }
                                }
                                if (NavInstructionTypeEnum >= 0 && (i2 = i + index2) > i8) {
                                    if (i2 == str.length()) {
                                        i8 = i2;
                                        d4 = a2;
                                        break;
                                    } else {
                                        i8 = i2;
                                        d4 = a2;
                                    }
                                }
                                i7 = c2 + 1;
                                str4 = str2;
                                f2 = str3;
                                aoVar3 = aoVar;
                            }
                            if (i8 == index2) {
                                parsePosition2.setErrorIndex(index2);
                            } else {
                                parsePosition2.setIndex(i8);
                            }
                            if (parsePosition2.getIndex() == index) {
                                parsePosition.setErrorIndex(index);
                                return;
                            } else {
                                obj2 = Double.valueOf(d4);
                                index = parsePosition2.getIndex();
                                z = true;
                            }
                        }
                    } else {
                        str2 = str4;
                        str3 = f2;
                    }
                    StringBuilder sb = new StringBuilder();
                    PatternSpecParser aoVar4 = this.b;
                    String str6 = aoVar4.a;
                    int a4 = aoVar4.d(PhenotypeFlagMessage).a();
                    int i12 = c + 1;
                    while (true) {
                        PluralRuleParser d6 = this.b.d(i12);
                        int i13 = d6.e;
                        StaggeredGridLayoutParams.append((CharSequence) str6, a4, d6.a);
                        if (i13 == 6 || i13 == 2) {
                            break;
                        }
                        a4 = d6.a();
                        i12++;
                    }
                    String sb2 = StaggeredGridLayoutParams.toString();
                    int indexOf = sb2.length() != 0 ? str.indexOf(sb2, index) : str.length();
                    if (indexOf < 0) {
                        parsePosition.setErrorIndex(index);
                        return;
                    }
                    String substring = str.substring(index, indexOf);
                    String obj3 = obj.toString();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(obj3).length() + 2);
                    sb3.append("{");
                    sb3.append(obj3);
                    sb3.append("}");
                    boolean equals = substring.equals(sb3.toString());
                    index = indexOf;
                    z = !equals;
                    obj2 = true == equals ? null : substring;
                } else {
                    parsePosition2.setIndex(index);
                    obj2 = format.parseObject(str, parsePosition2);
                    if (parsePosition2.getIndex() == index) {
                        parsePosition.setErrorIndex(index);
                        return;
                    } else {
                        index = parsePosition2.getIndex();
                        str2 = str4;
                        str3 = f2;
                    }
                }
                if (IcuMessageFormat) {
                    if (objArr != null) {
                        objArr[s] = obj2;
                    } else if (map != null) {
                        map.put(str3, obj2);
                    }
                }
                a = this.b.d(PhenotypeFlagMessage).a();
                i3 = c;
                i3++;
                str4 = str2;
                z = true;
            }
            a = d2.a();
            i3++;
            str4 = str2;
            z = true;
        }
    }

    public final NumberFormat b() {
        if (this.i == null) {
            this.i = NumberFormat.getInstance(this.a);
        }
        return this.i;
    }

    @Override // java.text.Format
    public final StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        d(obj, new MessagePatternParserHelper(stringBuffer), fieldPosition);
        return stringBuffer;
    }

    @Override // java.text.Format
    public final AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        if (obj == null) {
            throw new NullPointerException("formatToCharacterIterator must be passed non-null object");
        }
        StringBuilder sb = new StringBuilder();
        MessagePatternParserHelper uVar = new MessagePatternParserHelper(StaggeredGridLayoutParams);
        uVar.c = new ArrayList();
        d(obj, uVar, null);
        AttributedString attributedString = new AttributedString(StaggeredGridLayoutParams.toString());
        for (MessageFormatAttributeHolder vVar : uVar.c) {
            attributedString.addAttribute(vVar.a, vVar.b, vVar.c, vVar.d);
        }
        return attributedString.getIterator();
    }

    public final int hashCode() {
        return this.b.a.hashCode();
    }

    private final void e(Object[] objArr, Map map, MessagePatternParserHelper uVar, FieldPosition fieldPosition) {
        if (objArr != null && this.b.d) {
            throw new IllegalArgumentException("This method is not available in MessageFormat objects that use alphanumeric argument names.");
        }
        f(0, null, objArr, map, null, uVar, fieldPosition);
    }

    private final void g(int i, IcuPluralSelector xVar, Object[] objArr, Map map, Object[] objArr2, MessagePatternParserHelper uVar) {
        if (this.b.f == 2) {
            throw new UnsupportedOperationException("JDK apostrophe mode not supported");
        }
        f(i, xVar, objArr, map, objArr2, uVar, null);
    }

    @Override // java.text.Format
    public final Object parseObject(String str, ParsePosition parsePosition) {
        if (this.b.d) {
            HashMap hashMap = new HashMap();
            int index = parsePosition.getIndex();
            h(str, parsePosition, null, hashMap);
            if (parsePosition.getIndex() == index) {
                return null;
            }
            return hashMap;
        }
        int i = 0;
        short s = -1;
        while (true) {
            if (NavInstructionTypeEnum != 0) {
                i = this.b.c(NavInstructionTypeEnum);
            }
            while (true) {
                i++;
                int h = this.b.h(NavInstructionTypeEnum);
                if (ProtoMessageSingleEnumFieldH == 6) {
                    break;
                }
                if (ProtoMessageSingleEnumFieldH == 2) {
                    i = -1;
                    break;
                }
            }
            if (NavInstructionTypeEnum < 0) {
                break;
            }
            short s2 = this.b.d(NavInstructionTypeEnum + 1).c;
            if (s2 > s) {
                s = s2;
            }
        }
        Object[] objArr = new Object[s + 1];
        int index2 = parsePosition.getIndex();
        h(str, parsePosition, objArr, null);
        if (parsePosition.getIndex() == index2) {
            return null;
        }
        return objArr;
    }
}
