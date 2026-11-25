.class public final Lwc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lwc;->a:[Z

    return-void
.end method

.method static a(Lvy;Lvn;Lvx;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    iput v0, p2, Lvx;->p:I

    .line 2
    iput v0, p2, Lvx;->q:I

    iget-object v0, p0, Lvy;->ap:[I

    .line 3
    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p2, Lvx;->ap:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p2, Lvx;->J:Lvw;

    iget v0, v0, Lvw;->f:I

    invoke-virtual {p0}, Lvx;->j()I

    move-result v1

    .line 5
    iget-object v4, p2, Lvx;->L:Lvw;

    iget v4, v4, Lvw;->f:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p2, Lvx;->J:Lvw;

    invoke-virtual {p1, v4}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v5

    iput-object v5, v4, Lvw;->h:Lvs;

    .line 7
    iget-object v4, p2, Lvx;->L:Lvw;

    invoke-virtual {p1, v4}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v5

    iput-object v5, v4, Lvw;->h:Lvs;

    .line 8
    iget-object v4, p2, Lvx;->J:Lvw;

    iget-object v4, v4, Lvw;->h:Lvs;

    invoke-virtual {p1, v4, v0}, Lvn;->f(Lvs;I)V

    .line 9
    iget-object v4, p2, Lvx;->L:Lvw;

    iget-object v4, v4, Lvw;->h:Lvs;

    invoke-virtual {p1, v4, v1}, Lvn;->f(Lvs;I)V

    .line 10
    iput v3, p2, Lvx;->p:I

    iput v0, p2, Lvx;->Y:I

    sub-int/2addr v1, v0

    iput v1, p2, Lvx;->U:I

    iget v0, p2, Lvx;->ab:I

    if-ge v1, v0, :cond_0

    iput v0, p2, Lvx;->U:I

    :cond_0
    iget-object v0, p0, Lvy;->ap:[I

    .line 11
    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    iget-object v0, p2, Lvx;->ap:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_3

    .line 12
    iget-object v0, p2, Lvx;->K:Lvw;

    iget v0, v0, Lvw;->f:I

    invoke-virtual {p0}, Lvx;->h()I

    move-result p0

    .line 13
    iget-object v1, p2, Lvx;->M:Lvw;

    iget v1, v1, Lvw;->f:I

    sub-int/2addr p0, v1

    .line 14
    iget-object v1, p2, Lvx;->K:Lvw;

    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v2

    iput-object v2, v1, Lvw;->h:Lvs;

    .line 15
    iget-object v1, p2, Lvx;->M:Lvw;

    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v2

    iput-object v2, v1, Lvw;->h:Lvs;

    .line 16
    iget-object v1, p2, Lvx;->K:Lvw;

    iget-object v1, v1, Lvw;->h:Lvs;

    invoke-virtual {p1, v1, v0}, Lvn;->f(Lvs;I)V

    .line 17
    iget-object v1, p2, Lvx;->M:Lvw;

    iget-object v1, v1, Lvw;->h:Lvs;

    invoke-virtual {p1, v1, p0}, Lvn;->f(Lvs;I)V

    .line 18
    iget v1, p2, Lvx;->aa:I

    if-gtz v1, :cond_1

    iget v1, p2, Lvx;->ag:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 19
    :cond_1
    iget-object v1, p2, Lvx;->N:Lvw;

    invoke-virtual {p1, v1}, Lvn;->b(Ljava/lang/Object;)Lvs;

    move-result-object v2

    iput-object v2, v1, Lvw;->h:Lvs;

    .line 20
    iget-object v1, p2, Lvx;->N:Lvw;

    iget-object v1, v1, Lvw;->h:Lvs;

    iget v2, p2, Lvx;->aa:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lvn;->f(Lvs;I)V

    :cond_2
    nop

    .line 21
    iput v3, p2, Lvx;->q:I

    iput v0, p2, Lvx;->Z:I

    sub-int/2addr p0, v0

    iput p0, p2, Lvx;->V:I

    iget p1, p2, Lvx;->ac:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lvx;->V:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
