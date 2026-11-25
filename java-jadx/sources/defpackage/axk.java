package defpackage;

import j$.util.function.ToIntFunction;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class axk implements ToIntFunction {
    private final /* synthetic */ int e;
    public static final /* synthetic */ axk d = new axk(3);
    public static final /* synthetic */ axk c = new axk(2);
    public static final /* synthetic */ axk b = new axk(1);
    public static final /* synthetic */ axk a = new axk(0);

    private /* synthetic */ axk(int i) {
        this.e = i;
    }

    @Override // j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.e) {
            case 0:
                return ((Integer) obj).intValue();
            case 1:
                return ((ckf) obj).es;
            case 2:
                return ((ckw) obj).w;
            default:
                return ((Integer) obj).intValue();
        }
    }
}
