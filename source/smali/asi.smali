.class public final synthetic Lasi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lasj;


# direct methods
.method public synthetic constructor <init>(Lasj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasi;->a:Lasj;

    return-void
.end method


# virtual methods
.method public final synthetic and(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$and(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Lj$/util/function/IntPredicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/IntPredicate$-CC;->$default$negate(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic or(Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$or(Lj$/util/function/IntPredicate;Lj$/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lasi;->a:Lasj;

    iget-object v0, v0, Lasj;->a:[I

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lash;

    invoke-direct {v1, p1}, Lash;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->noneMatch(Lj$/util/function/IntPredicate;)Z

    move-result p1

    return p1
.end method
