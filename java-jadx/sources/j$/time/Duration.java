package j$.time;

import j$.lang.DesugarMath$$ExternalSyntheticBackport2;
import j$.lang.DesugarMath$$ExternalSyntheticBackport3;
import j$.nio.file.attribute.FileTime$$ExternalSyntheticBackport0;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class Duration implements Comparable, Serializable {
    private static final long serialVersionUID = 3078945930695997490L;
    private final int nanos;
    private final long seconds;
    public static final Duration ZERO = new Duration(0, 0);
    private static final BigInteger BI_NANOS_PER_SECOND = BigInteger.valueOf(1000000000);

    public static Duration ofDays(long j) {
        long m;
        m = DesugarMath$$ExternalSyntheticBackport3.m(j, 86400);
        return create(m, 0);
    }

    public static Duration ofMinutes(long j) {
        long m;
        m = DesugarMath$$ExternalSyntheticBackport3.m(j, 60);
        return create(m, 0);
    }

    public static Duration ofSeconds(long j) {
        return create(j, 0);
    }

    public static Duration ofSeconds(long j, long j2) {
        return create(Clock$OffsetClock$$ExternalSyntheticBackport0.m(j, DesugarMath$$ExternalSyntheticBackport2.m(j2, 1000000000L)), (int) FileTime$$ExternalSyntheticBackport0.m(j2, 1000000000L));
    }

    public static Duration ofNanos(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (i + 1000000000);
            j2--;
        }
        return create(j2, i);
    }

    private static Duration create(long j, int i) {
        if ((i | j) == 0) {
            return ZERO;
        }
        return new Duration(j, i);
    }

    private Duration(long j, int i) {
        this.seconds = j;
        this.nanos = i;
    }

    public long getSeconds() {
        return this.seconds;
    }

    public Duration plusDays(long j) {
        long m;
        m = DesugarMath$$ExternalSyntheticBackport3.m(j, 86400);
        return plus(m, 0L);
    }

    public Duration plusHours(long j) {
        long m;
        m = DesugarMath$$ExternalSyntheticBackport3.m(j, 3600);
        return plus(m, 0L);
    }

    private Duration plus(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofSeconds(Clock$OffsetClock$$ExternalSyntheticBackport0.m(Clock$OffsetClock$$ExternalSyntheticBackport0.m(this.seconds, j), j2 / 1000000000), this.nanos + (j2 % 1000000000));
    }

    public Duration minusDays(long j) {
        return j == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j);
    }

    public Duration minusHours(long j) {
        return j == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j);
    }

    public long toDays() {
        return this.seconds / 86400;
    }

    public long toHours() {
        return this.seconds / 3600;
    }

    public long toMinutes() {
        return this.seconds / 60;
    }

    public long toMillis() {
        long m;
        long j = this.seconds;
        long j2 = this.nanos;
        if (j < 0) {
            j++;
            j2 -= 1000000000;
        }
        m = DesugarMath$$ExternalSyntheticBackport3.m(j, 1000);
        return Clock$OffsetClock$$ExternalSyntheticBackport0.m(m, j2 / 1000000);
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        int i = (this.seconds > duration.seconds ? 1 : (this.seconds == duration.seconds ? 0 : -1));
        return i != 0 ? i : this.nanos - duration.nanos;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Duration)) {
            return false;
        }
        Duration duration = (Duration) obj;
        return this.seconds == duration.seconds && this.nanos == duration.nanos;
    }

    public int hashCode() {
        long j = this.seconds;
        return ((int) (j ^ (j >>> 32))) + (this.nanos * 51);
    }

    public String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j = this.seconds;
        if (j < 0 && this.nanos > 0) {
            j++;
        }
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.nanos == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.seconds >= 0 || this.nanos <= 0) {
            sb.append(i2);
        } else if (i2 == 0) {
            sb.append("-0");
        } else {
            sb.append(i2);
        }
        if (this.nanos > 0) {
            int length = sb.length();
            if (this.seconds < 0) {
                sb.append(2000000000 - this.nanos);
            } else {
                sb.append(this.nanos + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    private Object writeReplace() {
        return new Ser((byte) 1, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    void writeExternal(DataOutput dataOutput) {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    static Duration readExternal(DataInput dataInput) {
        return ofSeconds(dataInput.readLong(), dataInput.readInt());
    }
}
