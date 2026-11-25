package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum FormatChar {
    STRING('s', FormatTypeCategory.GENERAL, "-#", true),
    BOOLEAN('b', FormatTypeCategory.BOOLEAN, "-", true),
    CHAR('c', FormatTypeCategory.CHARACTER, "-", true),
    DECIMAL('d', FormatTypeCategory.INTEGRAL, "-0+ ,(", false),
    OCTAL('o', FormatTypeCategory.INTEGRAL, "-#0(", false),
    HEX('x', FormatTypeCategory.INTEGRAL, "-#0(", true),
    FLOAT('f', FormatTypeCategory.FLOAT, "-#0+ ,(", false),
    EXPONENT('e', FormatTypeCategory.FLOAT, "-#0+ (", true),
    GENERAL('g', FormatTypeCategory.FLOAT, "-0+ ,(", true),
    EXPONENT_HEX('a', FormatTypeCategory.FLOAT, "-#0+ ", true);

    public static final FormatChar[] k = new FormatChar[26];
    public final char l;
    public final FormatTypeCategory m;
    public final int n;
    public final String o;

    static {
        for (FormatChar ctxVar : values()) {
            k[a(ctxVar.l)] = ctxVar;
        }
    }

    ctx(char c, FormatTypeCategory ctzVar, String str, boolean z) {
        this.l = c;
        this.m = ctzVar;
        this.n = FormatSpecificationParser.a(str, z);
        StringBuilder sb = new StringBuilder(2);
        StaggeredGridLayoutParams.append("%");
        StaggeredGridLayoutParams.append(PhenotypeFlagMessage);
        this.o = StaggeredGridLayoutParams.toString();
    }

    public static int a(char c) {
        return (PhenotypeFlagMessage | ' ') - 97;
    }
}
