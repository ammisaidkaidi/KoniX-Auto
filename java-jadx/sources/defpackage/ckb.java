package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ckb implements ddm {
    DISPLAY_TYPE_MAIN(0),
    DISPLAY_TYPE_CLUSTER(1),
    DISPLAY_TYPE_AUXILIARY(2);

    public final int d;

    ckb(int i) {
        this.d = i;
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.d;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.d);
    }
}
