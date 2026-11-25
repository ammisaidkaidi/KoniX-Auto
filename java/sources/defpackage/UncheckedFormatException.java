package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class UncheckedFormatException extends RuntimeException {
    public UncheckedFormatException(String str) {
        super(str);
    }

    public static UncheckedFormatException a(String str, String str2, int i) {
        return new UncheckedFormatException(d(str, str2, i, i + 1));
    }

    public static UncheckedFormatException b(String str, String str2, int i, int i2) {
        return new UncheckedFormatException(d(str, str2, i, i2));
    }

    public static UncheckedFormatException c(String str, String str2, int i) {
        return new UncheckedFormatException(d(str, str2, i, -1));
    }

    private static String d(String str, String str2, int i, int i2) {
        if (i2 < 0) {
            i2 = str2.length();
        }
        StringBuilder sb = new StringBuilder(str);
        StaggeredGridLayoutParams.append(": ");
        if (NavInstructionTypeEnum > 8) {
            StaggeredGridLayoutParams.append("...");
            StaggeredGridLayoutParams.append((CharSequence) str2, i - 5, i);
        } else {
            StaggeredGridLayoutParams.append((CharSequence) str2, 0, i);
        }
        StaggeredGridLayoutParams.append('[');
        StaggeredGridLayoutParams.append(str2.substring(i, i2));
        StaggeredGridLayoutParams.append(']');
        if (str2.length() - i2 > 8) {
            StaggeredGridLayoutParams.append((CharSequence) str2, i2, i2 + 5);
            StaggeredGridLayoutParams.append("...");
        } else {
            StaggeredGridLayoutParams.append((CharSequence) str2, i2, str2.length());
        }
        return StaggeredGridLayoutParams.toString();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
