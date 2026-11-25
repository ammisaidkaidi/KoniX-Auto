.class public final Lvr;
.super Lvl;
.source "PG"


# instance fields
.field public f:I

.field final g:Lvq;

.field private h:[Lvs;

.field private i:[Lvs;


# direct methods
.method public constructor <init>(Lvm;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lvl;-><init>(Lvm;)V

    const/16 p1, 0x80

    new-array v0, p1, [Lvs;

    iput-object v0, p0, Lvr;->h:[Lvs;

    new-array p1, p1, [Lvs;

    iput-object p1, p0, Lvr;->i:[Lvs;

    const/4 p1, 0x0

    iput p1, p0, Lvr;->f:I

    new-instance p1, Lvq;

    invoke-direct {p1, p0}, Lvq;-><init>(Lvr;)V

    iput-object p1, p0, Lvr;->g:Lvq;

    return-void
.end method


# virtual methods
.method public final d(Lvn;Lvl;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lvl;->a:Lvs;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v1, Lvl;->e:Lvk;

    iget v4, v3, Lvk;->a:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    .line 3
    invoke-virtual {v3, v6}, Lvk;->d(I)Lvs;

    move-result-object v7

    .line 4
    invoke-virtual {v3, v6}, Lvk;->b(I)F

    move-result v8

    iget-object v9, v0, Lvr;->g:Lvq;

    iput-object v7, v9, Lvq;->a:Lvs;

    iget-object v10, v9, Lvq;->a:Lvs;

    .line 5
    iget-boolean v10, v10, Lvs;->b:Z

    const v11, 0x38d1b717    # 1.0E-4f

    const/16 v12, 0x9

    const/4 v13, 0x0

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_2

    iget-object v14, v9, Lvq;->a:Lvs;

    .line 11
    iget-object v14, v14, Lvs;->i:[F

    aget v15, v14, v10

    iget-object v5, v2, Lvs;->i:[F

    aget v5, v5, v10

    mul-float v5, v5, v8

    add-float/2addr v15, v5

    aput v15, v14, v10

    .line 12
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_1

    iget-object v5, v9, Lvq;->a:Lvs;

    .line 13
    iget-object v5, v5, Lvs;->i:[F

    aput v13, v5, v10

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_7

    iget-object v5, v9, Lvq;->b:Lvr;

    iget-object v7, v9, Lvq;->a:Lvs;

    .line 14
    invoke-virtual {v5, v7}, Lvr;->n(Lvs;)V

    goto :goto_5

    .line 15
    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_6

    iget-object v10, v2, Lvs;->i:[F

    .line 6
    aget v10, v10, v5

    cmpl-float v14, v10, v13

    if-eqz v14, :cond_5

    mul-float v10, v10, v8

    .line 7
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v14, v14, v11

    if-gez v14, :cond_4

    const/4 v10, 0x0

    :cond_4
    iget-object v14, v9, Lvq;->a:Lvs;

    .line 8
    iget-object v14, v14, Lvs;->i:[F

    aput v10, v14, v5

    goto :goto_4

    :cond_5
    iget-object v10, v9, Lvq;->a:Lvs;

    .line 9
    iget-object v10, v10, Lvs;->i:[F

    aput v13, v10, v5

    .line 8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {v0, v7}, Lvr;->m(Lvs;)V

    .line 14
    :cond_7
    :goto_5
    iget v5, v0, Lvr;->b:F

    .line 15
    iget v7, v1, Lvl;->b:F

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    iput v5, v0, Lvr;->b:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_8
    invoke-virtual {v0, v2}, Lvr;->n(Lvs;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lvr;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k([Z)Lvs;
    .locals 9

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    iget v3, p0, Lvr;->f:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lvr;->h:[Lvs;

    aget-object v4, v3, v1

    .line 2
    iget v5, v4, Lvs;->c:I

    aget-boolean v5, p1, v5

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_4

    :cond_1
    iget-object v5, p0, Lvr;->g:Lvq;

    iput-object v4, v5, Lvq;->a:Lvs;

    const/16 v4, 0x8

    if-ne v2, v0, :cond_3

    :goto_1
    if-ltz v4, :cond_0

    iget-object v3, v5, Lvq;->a:Lvs;

    .line 3
    iget-object v3, v3, Lvs;->i:[F

    aget v3, v3, v4

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-gtz v7, :cond_5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4
    :cond_3
    aget-object v3, v3, v2

    :goto_2
    if-ltz v4, :cond_5

    .line 5
    iget-object v6, v3, Lvs;->i:[F

    aget v6, v6, v4

    iget-object v7, v5, Lvq;->a:Lvs;

    .line 6
    iget-object v7, v7, Lvs;->i:[F

    aget v7, v7, v4

    cmpl-float v8, v7, v6

    if-nez v8, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    cmpg-float v3, v7, v6

    if-gez v3, :cond_5

    .line 2
    :goto_3
    move v2, v1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_6
    if-ne v2, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iget-object p1, p0, Lvr;->h:[Lvs;

    .line 7
    aget-object p1, p1, v2

    return-object p1
.end method

.method public final m(Lvs;)V
    .locals 5

    .line 1
    iget v0, p0, Lvr;->f:I

    iget-object v1, p0, Lvr;->h:[Lvs;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-le v0, v2, :cond_0

    add-int/2addr v2, v2

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvs;

    iput-object v0, p0, Lvr;->h:[Lvs;

    .line 3
    array-length v1, v0

    add-int/2addr v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvs;

    iput-object v0, p0, Lvr;->i:[Lvs;

    :cond_0
    iget-object v0, p0, Lvr;->h:[Lvs;

    iget v1, p0, Lvr;->f:I

    .line 4
    aput-object p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lvr;->f:I

    if-le v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 5
    aget-object v0, v0, v1

    iget v0, v0, Lvs;->c:I

    iget v1, p1, Lvs;->c:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lvr;->f:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lvr;->i:[Lvs;

    iget-object v4, p0, Lvr;->h:[Lvs;

    .line 6
    aget-object v4, v4, v1

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lvr;->i:[Lvs;

    new-instance v4, Lvp;

    invoke-direct {v4, v0}, Lvp;-><init>(I)V

    .line 7
    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_1
    iget v1, p0, Lvr;->f:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lvr;->h:[Lvs;

    iget-object v2, p0, Lvr;->i:[Lvs;

    .line 8
    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 9
    iput-boolean v3, p1, Lvs;->b:Z

    .line 10
    invoke-virtual {p1, p0}, Lvs;->a(Lvl;)V

    return-void
.end method

.method public final n(Lvs;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lvr;->f:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lvr;->h:[Lvs;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    iget v2, p0, Lvr;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lvr;->h:[Lvs;

    add-int/lit8 v3, v1, 0x1

    .line 2
    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    iput v2, p0, Lvr;->f:I

    .line 3
    iput-boolean v0, p1, Lvs;->b:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lvr;->b:F

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lvr;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lvr;->h:[Lvs;

    .line 2
    aget-object v2, v2, v1

    iget-object v3, p0, Lvr;->g:Lvq;

    iput-object v2, v3, Lvq;->a:Lvs;

    .line 3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
