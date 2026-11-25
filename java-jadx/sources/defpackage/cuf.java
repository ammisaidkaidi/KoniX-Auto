package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cuf extends cug {
    public static final cuf a = new cuf();

    private cuf() {
    }

    @Override // defpackage.cug
    public final int b() {
        return 0;
    }

    @Override // defpackage.cug
    public final ctt c(int i) {
        throw new IndexOutOfBoundsException("cannot read from empty metadata");
    }

    @Override // defpackage.cug
    public final Object d(ctt cttVar) {
        return null;
    }

    @Override // defpackage.cug
    public final Object e(int i) {
        throw new IndexOutOfBoundsException("cannot read from empty metadata");
    }
}
