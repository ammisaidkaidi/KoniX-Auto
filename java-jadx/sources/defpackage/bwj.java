package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bwj {
    public final String a;
    public final boolean b;
    public final dpz c;
    public final dot d;
    public final String e;
    public final Long f;
    public final boolean g;
    public final bus h;

    public bwj() {
    }

    public bwj(String str, boolean z, dpz dpzVar, dot dotVar, String str2, Long l, boolean z2, bus busVar) {
        this.a = str;
        this.b = z;
        this.c = dpzVar;
        this.d = dotVar;
        this.e = str2;
        this.f = l;
        this.g = z2;
        this.h = busVar;
    }

    public static bwi a() {
        bwi bwiVar = new bwi();
        bwiVar.b(false);
        bwiVar.c(false);
        return bwiVar;
    }

    public final boolean equals(Object obj) {
        dot dotVar;
        String str;
        Long l;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bwj)) {
            return false;
        }
        bwj bwjVar = (bwj) obj;
        String str2 = this.a;
        if (str2 != null ? str2.equals(bwjVar.a) : bwjVar.a == null) {
            if (this.b == bwjVar.b && this.c.equals(bwjVar.c) && ((dotVar = this.d) != null ? dotVar.equals(bwjVar.d) : bwjVar.d == null) && ((str = this.e) != null ? str.equals(bwjVar.e) : bwjVar.e == null) && ((l = this.f) != null ? l.equals(bwjVar.f) : bwjVar.f == null) && this.g == bwjVar.g) {
                bus busVar = this.h;
                bus busVar2 = bwjVar.h;
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
        sb.append("Metric{customEventName=");
        sb.append(str);
        sb.append(", isEventNameConstant=");
        sb.append(z);
        sb.append(", metric=");
        sb.append(valueOf);
        sb.append(", metricExtension=");
        sb.append(valueOf2);
        sb.append(", accountableComponentName=");
        sb.append(str2);
        sb.append(", sampleRatePermille=");
        sb.append(valueOf3);
        sb.append(", isUnsampled=");
        sb.append(z2);
        sb.append(", debugLogsTime=");
        sb.append(valueOf4);
        sb.append("}");
        return sb.toString();
    }

    public final int hashCode() {
        int i;
        String str = this.a;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ (true != this.b ? 1237 : 1231)) * 1000003;
        dpz dpzVar = this.c;
        int i2 = dpzVar.q;
        if (i2 == 0) {
            i2 = dez.a.b(dpzVar).b(dpzVar);
            dpzVar.q = i2;
        }
        int i3 = (hashCode ^ i2) * 1000003;
        dot dotVar = this.d;
        if (dotVar == null) {
            i = 0;
        } else {
            i = dotVar.q;
            if (i == 0) {
                i = dez.a.b(dotVar).b(dotVar);
                dotVar.q = i;
            }
        }
        int i4 = (i3 ^ i) * 1000003;
        String str2 = this.e;
        int hashCode2 = (i4 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        Long l = this.f;
        int hashCode3 = (((hashCode2 ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (true == this.g ? 1231 : 1237)) * 1000003;
        bus busVar = this.h;
        return hashCode3 ^ (busVar != null ? busVar.hashCode() : 0);
    }
}
