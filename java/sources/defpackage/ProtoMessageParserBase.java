package defpackage;

import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ProtoMessageParserBase implements ProtoParser {
    private static final ExtensionRegistryLite a = ExtensionRegistryLite.a();

    private static final void g(MessageLite derVar) {
        if (derVar != null && !derVar.l()) {
            throw ProtoMessageLiteBase.i().a();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [der, java.lang.Object] */
    @Override // defpackage.ProtoParser
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MessageLite c(InputStream inputStream, ExtensionRegistryLite dczVar) {
        CodedInputStreamReaderBase H = CodedInputStreamReaderBase.H(inputStream);
        ?? f = f(H, dczVar);
        try {
            H.z(0);
            g(NavManeuverTypeEnum);
            return f;
        } catch (InvalidProtocolBufferException e) {
            throw e;
        }
    }

    @Override // defpackage.ProtoParser
    public final /* bridge */ /* synthetic */ Object b(InputStream inputStream) {
        return c(inputStream, a);
    }

    @Override // defpackage.ProtoParser
    public final /* bridge */ /* synthetic */ Object d(byte[] bArr, int i, ExtensionRegistryLite dczVar) {
        MessageLite e = e(bArr, i, dczVar);
        g(ProtoFlagValueMessage);
        return e;
    }

    public MessageLite e(byte[] bArr, int i, ExtensionRegistryLite dczVar) {
        throw null;
    }
}
