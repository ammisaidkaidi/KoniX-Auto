package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableExtensionRegistry extends ExtensionRegistryLite {
    public ImmutableExtensionRegistry() {
        super(null);
    }

    @Override // defpackage.ExtensionRegistryLite
    public final ProtoParserFactory c(MessageLite derVar, int i) {
        char c;
        String name = derVar.getClass().getName();
        switch (name.hashCode()) {
            case 98323:
                if (name.equals("ccs")) {
                    c = 0;
                    break;
                }
            default:
                c = 65535;
                break;
        }
        switch (PhenotypeFlagMessage) {
            case 0:
                switch (NavInstructionTypeEnum) {
                }
        }
        return null;
    }
}
