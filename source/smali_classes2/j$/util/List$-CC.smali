.class public abstract synthetic Lj$/util/List$-CC;
.super Ljava/lang/Object;
.source "List.java"


# direct methods
.method public static $default$spliterator(Ljava/util/List;)Lj$/util/Spliterator;
    .locals 1

    .line 773
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Lj$/util/AbstractList$RandomAccessSpliterator;

    invoke-direct {v0, p0}, Lj$/util/AbstractList$RandomAccessSpliterator;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 776
    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
