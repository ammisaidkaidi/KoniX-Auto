.class abstract Lj$/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# direct methods
.method static makeInt(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/IntStream;
    .locals 1

    .line 73
    new-instance v0, Lj$/util/stream/SortedOps$OfInt;

    invoke-direct {v0, p0}, Lj$/util/stream/SortedOps$OfInt;-><init>(Lj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method
