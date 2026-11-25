package android.car.hardware.property;

/* loaded from: classes2.dex */
public class CarInternalErrorException extends RuntimeException {
    public CarInternalErrorException(int i) {
        super("Prop: " + i);
    }
}
