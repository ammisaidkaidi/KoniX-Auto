package defpackage;

import android.view.InputDevice;
import j$.util.function.IntFunction;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class aws implements IntFunction {
    private final /* synthetic */ int g;
    public static final /* synthetic */ aws f = new aws(5);
    public static final /* synthetic */ aws e = new aws(4);
    public static final /* synthetic */ aws d = new aws(3);
    public static final /* synthetic */ aws c = new aws(2);
    public static final /* synthetic */ aws b = new aws(1);
    public static final /* synthetic */ aws a = new aws(0);

    private /* synthetic */ aws(int i) {
        this.g = i;
    }

    @Override // j$.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.g) {
            case 0:
                return new ckc[i];
            case 1:
                return new Class[i];
            case 2:
                return new ckd[i];
            case 3:
                return ckc.b(i);
            case 4:
                return ckd.b(i);
            default:
                return InputDevice.getDevice(i);
        }
    }
}
