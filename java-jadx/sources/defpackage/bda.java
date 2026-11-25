package defpackage;

import j$.time.Duration;
import j$.time.Instant;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bda {
    public final Instant a;
    public final Duration b;

    public bda(Instant instant, Duration duration) {
        if (instant == null) {
            throw new NullPointerException("Null startTime");
        }
        this.a = instant;
        if (duration == null) {
            throw new NullPointerException("Null elapsedTime");
        }
        this.b = duration;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bda) {
            bda bdaVar = (bda) obj;
            if (this.a.equals(bdaVar.a) && this.b.equals(bdaVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 44 + obj2.length());
        sb.append("LatencyMeasurement{startTime=");
        sb.append(obj);
        sb.append(", elapsedTime=");
        sb.append(obj2);
        sb.append("}");
        return sb.toString();
    }

    public bda() {
    }
}
