package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MessageInfoImpl {
    public static final MessageInfoImpl a = new MessageInfoImpl();
    private final ConcurrentMap b = new ConcurrentHashMap();
    private final MessageInfoFactoryLoader c = new MessageInfoFactoryLoader();

    private MessageInfoImpl() {
    }

    public final MessageSchema a(Class cls) {
        ProtoCharsetUtil.i(cls, "messageType");
        MessageSchema dfgVar = (MessageSchema) this.b.get(GalTransportThread);
        if (dfgVar == null) {
            MessageInfoFactoryLoader dejVar = this.c;
            ProtoSchemaUtil.p(GalTransportThread);
            MapFieldSchema a2 = dejVar.a.a(GalTransportThread);
            dfgVar = a2.b() ? GeneratedMessageLite.class.isAssignableFrom(GalTransportThread) ? RawMessageSchema.c(dfh.c, dda.a, a2.a()) : RawMessageSchema.c(dfh.a, ExtensionSchemaFullLoader.a(), a2.a()) : GeneratedMessageLite.class.isAssignableFrom(GalTransportThread) ? MessageInfoFactoryLoader.a(a2) ? MessageSchemaImpl.m(a2, dew.b, def.b, dfh.c, dda.a, den.b) : MessageSchemaImpl.m(a2, dew.b, def.b, dfh.c, null, den.b) : MessageInfoFactoryLoader.a(a2) ? MessageSchemaImpl.m(a2, dew.a, def.a, dfh.a, ExtensionSchemaFullLoader.a(), den.a) : MessageSchemaImpl.m(a2, dew.a, def.a, dfh.b, null, den.a);
            ProtoCharsetUtil.i(cls, "messageType");
            ProtoCharsetUtil.i(dfgVar, "schema");
            MessageSchema dfgVar2 = (MessageSchema) this.b.putIfAbsent(cls, dfgVar);
            if (dfgVar2 != null) {
                return dfgVar2;
            }
        }
        return dfgVar;
    }

    public final MessageSchema b(Object obj) {
        return a(obj.getClass());
    }
}
