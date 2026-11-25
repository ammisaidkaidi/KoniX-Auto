package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cep extends RuntimeException {
    public final int a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public cep(int i, String str, Throwable th) {
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
