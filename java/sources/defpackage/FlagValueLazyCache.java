package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FlagValueLazyCache {
    public final Object a = new Object();
    public volatile Map b;
    public StopwatchTicker c;

    public FlagValueLazyCache(StopwatchTicker colVar) {
        this.c = colVar;
    }
}
