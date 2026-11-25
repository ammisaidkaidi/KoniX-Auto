.class final Lcus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final synthetic a:Lcut;

.field private b:I


# direct methods
.method public constructor <init>(Lcut;)V
    .locals 0

    iput-object p1, p0, Lcus;->a:Lcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcus;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcus;->b:I

    iget-object v1, p0, Lcus;->a:Lcut;

    iget-object v1, v1, Lcut;->a:Lcuv;

    iget v1, v1, Lcuv;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcus;->a:Lcut;

    iget-object v0, v0, Lcut;->a:Lcuv;

    iget-object v1, v0, Lcuv;->a:[I

    iget v2, p0, Lcus;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcus;->b:I

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-virtual {v0, v1}, Lcuv;->d(I)Lctt;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
