package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum LiteJavaType {
    VOID(Void.class),
    INT(Integer.class),
    LONG(Long.class),
    FLOAT(Float.class),
    DOUBLE(Double.class),
    BOOLEAN(Boolean.class),
    STRING(String.class),
    BYTE_STRING(ByteString.class),
    ENUM(Integer.class),
    MESSAGE(Object.class);

    public final Class k;

    static {
        ByteString dclVar = dcl.b;
    }

    ddw(Class cls) {
        this.k = cls;
    }
}
