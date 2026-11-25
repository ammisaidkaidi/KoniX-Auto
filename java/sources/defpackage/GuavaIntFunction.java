package defpackage;

import android.view.InputDevice;
import j$.util.function.IntFunction;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class GuavaIntFunction implements IntFunction {
    private final /* synthetic */ int g;
    public static final /* synthetic */ GuavaIntFunction f = new GuavaIntFunction(5);
    public static final /* synthetic */ GuavaIntFunction e = new GuavaIntFunction(4);
    public static final /* synthetic */ GuavaIntFunction d = new GuavaIntFunction(3);
    public static final /* synthetic */ GuavaIntFunction c = new GuavaIntFunction(2);
    public static final /* synthetic */ GuavaIntFunction b = new GuavaIntFunction(1);
    public static final /* synthetic */ GuavaIntFunction a = new GuavaIntFunction(0);

    private /* synthetic */ aws(int i) {
        this.g = i;
    }

    @Override // j$.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.g) {
            case 0:
                return new EvConnectorType[i];
            case 1:
                return new Class[i];
            case 2:
                return new FuelType[i];
            case 3:
                return EvConnectorType.b(NavInstructionTypeEnum);
            case 4:
                return FuelType.b(NavInstructionTypeEnum);
            default:
                return InputDevice.getDevice(NavInstructionTypeEnum);
        }
    }
}
