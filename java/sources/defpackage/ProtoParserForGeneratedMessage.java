package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoParserForGeneratedMessage extends ProtoMessageParserBase {
    private final GeneratedMessageLite a;

    public ProtoParserForGeneratedMessage(GeneratedMessageLite ddkVar) {
        this.a = ddkVar;
    }

    @Override // defpackage.ProtoMessageParserBase
    public final /* bridge */ /* synthetic */ MessageLite e(byte[] bArr, int i, ExtensionRegistryLite dczVar) {
        return GeneratedMessageLite.t(this.a, bArr, 1, i, dczVar);
    }

    @Override // defpackage.ProtoParser
    public final /* bridge */ /* synthetic */ Object f(CodedInputStreamReaderBase dcpVar, ExtensionRegistryLite dczVar) {
        return GeneratedMessageLite.s(this.a, dcpVar, dczVar);
    }
}
