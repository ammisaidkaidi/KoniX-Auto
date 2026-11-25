package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MessageInfoFactoryLoader {
    private static final MessageInfoFactory b = new GeneratedMessageInfoFactory(0);
    public final MessageInfoFactory a;

    public MessageInfoFactoryLoader() {
        MessageInfoFactory depVar;
        MessageInfoFactory[] depVarArr = new MessageInfoFactory[2];
        depVarArr[0] = deh.a;
        try {
            depVar = (MessageInfoFactory) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            depVar = b;
        }
        depVarArr[1] = depVar;
        DefaultMessageInfoFactory deiVar = new DefaultMessageInfoFactory(depVarArr);
        ProtoCharsetUtil.i(deiVar, "messageInfoFactory");
        this.a = deiVar;
    }

    public static boolean a(MapFieldSchema deoVar) {
        return deoVar.c() == 1;
    }
}
