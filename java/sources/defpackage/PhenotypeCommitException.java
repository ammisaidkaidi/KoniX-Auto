package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeCommitException extends RuntimeException {
    public final int a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PhenotypeCommitException(int i, String str, Throwable th) {
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
