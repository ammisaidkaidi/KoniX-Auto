package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneId$$ExternalSyntheticBackport0;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalQueries;
import j$.util.Objects;

/* loaded from: classes2.dex */
public interface Chronology extends Comparable {
    int compareTo(Chronology chronology);

    ChronoLocalDate date(TemporalAccessor temporalAccessor);

    boolean equals(Object obj);

    String getCalendarType();

    String getId();

    int hashCode();

    ChronoLocalDateTime localDateTime(TemporalAccessor temporalAccessor);

    String toString();

    ChronoZonedDateTime zonedDateTime(Instant instant, ZoneId zoneId);

    /* renamed from: j$.time.chrono.Chronology$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Chronology from(TemporalAccessor temporalAccessor) {
            Objects.requireNonNull(temporalAccessor, "temporal");
            return (Chronology) ZoneId$$ExternalSyntheticBackport0.m((Chronology) temporalAccessor.query(TemporalQueries.chronology()), IsoChronology.INSTANCE);
        }

        public static Chronology of(String str) {
            return AbstractChronology.of(str);
        }

        public static ChronoLocalDateTime $default$localDateTime(Chronology chronology, TemporalAccessor temporalAccessor) {
            try {
                return chronology.date(temporalAccessor).atTime(LocalTime.from(temporalAccessor));
            } catch (DateTimeException e) {
                String valueOf = String.valueOf(temporalAccessor.getClass());
                StringBuilder sb = new StringBuilder(valueOf.length() + 60);
                sb.append("Unable to obtain ChronoLocalDateTime from TemporalAccessor: ");
                sb.append(valueOf);
                throw new DateTimeException(sb.toString(), e);
            }
        }
    }
}
