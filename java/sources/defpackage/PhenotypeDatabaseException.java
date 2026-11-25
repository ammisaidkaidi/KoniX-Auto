package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeDatabaseException extends RuntimeException {
    public final int a;

    public PhenotypeDatabaseException() {
        this(29503, null);
    }

    public PhenotypeDatabaseException(int i, String str) {
        this(i, str, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PhenotypeDatabaseException(int i, String str, Throwable th) {
        super(r4, th);
        String valueOf;
        if (str != null) {
            StringBuilder sb = new StringBuilder(str.length() + 13);
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            StaggeredGridLayoutParams.append(": ");
            StaggeredGridLayoutParams.append(str);
            valueOf = StaggeredGridLayoutParams.toString();
        } else {
            valueOf = String.valueOf(NavInstructionTypeEnum);
        }
        this.a = i;
    }
}
