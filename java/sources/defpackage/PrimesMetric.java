package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetric {
    public final String a;
    public final boolean b;
    public final ProtoRootAggregateMessage c;
    public final ProtoEmptyMessageBeta d;
    public final String e;
    public final Long f;
    public final boolean g;
    public final StackTraceSnapshot h;

    public PrimesMetric() {
    }

    public PrimesMetric(String str, boolean z, ProtoRootAggregateMessage dpzVar, ProtoEmptyMessageBeta dotVar, String str2, Long l, boolean z2, StackTraceSnapshot busVar) {
        this.a = str;
        this.b = z;
        this.c = dpzVar;
        this.d = dotVar;
        this.e = str2;
        this.f = l;
        this.g = z2;
        this.h = busVar;
    }

    public static PrimesMetricBuilder a() {
        PrimesMetricBuilder bwiVar = new PrimesMetricBuilder();
        bwiVar.b(false);
        bwiVar.c(false);
        return bwiVar;
    }

    public final boolean equals(Object obj) {
        ProtoEmptyMessageBeta dotVar;
        String str;
        Long l;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrimesMetric)) {
            return false;
        }
        PrimesMetric bwjVar = (PrimesMetric) obj;
        String str2 = this.a;
        if (str2 != null ? str2.equals(bwjVar.a) : bwjVar.a == null) {
            if (this.b == bwjVar.b && this.c.equals(bwjVar.c) && ((dotVar = this.d) != null ? dotVar.equals(bwjVar.d) : bwjVar.d == null) && ((str = this.e) != null ? str.equals(bwjVar.e) : bwjVar.e == null) && ((ProtoMessageSingleStringL = this.f) != null ? l.equals(bwjVar.f) : bwjVar.f == null) && this.g == bwjVar.g) {
                StackTraceSnapshot busVar = this.h;
                StackTraceSnapshot busVar2 = bwjVar.h;
                if (busVar != null ? busVar.equals(busVar2) : busVar2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        String valueOf = String.valueOf(this.c);
        String valueOf2 = String.valueOf(this.d);
        String str2 = this.e;
        String valueOf3 = String.valueOf(this.f);
        boolean z2 = this.g;
        String valueOf4 = String.valueOf(this.h);
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(valueOf).length();
        int length3 = String.valueOf(valueOf2).length();
        int length4 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 161 + length2 + length3 + length4 + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        StaggeredGridLayoutParams.append("Metric{customEventName=");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", isEventNameConstant=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", metric=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", metricExtension=");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(", accountableComponentName=");
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append(", sampleRatePermille=");
        StaggeredGridLayoutParams.append(valueOf3);
        StaggeredGridLayoutParams.append(", isUnsampled=");
        StaggeredGridLayoutParams.append(z2);
        StaggeredGridLayoutParams.append(", debugLogsTime=");
        StaggeredGridLayoutParams.append(valueOf4);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }

    public final int hashCode() {
        int i;
        String str = this.a;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ (true != this.b ? 1237 : 1231)) * 1000003;
        ProtoRootAggregateMessage dpzVar = this.c;
        int i2 = dpzVar.q;
        if (i2 == 0) {
            i2 = MessageInfoImpl.a.b(dpzVar).b(dpzVar);
            dpzVar.q = i2;
        }
        int i3 = (hashCode ^ i2) * 1000003;
        ProtoEmptyMessageBeta dotVar = this.d;
        if (dotVar == null) {
            i = 0;
        } else {
            i = dotVar.q;
            if (NavInstructionTypeEnum == 0) {
                i = MessageInfoImpl.a.b(dotVar).b(dotVar);
                dotVar.q = i;
            }
        }
        int i4 = (i3 ^ i) * 1000003;
        String str2 = this.e;
        int hashCode2 = (i4 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        Long l = this.f;
        int hashCode3 = (((hashCode2 ^ (ProtoMessageSingleStringL == null ? 0 : l.hashCode())) * 1000003) ^ (true == this.g ? 1231 : 1237)) * 1000003;
        StackTraceSnapshot busVar = this.h;
        return hashCode3 ^ (busVar != null ? busVar.hashCode() : 0);
    }
}
