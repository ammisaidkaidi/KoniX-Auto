.class public Lvl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Lvs;

.field public b:F

.field final c:Ljava/util/ArrayList;

.field d:Z

.field public e:Lvk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvl;->a:Lvs;

    const/4 v0, 0x0

    iput v0, p0, Lvl;->b:F

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvl;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvl;->d:Z

    return-void
.end method

.method public constructor <init>(Lvm;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvl;->a:Lvs;

    const/4 v0, 0x0

    iput v0, p0, Lvl;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvl;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvl;->d:Z

    new-instance v0, Lvk;

    invoke-direct {v0, p0, p1}, Lvk;-><init>(Lvl;Lvm;)V

    iput-object v0, p0, Lvl;->e:Lvk;

    return-void
.end method

.method public static final l(Lvs;)Z
    .locals 1

    .line 1
    iget p0, p0, Lvs;->l:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a([ZLvs;)Lvs;
    .locals 9

    .line 1
    iget-object v0, p0, Lvl;->e:Lvk;

    iget v0, v0, Lvk;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lvl;->e:Lvk;

    invoke-virtual {v5, v3}, Lvk;->b(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    iget-object v6, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {v6, v3}, Lvk;->d(I)Lvs;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 3
    iget v7, v6, Lvs;->c:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    .line 4
    iget v7, v6, Lvs;->n:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    goto :goto_1

    :cond_2
    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method final b(Lvs;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lvl;->a:Lvs;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lvl;->e:Lvk;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v3}, Lvk;->g(Lvs;F)V

    iget-object v0, p0, Lvl;->a:Lvs;

    .line 2
    iput v1, v0, Lvs;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lvl;->a:Lvs;

    :cond_0
    iget-object v0, p0, Lvl;->e:Lvk;

    .line 3
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lvk;->c(Lvs;Z)F

    move-result v0

    neg-float v0, v0

    iput-object p1, p0, Lvl;->a:Lvs;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lvl;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lvl;->b:F

    iget-object p1, p0, Lvl;->e:Lvk;

    iget v2, p1, Lvk;->f:I

    const/4 v3, 0x0

    :goto_0
    if-eq v2, v1, :cond_2

    iget v4, p1, Lvk;->a:I

    if-ge v3, v4, :cond_2

    iget-object v4, p1, Lvk;->e:[F

    .line 4
    aget v5, v4, v2

    div-float/2addr v5, v0

    aput v5, v4, v2

    iget-object v4, p1, Lvk;->d:[I

    .line 5
    aget v2, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Lvn;Lvs;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lvs;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvl;->e:Lvk;

    invoke-virtual {v0, p2}, Lvk;->a(Lvs;)F

    move-result v0

    iget v1, p0, Lvl;->b:F

    iget v2, p2, Lvs;->f:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lvl;->b:F

    iget-object v0, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {v0, p2, p3}, Lvk;->c(Lvs;Z)F

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p2, p0}, Lvs;->b(Lvl;)V

    :cond_1
    iget-object p2, p0, Lvl;->e:Lvk;

    iget p2, p2, Lvk;->a:I

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lvl;->d:Z

    iput-boolean p2, p1, Lvn;->c:Z

    :cond_2
    return-void

    .line 1
    :cond_3
    :goto_0
    return-void
.end method

.method public d(Lvn;Lvl;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvl;->e:Lvk;

    iget-object v1, p2, Lvl;->a:Lvs;

    .line 2
    invoke-virtual {v0, v1}, Lvk;->a(Lvs;)F

    move-result v1

    .line 3
    iget-object v2, p2, Lvl;->a:Lvs;

    .line 2
    invoke-virtual {v0, v2, p3}, Lvk;->c(Lvs;Z)F

    .line 4
    iget-object v2, p2, Lvl;->e:Lvk;

    iget v3, v2, Lvk;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 5
    invoke-virtual {v2, v4}, Lvk;->d(I)Lvs;

    move-result-object v5

    .line 6
    invoke-virtual {v2, v5}, Lvk;->a(Lvs;)F

    move-result v6

    mul-float v6, v6, v1

    .line 2
    invoke-virtual {v0, v5, v6, p3}, Lvk;->e(Lvs;FZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lvl;->b:F

    .line 7
    iget v2, p2, Lvl;->b:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lvl;->b:F

    if-eqz p3, :cond_1

    .line 8
    iget-object p2, p2, Lvl;->a:Lvs;

    invoke-virtual {p2, p0}, Lvs;->b(Lvl;)V

    :cond_1
    iget-object p2, p0, Lvl;->a:Lvs;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lvl;->e:Lvk;

    iget p2, p2, Lvk;->a:I

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lvl;->d:Z

    iput-boolean p2, p1, Lvn;->c:Z

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lvl;->a:Lvs;

    if-nez v0, :cond_0

    iget v0, p0, Lvl;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lvl;->e:Lvk;

    iget v0, v0, Lvk;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lvn;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvl;->e:Lvk;

    invoke-virtual {p1, p2}, Lvn;->p(I)Lvs;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lvk;->g(Lvs;F)V

    iget-object v0, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {p1, p2}, Lvn;->p(I)Lvs;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p2}, Lvk;->g(Lvs;F)V

    return-void
.end method

.method public final g(Lvs;Lvs;Lvs;Lvs;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvl;->e:Lvk;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {p1, p3, p5}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    neg-float p2, p5

    .line 4
    invoke-virtual {p1, p4, p2}, Lvk;->g(Lvs;F)V

    return-void
.end method

.method public final h(Lvs;Lvs;Lvs;I)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p4, :cond_2

    if-gez p4, :cond_0

    neg-int p4, p4

    const/4 v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    int-to-float p4, p4

    iput p4, p0, Lvl;->b:F

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p4, p0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p4, p1, v0}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 5
    invoke-virtual {p1, p2, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 6
    invoke-virtual {p1, p3, v1}, Lvk;->g(Lvs;F)V

    return-void

    .line 1
    :cond_2
    :goto_1
    iget-object p4, p0, Lvl;->e:Lvk;

    invoke-virtual {p4, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {p1, p2, v0}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {p1, p3, v0}, Lvk;->g(Lvs;F)V

    return-void
.end method

.method public final i(Lvs;Lvs;Lvs;I)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p4, :cond_2

    if-gez p4, :cond_0

    neg-int p4, p4

    const/4 v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    int-to-float p4, p4

    iput p4, p0, Lvl;->b:F

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p4, p0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p4, p1, v0}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 5
    invoke-virtual {p1, p2, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 6
    invoke-virtual {p1, p3, v0}, Lvk;->g(Lvs;F)V

    return-void

    .line 1
    :cond_2
    :goto_1
    iget-object p4, p0, Lvl;->e:Lvk;

    invoke-virtual {p4, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {p1, p2, v0}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {p1, p3, v1}, Lvk;->g(Lvs;F)V

    return-void
.end method

.method public final j(Lvs;Lvs;Lvs;Lvs;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvl;->e:Lvk;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p3, v1}, Lvk;->g(Lvs;F)V

    iget-object p3, p0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {p3, p4, v1}, Lvk;->g(Lvs;F)V

    iget-object p3, p0, Lvl;->e:Lvk;

    .line 3
    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Lvk;->g(Lvs;F)V

    iget-object p1, p0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p1, p2, p4}, Lvk;->g(Lvs;F)V

    neg-float p1, p5

    iput p1, p0, Lvl;->b:F

    return-void
.end method

.method public k([Z)Lvs;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvl;->a([ZLvs;)Lvs;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 2
    iget-object v0, p0, Lvl;->a:Lvs;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    .line 12
    :cond_0
    nop

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lvl;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lvl;->b:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0xf

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    iget-object v5, p0, Lvl;->e:Lvk;

    iget v5, v5, Lvk;->a:I

    :goto_2
    if-ge v2, v5, :cond_9

    iget-object v6, p0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {v6, v2}, Lvk;->d(I)Lvs;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v7, p0, Lvl;->e:Lvk;

    .line 5
    invoke-virtual {v7, v2}, Lvk;->b(I)F

    move-result v7

    cmpl-float v8, v7, v4

    if-nez v8, :cond_3

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-virtual {v6}, Lvs;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    cmpg-float v1, v7, v4

    if-gez v1, :cond_4

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    neg-float v7, v7

    goto :goto_3

    .line 11
    :cond_4
    goto :goto_3

    :cond_5
    cmpl-float v1, v7, v4

    if-lez v1, :cond_6

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    neg-float v7, v7

    .line 7
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_8

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    .line 11
    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_4
    const/4 v1, 0x1

    .line 4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 9
    :cond_9
    if-nez v1, :cond_a

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method
