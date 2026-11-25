package android.car.hardware.property;

/* loaded from: classes2.dex */
public class PropertyAccessDeniedSecurityException extends SecurityException {
    public PropertyAccessDeniedSecurityException(int i) {
        super("Prop: " + i);
    }
}
