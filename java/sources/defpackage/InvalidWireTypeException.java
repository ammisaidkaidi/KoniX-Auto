package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class InvalidWireTypeException extends InvalidProtocolBufferException {
    private static final long serialVersionUID = 3283890091615336259L;

    public InvalidWireTypeException() {
        super("Protocol message tag had invalid wire type.");
    }
}
