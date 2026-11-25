package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpt extends RuntimeException {
    public final int a;

    public bpt() {
        this(29503, null);
    }

    public bpt(int i, String str) {
        this(i, str, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bpt(int i, String str, Throwable th) {
        super(r4, th);
        String valueOf;
        if (str != null) {
            StringBuilder sb = new StringBuilder(str.length() + 13);
            sb.append(i);
            sb.append(": ");
            sb.append(str);
            valueOf = sb.toString();
        } else {
            valueOf = String.valueOf(i);
        }
        this.a = i;
    }
}
