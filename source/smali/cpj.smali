.class final Lcpj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcpk;


# direct methods
.method public constructor <init>(Lcpk;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcpj;->d:Lcpk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcpk;->b:I

    iput v0, p0, Lcpj;->a:I

    invoke-virtual {p1}, Lcpk;->a()I

    move-result p1

    iput p1, p0, Lcpj;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcpj;->c:I

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcpj;->d:Lcpk;

    iget v0, v0, Lcpk;->b:I

    iget v1, p0, Lcpj;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcpj;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcpj;->a()V

    invoke-virtual {p0}, Lcpj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcpj;->b:I

    iput v0, p0, Lcpj;->c:I

    iget-object v1, p0, Lcpj;->d:Lcpk;

    .line 3
    invoke-virtual {v1, v0}, Lcpk;->d(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcpj;->d:Lcpk;

    iget v2, p0, Lcpj;->b:I

    invoke-virtual {v1, v2}, Lcpk;->b(I)I

    move-result v1

    iput v1, p0, Lcpj;->b:I

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcpj;->a()V

    iget v0, p0, Lcpj;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lez;->B(Z)V

    iget v0, p0, Lcpj;->a:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcpj;->a:I

    iget-object v0, p0, Lcpj;->d:Lcpk;

    iget v1, p0, Lcpj;->c:I

    .line 3
    invoke-virtual {v0, v1}, Lcpk;->d(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcpk;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcpj;->b:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcpj;->b:I

    iput v1, p0, Lcpj;->c:I

    return-void
.end method
