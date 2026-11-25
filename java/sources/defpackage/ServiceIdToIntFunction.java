package defpackage;

import j$.util.function.ToIntFunction;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ServiceIdToIntFunction implements ToIntFunction {
    private final /* synthetic */ int e;
    public static final /* synthetic */ ServiceIdToIntFunction d = new ServiceIdToIntFunction(3);
    public static final /* synthetic */ ServiceIdToIntFunction c = new ServiceIdToIntFunction(2);
    public static final /* synthetic */ ServiceIdToIntFunction b = new ServiceIdToIntFunction(1);
    public static final /* synthetic */ ServiceIdToIntFunction a = new ServiceIdToIntFunction(0);

    private /* synthetic */ axk(int i) {
        this.e = i;
    }

    @Override // j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.e) {
            case 0:
                return ((Integer) obj).intValue();
            case 1:
                return ((AndroidKeycode) obj).es;
            case 2:
                return ((SensorType) obj).w;
            default:
                return ((Integer) obj).intValue();
        }
    }
}
