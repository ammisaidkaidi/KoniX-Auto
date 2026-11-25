package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dda {
    public static final hl a = new hl();
    private static final hl b;

    static {
        hl hlVar;
        try {
            hlVar = (hl) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            hlVar = null;
        }
        b = hlVar;
    }

    static hl a() {
        hl hlVar = b;
        if (hlVar != null) {
            return hlVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
