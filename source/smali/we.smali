.class public Lwe;
.super Lvx;
.source "PG"


# instance fields
.field public aH:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvx;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwe;->aH:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwe;->aH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lwe;->aH:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 3
    instance-of v3, v2, Lwe;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lwe;

    invoke-virtual {v2}, Lwe;->T()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final Y(Lvx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lvx;->s()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Lvx;->s()V

    return-void
.end method

.method public final u(Lvm;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lvx;->u(Lvm;)V

    iget-object v0, p0, Lwe;->aH:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lwe;->aH:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 4
    invoke-virtual {v2, p1}, Lvx;->u(Lvm;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
