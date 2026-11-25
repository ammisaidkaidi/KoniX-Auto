.class public interface abstract Lj$/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract filter(Lj$/util/function/IntPredicate;)Lj$/util/stream/IntStream;
.end method

.method public abstract mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;
.end method

.method public abstract noneMatch(Lj$/util/function/IntPredicate;)Z
.end method

.method public abstract sorted()Lj$/util/stream/IntStream;
.end method

.method public abstract toArray()[I
.end method
