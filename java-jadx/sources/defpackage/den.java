package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class den {
    public static final ev a;
    public static final ev b;

    static {
        ev evVar;
        try {
            evVar = (ev) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            evVar = null;
        }
        a = evVar;
        b = new ev();
    }
}
