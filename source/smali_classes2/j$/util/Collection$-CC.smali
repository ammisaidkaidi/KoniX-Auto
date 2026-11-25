.class public abstract synthetic Lj$/util/Collection$-CC;
.super Ljava/lang/Object;
.source "Collection.java"


# direct methods
.method public static $default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    .line 725
    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static $default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    .line 744
    invoke-static {p0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
