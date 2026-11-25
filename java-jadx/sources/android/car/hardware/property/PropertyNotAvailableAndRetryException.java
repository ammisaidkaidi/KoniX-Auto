package android.car.hardware.property;

/* loaded from: classes2.dex */
public class PropertyNotAvailableAndRetryException extends IllegalStateException {
    public PropertyNotAvailableAndRetryException(int i) {
        super("Prop: " + i);
    }
}
