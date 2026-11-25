package defpackage;

import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FormattingLoggerBackend extends AbstractLoggerBackend {
    private static final Set a;
    private static final KeyValueHandlerBase b;
    private final String c;
    private final Level d;

    static {
        Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(ctd.a, ctw.a)));
        a = unmodifiableSet;
        b = RepeatingKeyValidator.a(unmodifiableSet);
    }

    public FormattingLoggerBackend(String str, Level level) {
        super(str);
        this.c = LogConfigProvider.e("", str);
        this.d = level;
    }

    @Override // defpackage.LoggerBackend
    public final void c(FloggerLogRecord cubVar) {
        e(cubVar, this.c, false, this.d);
    }

    @Override // defpackage.LoggerBackend
    public final boolean d(Level level) {
        int d = LogConfigProvider.d(level);
        return Log.isLoggable(this.c, d) || Log.isLoggable("all", d);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02bf A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(FloggerLogRecord cubVar, String str, boolean z, Level level) {
        LogFormatSpecifier cwcVar;
        String sb;
        SingleEntryMetadata cufVar = cuf.a;
        LogMetadata i = cubVar.i();
        int b2 = i.b();
        LogContextBase cuvVar = b2 == 0 ? cux.c : b2 <= 28 ? new BoundedLogContext(cufVar, i) : new MutableLogContext(cufVar, i);
        int intValue = cubVar.l().intValue();
        int intValue2 = level.intValue();
        if (!z && intValue >= intValue2) {
            if (!LogSiteMetadataWriter.b(cubVar, cuvVar, a)) {
                sb = LogSiteMetadataWriter.a(cubVar);
                Throwable th = (Throwable) cubVar.i().d(ctd.a);
                switch (LogConfigProvider.d(cubVar.l())) {
                    case 2:
                    case 3:
                    case 4:
                        return;
                    case 5:
                        Log.w(str, sb, th);
                        return;
                    default:
                        Log.e(str, sb, th);
                        return;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        if (IcuMessageFormat && FloggerFormatUtils.d(cubVar.f(), sb2)) {
            sb2.append(" ");
        }
        if (intValue >= intValue2 || cubVar.j() == null) {
            if (cubVar.j() != null) {
                MessageFormatApplier cwiVar = new MessageFormatApplier(cubVar.j(), cubVar.w(), sb2);
                String c = cwiVar.c();
                int b3 = PlatformStringUtils.b(c, 0);
                int i2 = 0;
                int i3 = -1;
                while (b3 >= 0) {
                    int i4 = b3 + 1;
                    int i5 = i4;
                    int i6 = 0;
                    while (i5 < c.length()) {
                        int i7 = i5 + 1;
                        char charAt = c.charAt(i5);
                        char c2 = (char) (charAt - '0');
                        if (c2 >= '\n') {
                            if (charAt == '$') {
                                if ((i7 - 1) - i4 == 0) {
                                    throw UncheckedFormatException.b("missing index", c, b3, i7);
                                }
                                if (c.charAt(i4) == '0') {
                                    throw UncheckedFormatException.b("index has leading zero", c, b3, i7);
                                }
                                int i8 = i6 - 1;
                                if (i7 == c.length()) {
                                    throw UncheckedFormatException.c("unterminated parameter", c, b3);
                                }
                                c.charAt(i7);
                                i3 = i8;
                                i4 = i7;
                                i7++;
                            } else if (charAt != '<') {
                                i3 = i2;
                                i2++;
                            } else {
                                if (i3 == -1) {
                                    throw UncheckedFormatException.b("invalid relative parameter", c, b3, i7);
                                }
                                if (i7 == c.length()) {
                                    throw UncheckedFormatException.c("unterminated parameter", c, b3);
                                }
                                c.charAt(i7);
                                i4 = i7;
                                i7++;
                            }
                            for (int i9 = i7 - 1; i9 < c.length(); i9++) {
                                if (((char) ((c.charAt(i9) & 65503) - 65)) < 26) {
                                    int i10 = i9 + 1;
                                    char charAt2 = c.charAt(i9);
                                    int i11 = charAt2 & ' ';
                                    FormatSpecificationParser b4 = FormatSpecificationParser.b(c, i4, i9, i11 == 0);
                                    FormatChar ctxVar = ctx.k[ctx.a(charAt2)];
                                    if (i11 == 0 && (ctxVar == null || (ctxVar.n & 128) == 0)) {
                                        ctxVar = null;
                                    }
                                    if (ctxVar != null) {
                                        if (!b4.e(ctxVar.n, ctxVar.m.f)) {
                                            throw UncheckedFormatException.b("invalid format specifier", c, b3, i10);
                                        }
                                        cwcVar = CharFormatSpecifier.b(i3, ctxVar, b4);
                                    } else if (charAt2 == 't' || charAt2 == 'T') {
                                        if (!b4.e(160, false)) {
                                            throw UncheckedFormatException.b("invalid format specification", c, b3, i10);
                                        }
                                        int i12 = i10 + 1;
                                        if (i12 > c.length()) {
                                            throw UncheckedFormatException.a("truncated format specifier", c, b3);
                                        }
                                        DateTimeFormatChar cwbVar = (DateTimeFormatChar) DateTimeFormatChar.F.get(Character.valueOf(c.charAt(i10)));
                                        if (cwbVar == null) {
                                            throw UncheckedFormatException.a("illegal date/time conversion", c, i10);
                                        }
                                        cwcVar = new StringFormatSpecifier(b4, i3, cwbVar);
                                        i10 = i12;
                                    } else {
                                        if (charAt2 != 'h' && charAt2 != 'H') {
                                            throw UncheckedFormatException.b("invalid format specification", c, b3, i10);
                                        }
                                        if (!b4.e(160, false)) {
                                            throw UncheckedFormatException.b("invalid format specification", c, b3, i10);
                                        }
                                        cwcVar = new NumericFormatSpecifier(b4, i3);
                                    }
                                    int i13 = cwcVar.a;
                                    if (i13 < 32) {
                                        cwiVar.a |= 1 << i13;
                                    }
                                    cwiVar.b = Math.max(cwiVar.b, i13);
                                    cwiVar.b().a(cwiVar.d, cwiVar.c(), cwiVar.e, b3);
                                    Object[] objArr = cwiVar.c;
                                    int i14 = cwcVar.a;
                                    if (i14 < objArr.length) {
                                        Object obj = objArr[i14];
                                        if (obj != null) {
                                            cwcVar.a(cwiVar, obj);
                                        } else {
                                            cwiVar.d.append("null");
                                        }
                                    } else {
                                        cwiVar.d.append("[ERROR: MISSING LOG ARGUMENT]");
                                    }
                                    cwiVar.e = i10;
                                    b3 = PlatformStringUtils.b(c, i10);
                                }
                            }
                            throw UncheckedFormatException.c("unterminated parameter", c, b3);
                        }
                        i6 = (i6 * 10) + c2;
                        if (i6 >= 1000000) {
                            throw UncheckedFormatException.b("index too large", c, b3, i7);
                        }
                        i5 = i7;
                    }
                    throw UncheckedFormatException.c("unterminated parameter", c, b3);
                }
                int i15 = cwiVar.a;
                if (((i15 + 1) & i15) != 0 || (cwiVar.b > 31 && i15 != -1)) {
                    throw new UncheckedFormatException(String.format("unreferenced arguments [first missing index=%d]", Integer.valueOf(Integer.numberOfTrailingZeros((-1) ^ i15))));
                }
                cwiVar.b().a(cwiVar.d, cwiVar.c(), cwiVar.e, cwiVar.c().length());
                StringBuilder sb3 = cwiVar.d;
                if (cubVar.w().length > cwiVar.b + 1) {
                    sb3.append(" [ERROR: UNUSED LOG ARGUMENTS]");
                }
            } else {
                sb2.append(FloggerFormatUtils.b(cubVar.k()));
            }
            LogSiteMetadataWriter.c(cuvVar, b, sb2);
        } else {
            sb2.append("(REDACTED) ");
            sb2.append(cubVar.j().b);
        }
        sb = sb2.toString();
        Throwable th2 = (Throwable) cubVar.i().d(ctd.a);
        switch (LogConfigProvider.d(cubVar.l())) {
        }
    }
}
