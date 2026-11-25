package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TraceConfigurationsBuilder {
    public Float a;
    public int b;

    public final TraceConfigurations a() {
        Float f;
        int i = this.b;
        if (NavInstructionTypeEnum == 0 || (NavManeuverTypeEnum = this.a) == null) {
            StringBuilder sb = new StringBuilder();
            if (this.b == 0) {
                StaggeredGridLayoutParams.append(" enablement");
            }
            if (this.a == null) {
                StaggeredGridLayoutParams.append(" samplingProbability");
            }
            throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
        }
        TraceConfigurations cbeVar = new TraceConfigurations(i, f.floatValue());
        float f2 = cbeVar.a;
        boolean z = false;
        if (f2 >= 0.0f && f2 <= 1.0f) {
            z = true;
        }
        ex.s(z, "Probability shall be between 0 and 1.");
        return cbeVar;
    }

    public final void b(boolean z) {
        this.b = true != z ? 2 : 3;
    }

    public final CrashConfigurations c() {
        Float f;
        int i = this.b;
        if (NavInstructionTypeEnum == 0 || (NavManeuverTypeEnum = this.a) == null) {
            StringBuilder sb = new StringBuilder();
            if (this.b == 0) {
                StaggeredGridLayoutParams.append(" enablement");
            }
            if (this.a == null) {
                StaggeredGridLayoutParams.append(" startupSamplePercentage");
            }
            throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
        }
        CrashConfigurations bxfVar = new CrashConfigurations(i, f.floatValue());
        float f2 = bxfVar.a;
        boolean z = false;
        if (f2 > 0.0f && f2 <= 100.0f) {
            z = true;
        }
        ex.m(z, "StartupSamplePercentage should be a floating number > 0 CarUiInsetsUpdater <= 100.");
        return bxfVar;
    }

    public final void d(boolean z) {
        this.b = true != z ? 2 : 3;
    }
}
