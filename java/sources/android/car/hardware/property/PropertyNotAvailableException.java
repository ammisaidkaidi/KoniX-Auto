package android.car.hardware.property;

/* loaded from: classes2.dex */
public class PropertyNotAvailableException extends IllegalStateException {
    public PropertyNotAvailableException(int i) {
        super("Prop: " + i);
    }
}
