package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FloggerContextKeySet {
    public static final MetadataKey a = MetadataKey.c("cause", Throwable.class);
    public static final MetadataKey b = MetadataKey.c("ratelimit_count", Integer.class);
    public static final MetadataKey c = MetadataKey.c("ratelimit_period", LogSiteKeyImpl.class);
    public static final MetadataKey d = new GroupByMetadataKey(Object.class);
    public static final MetadataKey e = MetadataKey.c("forced", Boolean.class);
    public static final MetadataKey f = new TagsMetadataKey(SortedMetadataSnapshot.class);
    public static final MetadataKey g = MetadataKey.c("stack_size", LogStackSize.class);
}
