.class public final Lwg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lvy;

.field private final c:Lwf;


# direct methods
.method public constructor <init>(Lvy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwg;->a:Ljava/util/ArrayList;

    new-instance v0, Lwf;

    invoke-direct {v0}, Lwf;-><init>()V

    iput-object v0, p0, Lwg;->c:Lwf;

    iput-object p1, p0, Lwg;->b:Lvy;

    return-void
.end method


# virtual methods
.method public final a(Lvy;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lvy;->aH:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lvy;->aH:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvx;

    .line 4
    invoke-virtual {v2}, Lvx;->N()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v2}, Lvx;->O()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lwg;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lvy;->c()V

    return-void
.end method

.method public final b(Lvy;III)V
    .locals 3

    .line 1
    iget v0, p1, Lvx;->ab:I

    iget v1, p1, Lvx;->ac:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lvx;->C(I)V

    .line 2
    invoke-virtual {p1, v2}, Lvx;->B(I)V

    .line 3
    invoke-virtual {p1, p3}, Lvx;->D(I)V

    .line 4
    invoke-virtual {p1, p4}, Lvx;->y(I)V

    .line 5
    invoke-virtual {p1, v0}, Lvx;->C(I)V

    .line 6
    invoke-virtual {p1, v1}, Lvx;->B(I)V

    iget-object p1, p0, Lwg;->b:Lvy;

    iput p2, p1, Lvy;->c:I

    .line 7
    invoke-virtual {p1}, Lwe;->T()V

    return-void
.end method

.method public final c(Lwz;Lvx;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lwg;->c:Lwf;

    invoke-virtual {p2}, Lvx;->N()I

    move-result v1

    iput v1, v0, Lwf;->i:I

    iget-object v0, p0, Lwg;->c:Lwf;

    .line 2
    invoke-virtual {p2}, Lvx;->O()I

    move-result v1

    iput v1, v0, Lwf;->j:I

    iget-object v0, p0, Lwg;->c:Lwf;

    .line 3
    invoke-virtual {p2}, Lvx;->j()I

    move-result v1

    iput v1, v0, Lwf;->a:I

    iget-object v0, p0, Lwg;->c:Lwf;

    .line 4
    invoke-virtual {p2}, Lvx;->h()I

    move-result v1

    iput v1, v0, Lwf;->b:I

    iget-object v0, p0, Lwg;->c:Lwf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwf;->g:Z

    iput p3, v0, Lwf;->h:I

    iget p3, v0, Lwf;->i:I

    iget v2, v0, Lwf;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne p3, v4, :cond_0

    .line 5
    iget p3, p2, Lvx;->W:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    if-ne v2, v4, :cond_1

    .line 6
    iget v2, p2, Lvx;->W:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_1
    const/4 v3, 0x4

    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p2, Lvx;->u:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_2

    iput v5, v0, Lwf;->i:I

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    iget-object p3, p2, Lvx;->u:[I

    aget p3, p3, v5

    if-ne p3, v3, :cond_3

    iput v5, v0, Lwf;->j:I

    .line 9
    :cond_3
    invoke-virtual {p1, p2, v0}, Lwz;->a(Lvx;Lwf;)V

    iget-object p1, p0, Lwg;->c:Lwf;

    iget p1, p1, Lwf;->c:I

    .line 10
    invoke-virtual {p2, p1}, Lvx;->D(I)V

    iget-object p1, p0, Lwg;->c:Lwf;

    iget p1, p1, Lwf;->d:I

    .line 11
    invoke-virtual {p2, p1}, Lvx;->y(I)V

    iget-object p1, p0, Lwg;->c:Lwf;

    iget-boolean p3, p1, Lwf;->f:Z

    iput-boolean p3, p2, Lvx;->F:Z

    iget p1, p1, Lwf;->e:I

    .line 12
    invoke-virtual {p2, p1}, Lvx;->v(I)V

    iget-object p1, p0, Lwg;->c:Lwf;

    iput v1, p1, Lwf;->h:I

    iget-boolean p1, p1, Lwf;->g:Z

    return p1
.end method
