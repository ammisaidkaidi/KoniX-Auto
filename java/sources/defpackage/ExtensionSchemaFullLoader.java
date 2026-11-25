package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ExtensionSchemaFullLoader {
    public static final ViewCompatCore a = new ViewCompatCore();
    private static final ViewCompatCore b;

    static {
        ViewCompatCore hlVar;
        try {
            hlVar = (ViewCompatCore) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            hlVar = null;
        }
        b = hlVar;
    }

    static ViewCompatCore a() {
        ViewCompatCore hlVar = b;
        if (hlVar != null) {
            return hlVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
