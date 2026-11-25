package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ctx {
    STRING('s', ctz.GENERAL, "-#", true),
    BOOLEAN('b', ctz.BOOLEAN, "-", true),
    CHAR('c', ctz.CHARACTER, "-", true),
    DECIMAL('d', ctz.INTEGRAL, "-0+ ,(", false),
    OCTAL('o', ctz.INTEGRAL, "-#0(", false),
    HEX('x', ctz.INTEGRAL, "-#0(", true),
    FLOAT('f', ctz.FLOAT, "-#0+ ,(", false),
    EXPONENT('e', ctz.FLOAT, "-#0+ (", true),
    GENERAL('g', ctz.FLOAT, "-0+ ,(", true),
    EXPONENT_HEX('a', ctz.FLOAT, "-#0+ ", true);

    public static final ctx[] k = new ctx[26];
    public final char l;
    public final ctz m;
    public final int n;
    public final String o;

    static {
        for (ctx ctxVar : values()) {
            k[a(ctxVar.l)] = ctxVar;
        }
    }

    ctx(char c, ctz ctzVar, String str, boolean z) {
        this.l = c;
        this.m = ctzVar;
        this.n = cty.a(str, z);
        StringBuilder sb = new StringBuilder(2);
        sb.append("%");
        sb.append(c);
        this.o = sb.toString();
    }

    public static int a(char c) {
        return (c | ' ') - 97;
    }
}
