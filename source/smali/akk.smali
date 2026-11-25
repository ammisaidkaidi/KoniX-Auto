.class public final Lakk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lagk;

.field public f:Lagk;

.field public g:J

.field public h:J

.field public i:J

.field public j:Lagh;

.field public k:I

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkSpec"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lakk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lakk;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lakk;->q:I

    sget-object v1, Lagk;->a:Lagk;

    iput-object v1, p0, Lakk;->e:Lagk;

    sget-object v1, Lagk;->a:Lagk;

    iput-object v1, p0, Lakk;->f:Lagk;

    .line 2
    sget-object v1, Lagh;->a:Lagh;

    iput-object v1, p0, Lakk;->j:Lagh;

    iput v0, p0, Lakk;->r:I

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lakk;->l:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lakk;->o:J

    iput v0, p0, Lakk;->s:I

    .line 3
    iget-object v0, p1, Lakk;->b:Ljava/lang/String;

    iput-object v0, p0, Lakk;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lakk;->c:Ljava/lang/String;

    iput-object v0, p0, Lakk;->c:Ljava/lang/String;

    .line 5
    iget v0, p1, Lakk;->q:I

    iput v0, p0, Lakk;->q:I

    .line 6
    iget-object v0, p1, Lakk;->d:Ljava/lang/String;

    iput-object v0, p0, Lakk;->d:Ljava/lang/String;

    new-instance v0, Lagk;

    .line 7
    iget-object v1, p1, Lakk;->e:Lagk;

    invoke-direct {v0, v1}, Lagk;-><init>(Lagk;)V

    iput-object v0, p0, Lakk;->e:Lagk;

    new-instance v0, Lagk;

    .line 8
    iget-object v1, p1, Lakk;->f:Lagk;

    invoke-direct {v0, v1}, Lagk;-><init>(Lagk;)V

    iput-object v0, p0, Lakk;->f:Lagk;

    .line 9
    iget-wide v0, p1, Lakk;->g:J

    iput-wide v0, p0, Lakk;->g:J

    .line 10
    iget-wide v0, p1, Lakk;->h:J

    iput-wide v0, p0, Lakk;->h:J

    .line 11
    iget-wide v0, p1, Lakk;->i:J

    iput-wide v0, p0, Lakk;->i:J

    new-instance v0, Lagh;

    .line 12
    iget-object v1, p1, Lakk;->j:Lagh;

    invoke-direct {v0, v1}, Lagh;-><init>(Lagh;)V

    iput-object v0, p0, Lakk;->j:Lagh;

    .line 13
    iget v0, p1, Lakk;->k:I

    iput v0, p0, Lakk;->k:I

    .line 14
    iget v0, p1, Lakk;->r:I

    iput v0, p0, Lakk;->r:I

    .line 15
    iget-wide v0, p1, Lakk;->l:J

    iput-wide v0, p0, Lakk;->l:J

    .line 16
    iget-wide v0, p1, Lakk;->m:J

    iput-wide v0, p0, Lakk;->m:J

    .line 17
    iget-wide v0, p1, Lakk;->n:J

    iput-wide v0, p0, Lakk;->n:J

    .line 18
    iget-wide v0, p1, Lakk;->o:J

    iput-wide v0, p0, Lakk;->o:J

    .line 19
    iget-boolean v0, p1, Lakk;->p:Z

    iput-boolean v0, p0, Lakk;->p:Z

    .line 20
    iget p1, p1, Lakk;->s:I

    iput p1, p0, Lakk;->s:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lakk;->q:I

    sget-object v1, Lagk;->a:Lagk;

    iput-object v1, p0, Lakk;->e:Lagk;

    sget-object v1, Lagk;->a:Lagk;

    iput-object v1, p0, Lakk;->f:Lagk;

    .line 22
    sget-object v1, Lagh;->a:Lagh;

    iput-object v1, p0, Lakk;->j:Lagh;

    iput v0, p0, Lakk;->r:I

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lakk;->l:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lakk;->o:J

    iput v0, p0, Lakk;->s:I

    iput-object p1, p0, Lakk;->b:Ljava/lang/String;

    iput-object p2, p0, Lakk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 11

    .line 2
    invoke-virtual {p0}, Lakk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lakk;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lakk;->l:J

    iget v2, p0, Lakk;->k:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lakk;->l:J

    long-to-float v0, v0

    iget v1, p0, Lakk;->k:I

    add-int/lit8 v1, v1, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 2
    :goto_0
    iget-wide v2, p0, Lakk;->m:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 1
    :cond_1
    invoke-virtual {p0}, Lakk;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lakk;->m:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    iget-wide v7, p0, Lakk;->g:J

    add-long/2addr v3, v7

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    iget-wide v7, p0, Lakk;->i:J

    iget-wide v9, p0, Lakk;->h:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_4

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    neg-long v1, v7

    :cond_3
    add-long/2addr v3, v9

    :goto_2
    add-long/2addr v3, v1

    return-wide v3

    :cond_4
    cmp-long v0, v5, v1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-wide v1, v9

    goto :goto_2

    :cond_6
    iget-wide v3, p0, Lakk;->m:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_7
    iget-wide v0, p0, Lakk;->g:J

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Lagh;->a:Lagh;

    iget-object v1, p0, Lakk;->j:Lagh;

    invoke-virtual {v0, v1}, Lagh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lakk;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lakk;->k:I

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 5

    iget-wide v0, p0, Lakk;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lakk;

    iget-wide v2, p0, Lakk;->g:J

    iget-wide v4, p1, Lakk;->g:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lakk;->h:J

    iget-wide v4, p1, Lakk;->h:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lakk;->i:J

    iget-wide v4, p1, Lakk;->i:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lakk;->k:I

    iget v3, p1, Lakk;->k:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lakk;->l:J

    iget-wide v4, p1, Lakk;->l:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lakk;->m:J

    iget-wide v4, p1, Lakk;->m:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Lakk;->n:J

    iget-wide v4, p1, Lakk;->n:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lakk;->o:J

    iget-wide v4, p1, Lakk;->o:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    :cond_9
    iget-boolean v2, p0, Lakk;->p:Z

    iget-boolean v3, p1, Lakk;->p:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lakk;->b:Ljava/lang/String;

    iget-object v3, p1, Lakk;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lakk;->q:I

    iget v3, p1, Lakk;->q:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lakk;->c:Ljava/lang/String;

    iget-object v3, p1, Lakk;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lakk;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lakk;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_0

    .line 7
    :cond_e
    iget-object v2, p1, Lakk;->d:Ljava/lang/String;

    if-eqz v2, :cond_10

    :cond_f
    return v1

    .line 4
    :cond_10
    :goto_0
    iget-object v2, p0, Lakk;->e:Lagk;

    iget-object v3, p1, Lakk;->e:Lagk;

    .line 5
    invoke-virtual {v2, v3}, Lagk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    iget-object v2, p0, Lakk;->f:Lagk;

    iget-object v3, p1, Lakk;->f:Lagk;

    .line 6
    invoke-virtual {v2, v3}, Lagk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    iget-object v2, p0, Lakk;->j:Lagh;

    iget-object v3, p1, Lakk;->j:Lagh;

    .line 7
    invoke-virtual {v2, v3}, Lagh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    :cond_13
    iget v2, p0, Lakk;->r:I

    iget v3, p1, Lakk;->r:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget v2, p0, Lakk;->s:I

    iget p1, p1, Lakk;->s:I

    if-ne v2, p1, :cond_15

    return v0

    :cond_15
    return v1

    .line 1
    :cond_16
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lakk;->q:I

    .line 2
    invoke-static {v1}, Lfv;->B(I)V

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lakk;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lakk;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lakk;->e:Lagk;

    .line 5
    invoke-virtual {v2}, Lagk;->hashCode()I

    move-result v2

    iget-object v3, p0, Lakk;->f:Lagk;

    .line 6
    invoke-virtual {v3}, Lagk;->hashCode()I

    move-result v3

    iget-wide v4, p0, Lakk;->g:J

    iget-wide v6, p0, Lakk;->h:J

    iget-wide v8, p0, Lakk;->i:J

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v6, v1

    xor-long/2addr v2, v6

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v8, v1

    xor-long/2addr v2, v8

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lakk;->j:Lagh;

    .line 7
    invoke-virtual {v2}, Lagh;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lakk;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lakk;->r:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lakk;->l:J

    iget-wide v6, p0, Lakk;->m:J

    iget-wide v8, p0, Lakk;->n:J

    iget-wide v10, p0, Lakk;->o:J

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v12, v4, v1

    xor-long/2addr v4, v12

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v6, v1

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v8, v1

    xor-long/2addr v4, v8

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v10, v1

    xor-long/2addr v1, v10

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lakk;->p:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lakk;->s:I

    if-eqz v1, :cond_1

    add-int/2addr v0, v1

    return v0

    .line 8
    :cond_1
    throw v3

    :cond_2
    nop

    .line 9
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
