package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CpuProfilingConfigurations implements PrimesMetricConfigurations {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final double e;
    private final int f;

    public CpuProfilingConfigurations() {
    }

    public CpuProfilingConfigurations(int i, int i2, int i3, int i4, double d) {
        this.f = 1;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = d;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CpuProfilingConfigurations)) {
            return false;
        }
        CpuProfilingConfigurations bwxVar = (CpuProfilingConfigurations) obj;
        int i = this.f;
        int i2 = bwxVar.f;
        if (NavInstructionTypeEnum != 0) {
            return i2 == 1 && this.a == bwxVar.a && this.b == bwxVar.b && this.c == bwxVar.c && this.d == bwxVar.d && Double.doubleToLongBits(this.e) == Double.doubleToLongBits(bwxVar.e);
        }
        throw null;
    }

    public final int hashCode() {
        PrimesEnablement.b(this.f);
        return ((((((((this.a ^ (-722379962)) * 1000003) ^ this.b) * 1000003) ^ this.c) * 1000003) ^ this.d) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.e) >>> 32) ^ Double.doubleToLongBits(this.e)));
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.f);
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        double d = this.e;
        StringBuilder sb = new StringBuilder(a.length() + 211);
        StaggeredGridLayoutParams.append("CpuProfilingConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", maxBufferSizeBytes=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", sampleDurationMs=");
        StaggeredGridLayoutParams.append(i2);
        StaggeredGridLayoutParams.append(", sampleDurationSkewMs=");
        StaggeredGridLayoutParams.append(i3);
        StaggeredGridLayoutParams.append(", sampleFrequencyMicro=");
        StaggeredGridLayoutParams.append(i4);
        StaggeredGridLayoutParams.append(", samplesPerEpoch=");
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
