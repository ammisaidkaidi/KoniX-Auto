package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class deh implements dep {
    public static final deh a = new deh(1);
    private final /* synthetic */ int b;

    public deh(int i) {
        this.b = i;
    }

    @Override // defpackage.dep
    public final boolean b(Class cls) {
        switch (this.b) {
            case 0:
                return false;
            default:
                return ddk.class.isAssignableFrom(cls);
        }
    }

    @Override // defpackage.dep
    public final deo a(Class cls) {
        switch (this.b) {
            case 0:
                throw new IllegalStateException("This should never be called.");
            default:
                if (!ddk.class.isAssignableFrom(cls)) {
                    String valueOf = String.valueOf(cls.getName());
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
                }
                try {
                    Class asSubclass = cls.asSubclass(ddk.class);
                    ddk ddkVar = (ddk) ddk.r.get(asSubclass);
                    if (ddkVar == null) {
                        try {
                            Class.forName(asSubclass.getName(), true, asSubclass.getClassLoader());
                            ddkVar = (ddk) ddk.r.get(asSubclass);
                        } catch (ClassNotFoundException e) {
                            throw new IllegalStateException("Class initialization cannot fail.", e);
                        }
                    }
                    if (ddkVar == null) {
                        ddkVar = (ddk) ((ddk) dfz.g(asSubclass)).E(6);
                        if (ddkVar == null) {
                            throw new IllegalStateException();
                        }
                        ddk.r.put(asSubclass, ddkVar);
                    }
                    return (deo) ddkVar.E(3);
                } catch (Exception e2) {
                    String valueOf2 = String.valueOf(cls.getName());
                    throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e2);
                }
        }
    }
}
