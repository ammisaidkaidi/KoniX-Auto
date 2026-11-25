package defpackage;

import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzj {
    public static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector");
    public final dny b;

    static {
        cqw.q("googleapis.com", "adwords.google.com", "m.google.com", "sandbox.google.com");
        Pattern.compile("(?:[^\\/]*\\/)([^;]*)");
        Pattern.compile("([^\\?]+)(\\?+)");
        Pattern.compile("((?:https?:\\/\\/|)[a-zA-Z0-9-_\\.]+(?::\\d+)?)(.*)?");
        Pattern.compile("([a-zA-Z0-9-_]+)");
        Pattern.compile("\\b([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})(:\\d{1,5})?\\b");
    }

    public bzj(dny dnyVar) {
        this.b = dnyVar;
    }
}
