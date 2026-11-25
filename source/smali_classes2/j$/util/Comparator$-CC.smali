.class public final synthetic Lj$/util/Comparator$-CC;
.super Ljava/lang/Object;
.source "Comparator.java"


# direct methods
.method public static comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lj$/util/Comparator$$ExternalSyntheticLambda4;-><init>(Lj$/util/function/ToIntFunction;)V

    return-object v0
.end method

.method public static synthetic lambda$comparingInt$7b0bb60$1(Lj$/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 490
    invoke-interface {p0, p1}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p2}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Lj$/lang/DesugarInteger$$ExternalSyntheticBackport0;->m(II)I

    move-result p0

    return p0
.end method
