package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnu extends ew {
    public final char a;

    public cnu(char c) {
        super(null);
        this.a = c;
    }

    public final String toString() {
        int i = this.a;
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(i & 15);
            i >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(copyValueOf);
        sb.append("')");
        return sb.toString();
    }
}
