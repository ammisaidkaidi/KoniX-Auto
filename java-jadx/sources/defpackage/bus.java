package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bus {
    public static final bus a = new bus(new buv[0]);
    public final buv[] b;
    public final int[] c;

    public bus(buv[] buvVarArr) {
        this.b = buvVarArr;
        this.c = new int[buvVarArr.length];
        for (int i = 0; i < buvVarArr.length; i++) {
            int[] iArr = this.c;
            int i2 = buvVarArr[i].b;
            iArr[i] = 0;
        }
    }
}
