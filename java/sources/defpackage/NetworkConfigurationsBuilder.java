package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkConfigurationsBuilder {
    public Integer a;
    public Boolean b;
    public GuavaOptional c;
    public int d;

    public NetworkConfigurationsBuilder() {
    }

    public NetworkConfigurationsBuilder(byte[] bArr) {
        this.c = cns.a;
    }

    public final NetworkConfigurations a() {
        Integer num;
        int i = this.d;
        if (NavInstructionTypeEnum != 0 && (num = this.a) != null && this.b != null) {
            NetworkConfigurations bzhVar = new NetworkConfigurations(i, num.intValue(), this.b.booleanValue(), this.c);
            ex.m(true, "only one of auto url auto sanitization and custom url sanitizer can be enabled.");
            return bzhVar;
        }
        StringBuilder sb = new StringBuilder();
        if (this.d == 0) {
            StaggeredGridLayoutParams.append(" enablement");
        }
        if (this.a == null) {
            StaggeredGridLayoutParams.append(" batchSize");
        }
        if (this.b == null) {
            StaggeredGridLayoutParams.append(" enableUrlAutoSanitization");
        }
        throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
    }

    public final void b(boolean z) {
        this.d = true != z ? 2 : 3;
    }
}
