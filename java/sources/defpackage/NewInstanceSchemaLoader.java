package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class NewInstanceSchemaLoader {
    public static final ProtoTextFormatPrinterUtil a;
    public static final ProtoTextFormatPrinterUtil b;

    static {
        ProtoTextFormatPrinterUtil evVar;
        try {
            evVar = (ProtoTextFormatPrinterUtil) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            evVar = null;
        }
        a = evVar;
        b = new ProtoTextFormatPrinterUtil();
    }
}
