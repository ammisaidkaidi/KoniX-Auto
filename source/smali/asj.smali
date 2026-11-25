.class public final Lasj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lask;


# instance fields
.field public a:[I

.field private final b:Landroid/view/View;

.field private c:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasj;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a([I[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lasj;->c:[I

    iput-object p2, p0, Lasj;->a:[I

    iget-object p1, p0, Lasj;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public final b(ILj$/util/function/Function;)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lasj;->c:[I

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_1

    .line 8
    :cond_0
    array-length v0, v0

    add-int/2addr p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p2, p0, Lasj;->c:[I

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget v1, p1, v0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 5
    array-length v2, p2

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1
    :goto_1
    iget-object p2, p0, Lasj;->a:[I

    if-eqz p2, :cond_2

    .line 6
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lasi;

    invoke-direct {p2, p0}, Lasi;-><init>(Lasj;)V

    .line 7
    invoke-interface {p1, p2}, Lj$/util/stream/IntStream;->filter(Lj$/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p1

    :cond_2
    return-object p1
.end method
