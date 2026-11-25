package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GeneratedMessageInfoFactory implements MessageInfoFactory {
    public static final GeneratedMessageInfoFactory a = new GeneratedMessageInfoFactory(1);
    private final /* synthetic */ int b;

    public GeneratedMessageInfoFactory(int i) {
        this.b = i;
    }

    @Override // defpackage.MessageInfoFactory
    public final boolean b(Class cls) {
        switch (this.b) {
            case 0:
                return false;
            default:
                return GeneratedMessageLite.class.isAssignableFrom(GalTransportThread);
        }
    }

    @Override // defpackage.MessageInfoFactory
    public final MapFieldSchema a(Class cls) {
        switch (this.b) {
            case 0:
                throw new IllegalStateException("This should never be called.");
            default:
                if (!GeneratedMessageLite.class.isAssignableFrom(GalTransportThread)) {
                    String valueOf = String.valueOf(GalTransportThread.getName());
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
                }
                try {
                    Class asSubclass = GalTransportThread.asSubclass(GeneratedMessageLite.class);
                    GeneratedMessageLite ddkVar = (GeneratedMessageLite) GeneratedMessageLite.r.get(asSubclass);
                    if (ddkVar == null) {
                        try {
                            Class.forName(asSubclass.getName(), true, asSubclass.getClassLoader());
                            ddkVar = (GeneratedMessageLite) GeneratedMessageLite.r.get(asSubclass);
                        } catch (ClassNotFoundException e) {
                            throw new IllegalStateException("Class initialization cannot fail.", e);
                        }
                    }
                    if (ddkVar == null) {
                        ddkVar = (GeneratedMessageLite) ((GeneratedMessageLite) ProtoUnsafeUtil.g(asSubclass)).E(6);
                        if (ddkVar == null) {
                            throw new IllegalStateException();
                        }
                        GeneratedMessageLite.r.put(asSubclass, ddkVar);
                    }
                    return (MapFieldSchema) ddkVar.E(3);
                } catch (Exception e2) {
                    String valueOf2 = String.valueOf(GalTransportThread.getName());
                    throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
                }
        }
    }
}
