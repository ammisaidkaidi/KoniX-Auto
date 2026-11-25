package defpackage;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Formattable;
import java.util.Formatter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MessageFormatApplier implements FormatApplier {
    public int a = 0;
    public int b = -1;
    public final Object[] c;
    public final StringBuilder d;
    public int e;
    private final LogMessageTemplate f;

    public MessageFormatApplier(LogMessageTemplate cvcVar, Object[] objArr, StringBuilder sb) {
        ViewParentCompatStatics.u(cvcVar, "context");
        this.f = cvcVar;
        this.e = 0;
        this.c = (Object[]) ViewParentCompatStatics.u(objArr, "arguments");
        this.d = sb;
    }

    public static void d(StringBuilder sb, Object obj, String str) {
        StaggeredGridLayoutParams.append("[INVALID: format=");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", type=");
        StaggeredGridLayoutParams.append(obj.getClass().getCanonicalName());
        StaggeredGridLayoutParams.append(", value=");
        StaggeredGridLayoutParams.append(FloggerFormatUtils.b(obj));
        StaggeredGridLayoutParams.append("]");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x012c  */
    @Override // defpackage.FormatApplier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Object obj, FormatChar ctxVar, FormatSpecificationParser ctyVar) {
        FormatSpecificationParser ctyVar2;
        boolean z;
        switch (ctxVar.m) {
            case GENERAL:
                StringBuilder sb = this.d;
                switch (ctxVar) {
                    case null:
                        if (obj instanceof Formattable) {
                            Formattable formattable = (Formattable) obj;
                            int i = ctyVar.b & 162;
                            if (NavInstructionTypeEnum != 0) {
                                i = ((NavInstructionTypeEnum & 32) == 0 ? 0 : 1) | ((NavInstructionTypeEnum & 128) != 0 ? 2 : 0) | ((NavInstructionTypeEnum & 2) != 0 ? 4 : 0);
                            }
                            int length = StaggeredGridLayoutParams.length();
                            Formatter formatter = new Formatter(sb, cue.a);
                            try {
                                formattable.formatTo(formatter, i, ctyVar.c, ctyVar.d);
                                return;
                            } catch (RuntimeException e) {
                                StaggeredGridLayoutParams.setLength(length);
                                try {
                                    formatter.out().append(FloggerFormatUtils.a(formattable, e));
                                    return;
                                } catch (IOException e2) {
                                    return;
                                }
                            }
                        }
                        if (ctyVar.c()) {
                            StaggeredGridLayoutParams.append(FloggerFormatUtils.b(obj));
                            return;
                        }
                        break;
                    case 1:
                    case 3:
                        if (ctyVar.c()) {
                            StaggeredGridLayoutParams.append(obj);
                            return;
                        }
                        break;
                    case 2:
                        if (ctyVar.c()) {
                            if (obj instanceof Character) {
                                StaggeredGridLayoutParams.append(obj);
                                return;
                            }
                            int intValue = ((Number) obj).intValue();
                            if ((intValue >>> 16) == 0) {
                                StaggeredGridLayoutParams.append((char) intValue);
                                return;
                            } else {
                                StaggeredGridLayoutParams.append(Character.toChars(intValue));
                                return;
                            }
                        }
                        break;
                    case 5:
                        if (!ctyVar.c()) {
                            int i2 = ctyVar.b;
                            int i3 = i2 & 128;
                            if (i3 == 0) {
                                ctyVar2 = cty.a;
                            } else if (i3 != i2 || ctyVar.c != -1 || ctyVar.d != -1) {
                                ctyVar2 = new FormatSpecificationParser(i3, -1, -1);
                            }
                            if (ctyVar2.equals(ctyVar)) {
                                Number number = (Number) obj;
                                boolean d = ctyVar.d();
                                long longValue = number.longValue();
                                if (number instanceof Long) {
                                    FloggerFormatUtils.c(sb, longValue, d);
                                    return;
                                }
                                if (number instanceof Integer) {
                                    FloggerFormatUtils.c(sb, longValue & 4294967295L, d);
                                    return;
                                }
                                if (number instanceof Byte) {
                                    FloggerFormatUtils.c(sb, longValue & 255, d);
                                    return;
                                }
                                if (number instanceof Short) {
                                    FloggerFormatUtils.c(sb, longValue & 65535, d);
                                    return;
                                }
                                if (!(number instanceof BigInteger)) {
                                    String valueOf = String.valueOf(number.getClass());
                                    String.valueOf(valueOf).length();
                                    throw new IllegalStateException("unsupported number type: ".concat(String.valueOf(valueOf)));
                                }
                                String bigInteger = ((BigInteger) number).toString(16);
                                if (ProtoMsgIntStringInt) {
                                    bigInteger = bigInteger.toUpperCase(cue.a);
                                }
                                StaggeredGridLayoutParams.append(bigInteger);
                                return;
                            }
                        }
                        ctyVar2 = ctyVar;
                        if (ctyVar2.equals(ctyVar)) {
                        }
                        break;
                }
                String str = ctxVar.o;
                if (!ctyVar.c()) {
                    int i4 = ctxVar.l;
                    if (ctyVar.d()) {
                        i4 &= 65503;
                    }
                    StringBuilder sb2 = new StringBuilder("%");
                    ctyVar.f(sb2);
                    sb2.append((char) i4);
                    str = sb2.toString();
                }
                StaggeredGridLayoutParams.append(String.format(cue.a, str, obj));
            case BOOLEAN:
                z = obj instanceof Boolean;
                break;
            case CHARACTER:
                if (!(obj instanceof Character)) {
                    if (!(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short)) {
                        z = false;
                        break;
                    } else {
                        z = Character.isValidCodePoint(((Number) obj).intValue());
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
                break;
            case INTEGRAL:
                if (!(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof BigInteger)) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
                break;
            case FLOAT:
                if (!(obj instanceof Double) && !(obj instanceof Float)) {
                    if (!(obj instanceof BigDecimal)) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            default:
                throw null;
        }
        if (!z) {
            d(this.d, obj, ctxVar.o);
            return;
        }
        StringBuilder sb3 = this.d;
        switch (ctxVar) {
        }
        String str2 = ctxVar.o;
        if (!ctyVar.c()) {
        }
        sb3.append(String.format(cue.a, str2, obj));
    }

    public final CharSequenceAppender b() {
        return this.f.a;
    }

    public final String c() {
        return this.f.b;
    }
}
