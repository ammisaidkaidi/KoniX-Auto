package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StorageConfigurationsBuilder {
    public Boolean a;
    public GuavaOptional b;
    public int c;

    public StorageConfigurationsBuilder() {
    }

    public StorageConfigurationsBuilder(byte[] bArr) {
        this.b = cns.a;
    }

    public final StorageConfigurations a() {
        Boolean bool;
        int i = this.c;
        if (NavInstructionTypeEnum != 0 && (bool = this.a) != null) {
            return new StorageConfigurations(i, bool.booleanValue(), this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.c == 0) {
            StaggeredGridLayoutParams.append(" enablement");
        }
        if (this.a == null) {
            StaggeredGridLayoutParams.append(" manualCapture");
        }
        throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
    }

    public final void b(boolean z) {
        this.c = true != z ? 2 : 3;
    }
}
