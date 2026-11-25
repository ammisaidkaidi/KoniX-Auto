package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum MetadataValueType {
    BOOLEAN,
    STRING,
    LONG,
    DOUBLE;

    public static MetadataValueType a(Object obj) {
        if (obj instanceof String) {
            return STRING;
        }
        if (obj instanceof Boolean) {
            return BOOLEAN;
        }
        if (obj instanceof Long) {
            return LONG;
        }
        if (obj instanceof Double) {
            return DOUBLE;
        }
        String valueOf = String.valueOf(obj.getClass());
        String.valueOf(valueOf).length();
        throw new AssertionError("invalid tag type: ".concat(String.valueOf(valueOf)));
    }
}
