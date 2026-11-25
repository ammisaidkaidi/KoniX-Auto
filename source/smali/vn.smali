.class public final Lvn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z

.field public static b:J

.field private static k:I


# instance fields
.field public c:Z

.field d:I

.field e:[Lvl;

.field public f:Z

.field public g:Z

.field h:I

.field i:I

.field public final j:Lvm;

.field private l:I

.field private m:I

.field private n:[Z

.field private o:I

.field private p:[Lvs;

.field private q:I

.field private final r:Lvl;

.field private s:Lvl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lvn;->a:Z

    const/16 v0, 0x3e8

    sput v0, Lvn;->k:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lvn;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvn;->c:Z

    iput v0, p0, Lvn;->d:I

    const/16 v1, 0x20

    iput v1, p0, Lvn;->l:I

    iput v1, p0, Lvn;->m:I

    const/4 v2, 0x0

    iput-object v2, p0, Lvn;->e:[Lvl;

    iput-boolean v0, p0, Lvn;->f:Z

    iput-boolean v0, p0, Lvn;->g:Z

    new-array v2, v1, [Z

    iput-object v2, p0, Lvn;->n:[Z

    const/4 v2, 0x1

    iput v2, p0, Lvn;->h:I

    iput v0, p0, Lvn;->i:I

    iput v1, p0, Lvn;->o:I

    sget v2, Lvn;->k:I

    new-array v2, v2, [Lvs;

    iput-object v2, p0, Lvn;->p:[Lvs;

    iput v0, p0, Lvn;->q:I

    .line 2
    new-array v0, v1, [Lvl;

    iput-object v0, p0, Lvn;->e:[Lvl;

    .line 3
    invoke-direct {p0}, Lvn;->t()V

    new-instance v0, Lvm;

    invoke-direct {v0}, Lvm;-><init>()V

    iput-object v0, p0, Lvn;->j:Lvm;

    new-instance v1, Lvr;

    .line 4
    invoke-direct {v1, v0}, Lvr;-><init>(Lvm;)V

    iput-object v1, p0, Lvn;->r:Lvl;

    new-instance v1, Lvl;

    .line 5
    invoke-direct {v1, v0}, Lvl;-><init>(Lvm;)V

    iput-object v1, p0, Lvn;->s:Lvl;

    return-void
.end method

.method public static final o(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lvw;

    iget-object p0, p0, Lvw;->h:Lvs;

    if-eqz p0, :cond_0

    iget p0, p0, Lvs;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final q(Lvl;)V
    .locals 7

    .line 4
    iget-boolean v0, p1, Lvl;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvl;->a:Lvs;

    iget p1, p1, Lvl;->b:F

    invoke-virtual {v0, p0, p1}, Lvs;->d(Lvn;F)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lvn;->e:[Lvl;

    iget v1, p0, Lvn;->i:I

    .line 1
    aput-object p1, v0, v1

    iget-object v0, p1, Lvl;->a:Lvs;

    .line 2
    iput v1, v0, Lvs;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lvn;->i:I

    .line 3
    invoke-virtual {v0, p0, p1}, Lvs;->e(Lvn;Lvl;)V

    .line 4
    :goto_0
    iget-boolean p1, p0, Lvn;->c:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lvn;->i:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 5
    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 7
    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lvl;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lvl;->a:Lvs;

    iget v3, v1, Lvl;->b:F

    .line 8
    invoke-virtual {v2, p0, v3}, Lvs;->d(Lvn;F)V

    iget-object v2, p0, Lvn;->j:Lvm;

    .line 9
    iget-object v2, v2, Lvm;->b:Lvo;

    invoke-virtual {v2, v1}, Lvo;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 10
    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lvn;->i:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lvn;->e:[Lvl;

    add-int/lit8 v4, v1, -0x1

    .line 11
    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 12
    iget-object v3, v5, Lvl;->a:Lvs;

    iget v5, v3, Lvs;->d:I

    if-ne v5, v1, :cond_2

    .line 13
    iput v4, v3, Lvs;->d:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 14
    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lvn;->i:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lvn;->c:Z

    :cond_7
    return-void
.end method

.method private final r()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lvn;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lvn;->e:[Lvl;

    aget-object v1, v1, v0

    .line 2
    iget-object v2, v1, Lvl;->a:Lvs;

    iget v1, v1, Lvl;->b:F

    iput v1, v2, Lvs;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final s()V
    .locals 3

    .line 1
    iget v0, p0, Lvn;->l:I

    add-int/2addr v0, v0

    iput v0, p0, Lvn;->l:I

    iget-object v1, p0, Lvn;->e:[Lvl;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvl;

    iput-object v0, p0, Lvn;->e:[Lvl;

    iget-object v0, p0, Lvn;->j:Lvm;

    .line 2
    iget-object v1, v0, Lvm;->a:[Lvs;

    iget v2, p0, Lvn;->l:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvs;

    iput-object v1, v0, Lvm;->a:[Lvs;

    iget v0, p0, Lvn;->l:I

    .line 3
    new-array v1, v0, [Z

    iput-object v1, p0, Lvn;->n:[Z

    iput v0, p0, Lvn;->m:I

    iput v0, p0, Lvn;->o:I

    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lvn;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lvn;->e:[Lvl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lvn;->j:Lvm;

    .line 2
    iget-object v2, v2, Lvm;->b:Lvo;

    invoke-virtual {v2, v1}, Lvo;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lvn;->e:[Lvl;

    const/4 v2, 0x0

    .line 3
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final u(Lvl;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lvn;->h:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lvn;->n:[Z

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-nez v3, :cond_d

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Lvn;->h:I

    add-int/2addr v6, v6

    if-ge v4, v6, :cond_d

    iget-object v6, v1, Lvl;->a:Lvs;

    if-eqz v6, :cond_1

    iget-object v7, v0, Lvn;->n:[Z

    iget v6, v6, Lvs;->c:I

    .line 2
    aput-boolean v5, v7, v6

    :cond_1
    iget-object v6, v0, Lvn;->n:[Z

    .line 3
    invoke-virtual {v1, v6}, Lvl;->k([Z)Lvs;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v0, Lvn;->n:[Z

    iget v8, v6, Lvs;->c:I

    .line 4
    aget-boolean v9, v7, v8

    if-eqz v9, :cond_2

    return-void

    .line 5
    :cond_2
    aput-boolean v5, v7, v8

    :cond_3
    if-eqz v6, :cond_b

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_2
    iget v11, v0, Lvn;->i:I

    if-ge v9, v11, :cond_a

    iget-object v11, v0, Lvn;->e:[Lvl;

    .line 6
    aget-object v11, v11, v9

    .line 7
    iget-object v12, v11, Lvl;->a:Lvs;

    .line 8
    iget v12, v12, Lvs;->n:I

    if-ne v12, v5, :cond_4

    goto :goto_5

    .line 9
    :cond_4
    iget-boolean v12, v11, Lvl;->d:Z

    if-eqz v12, :cond_5

    :goto_3
    goto :goto_5

    :cond_5
    iget-object v12, v11, Lvl;->e:Lvk;

    iget v13, v12, Lvk;->f:I

    if-ne v13, v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_4
    if-eq v13, v8, :cond_9

    iget v15, v12, Lvk;->a:I

    if-ge v14, v15, :cond_9

    iget-object v15, v12, Lvk;->c:[I

    .line 10
    aget v15, v15, v13

    iget v2, v6, Lvs;->c:I

    if-ne v15, v2, :cond_8

    .line 12
    iget-object v2, v11, Lvl;->e:Lvk;

    invoke-virtual {v2, v6}, Lvk;->a(Lvs;)F

    move-result v2

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-gez v12, :cond_7

    .line 13
    iget v11, v11, Lvl;->b:F

    neg-float v11, v11

    div-float/2addr v11, v2

    cmpg-float v2, v11, v7

    if-gez v2, :cond_7

    move v10, v9

    move v7, v11

    goto :goto_5

    :cond_7
    goto :goto_5

    :cond_8
    iget-object v2, v12, Lvk;->d:[I

    .line 11
    aget v13, v2, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    nop

    .line 8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 11
    :cond_a
    if-ltz v10, :cond_c

    iget-object v2, v0, Lvn;->e:[Lvl;

    .line 14
    aget-object v2, v2, v10

    .line 15
    iget-object v5, v2, Lvl;->a:Lvs;

    iput v8, v5, Lvs;->d:I

    .line 16
    invoke-virtual {v2, v6}, Lvl;->b(Lvs;)V

    .line 17
    iget-object v5, v2, Lvl;->a:Lvs;

    iput v10, v5, Lvs;->d:I

    .line 18
    invoke-virtual {v5, v0, v2}, Lvs;->e(Lvn;Lvl;)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    :cond_c
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private final v(I)Lvs;
    .locals 3

    .line 1
    iget-object v0, p0, Lvn;->j:Lvm;

    iget-object v0, v0, Lvm;->c:Lvo;

    invoke-virtual {v0}, Lvo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    if-nez v0, :cond_0

    new-instance v0, Lvs;

    .line 2
    invoke-direct {v0, p1}, Lvs;-><init>(I)V

    iput p1, v0, Lvs;->n:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lvs;->c()V

    iput p1, v0, Lvs;->n:I

    .line 2
    :goto_0
    iget p1, p0, Lvn;->q:I

    sget v1, Lvn;->k:I

    if-lt p1, v1, :cond_1

    add-int/2addr v1, v1

    sput v1, Lvn;->k:I

    iget-object p1, p0, Lvn;->p:[Lvs;

    .line 4
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lvs;

    iput-object p1, p0, Lvn;->p:[Lvs;

    :cond_1
    iget-object p1, p0, Lvn;->p:[Lvs;

    iget v1, p0, Lvn;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvn;->q:I

    .line 5
    aput-object v0, p1, v1

    return-object v0
.end method


# virtual methods
.method public final a()Lvl;
    .locals 5

    .line 1
    iget-object v0, p0, Lvn;->j:Lvm;

    iget-object v0, v0, Lvm;->b:Lvo;

    invoke-virtual {v0}, Lvo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvl;

    if-nez v0, :cond_0

    new-instance v0, Lvl;

    iget-object v1, p0, Lvn;->j:Lvm;

    .line 2
    invoke-direct {v0, v1}, Lvl;-><init>(Lvm;)V

    sget-wide v1, Lvn;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lvn;->b:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lvl;->a:Lvs;

    iget-object v1, v0, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {v1}, Lvk;->f()V

    const/4 v1, 0x0

    iput v1, v0, Lvl;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lvl;->d:Z

    .line 2
    :goto_0
    sget v1, Lvs;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lvs;->a:I

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lvs;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lvn;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lvn;->m:I

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lvn;->s()V

    :cond_1
    check-cast p1, Lvw;

    iget-object v0, p1, Lvw;->h:Lvs;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lvw;->i()V

    iget-object v0, p1, Lvw;->h:Lvs;

    goto :goto_0

    .line 7
    :cond_2
    nop

    .line 3
    :goto_0
    iget p1, v0, Lvs;->c:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    iget v3, p0, Lvn;->d:I

    if-gt p1, v3, :cond_3

    iget-object v3, p0, Lvn;->j:Lvm;

    iget-object v3, v3, Lvm;->a:[Lvs;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v2, :cond_4

    .line 4
    invoke-virtual {v0}, Lvs;->c()V

    :cond_4
    iget p1, p0, Lvn;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lvn;->d:I

    iget v2, p0, Lvn;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lvn;->h:I

    .line 5
    iput p1, v0, Lvs;->c:I

    .line 6
    iput v1, v0, Lvs;->n:I

    iget-object v1, p0, Lvn;->j:Lvm;

    .line 7
    iget-object v1, v1, Lvm;->a:[Lvs;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public final c()Lvs;
    .locals 3

    .line 1
    iget v0, p0, Lvn;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lvn;->m:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lvn;->s()V

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lvn;->v(I)Lvs;

    move-result-object v0

    iget v1, p0, Lvn;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lvn;->d:I

    iget v2, p0, Lvn;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lvn;->h:I

    iput v1, v0, Lvs;->c:I

    iget-object v2, p0, Lvn;->j:Lvm;

    .line 3
    iget-object v2, v2, Lvm;->a:[Lvs;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final d(Lvs;Lvs;IFLvs;Lvs;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Lvl;->e:Lvk;

    .line 2
    invoke-virtual {p3, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {p1, p6, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    const/high16 p3, -0x40000000    # -2.0f

    .line 4
    invoke-virtual {p1, p2, p3}, Lvk;->g(Lvs;F)V

    goto/16 :goto_0

    .line 18
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    iget-object p4, v0, Lvl;->e:Lvk;

    .line 5
    invoke-virtual {p4, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 6
    invoke-virtual {p1, p2, v3}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 7
    invoke-virtual {p1, p5, v3}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 8
    invoke-virtual {p1, p6, v1}, Lvk;->g(Lvs;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Lvl;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lvl;->e:Lvk;

    .line 9
    invoke-virtual {p4, p1, v3}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 10
    invoke-virtual {p1, p2, v1}, Lvk;->g(Lvs;F)V

    int-to-float p1, p3

    iput p1, v0, Lvl;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 11
    invoke-virtual {p1, p6, v3}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 12
    invoke-virtual {p1, p5, v1}, Lvk;->g(Lvs;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Lvl;->b:F

    goto :goto_0

    :cond_4
    sub-float/2addr v1, p4

    iget-object v2, v0, Lvl;->e:Lvk;

    .line 13
    invoke-virtual {v2, p1, v1}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    neg-float v2, v1

    .line 14
    invoke-virtual {p1, p2, v2}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    neg-float p2, p4

    .line 15
    invoke-virtual {p1, p5, p2}, Lvk;->g(Lvs;F)V

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 16
    invoke-virtual {p1, p6, p4}, Lvk;->g(Lvs;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v1

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    iput p1, v0, Lvl;->b:F

    .line 4
    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 17
    invoke-virtual {v0, p0, p8}, Lvl;->f(Lvn;I)V

    .line 18
    :cond_7
    invoke-virtual {p0, v0}, Lvn;->e(Lvl;)V

    return-void
.end method

.method public final e(Lvl;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lvn;->i:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lvn;->o:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Lvn;->h:I

    add-int/2addr v2, v3

    iget v4, v0, Lvn;->m:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lvn;->s()V

    :cond_1
    iget-boolean v2, v1, Lvl;->d:Z

    if-nez v2, :cond_1f

    iget-object v2, v0, Lvn;->e:[Lvl;

    .line 2
    array-length v2, v2

    const/4 v4, -0x1

    if-nez v2, :cond_2

    goto :goto_5

    .line 25
    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    iget-object v6, v1, Lvl;->e:Lvk;

    iget v6, v6, Lvk;->a:I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    iget-object v8, v1, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {v8, v7}, Lvk;->d(I)Lvs;

    move-result-object v8

    .line 4
    iget v9, v8, Lvs;->d:I

    if-ne v9, v4, :cond_3

    iget-boolean v9, v8, Lvs;->g:Z

    if-nez v9, :cond_3

    iget-boolean v8, v8, Lvs;->m:Z

    goto :goto_2

    :cond_3
    iget-object v9, v1, Lvl;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5
    :cond_4
    iget-object v6, v1, Lvl;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    iget-object v8, v1, Lvl;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvs;

    .line 8
    iget-boolean v9, v8, Lvs;->g:Z

    if-eqz v9, :cond_5

    .line 9
    invoke-virtual {v1, v0, v8, v3}, Lvl;->c(Lvn;Lvs;Z)V

    goto :goto_4

    .line 10
    :cond_5
    iget-boolean v9, v8, Lvs;->m:Z

    iget-object v9, v0, Lvn;->e:[Lvl;

    .line 11
    iget v8, v8, Lvs;->d:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v0, v8, v3}, Lvl;->d(Lvn;Lvl;Z)V

    .line 9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 11
    :cond_6
    iget-object v6, v1, Lvl;->c:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    iget-object v2, v1, Lvl;->a:Lvs;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lvl;->e:Lvk;

    iget v2, v2, Lvk;->a:I

    if-nez v2, :cond_9

    iput-boolean v3, v1, Lvl;->d:Z

    iput-boolean v3, v0, Lvn;->c:Z

    .line 13
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lvl;->e()Z

    move-result v2

    if-nez v2, :cond_1e

    iget v2, v1, Lvl;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_a

    neg-float v2, v2

    iput v2, v1, Lvl;->b:F

    iget-object v2, v1, Lvl;->e:Lvk;

    iget v7, v2, Lvk;->f:I

    const/4 v8, 0x0

    :goto_6
    if-eq v7, v4, :cond_a

    iget v9, v2, Lvk;->a:I

    if-ge v8, v9, :cond_a

    iget-object v9, v2, Lvk;->e:[F

    .line 14
    aget v10, v9, v7

    neg-float v10, v10

    aput v10, v9, v7

    iget-object v9, v2, Lvk;->d:[I

    .line 15
    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    iget-object v2, v1, Lvl;->e:Lvk;

    iget v2, v2, Lvk;->a:I

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v8, v2, :cond_12

    iget-object v15, v1, Lvl;->e:Lvk;

    .line 16
    invoke-virtual {v15, v8}, Lvk;->b(I)F

    move-result v15

    iget-object v5, v1, Lvl;->e:Lvk;

    .line 17
    invoke-virtual {v5, v8}, Lvk;->d(I)Lvs;

    move-result-object v5

    .line 18
    iget v4, v5, Lvs;->n:I

    if-ne v4, v3, :cond_e

    if-nez v9, :cond_b

    .line 19
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v14

    move-object v9, v5

    move v11, v15

    goto :goto_8

    :cond_b
    cmpl-float v4, v11, v15

    if-lez v4, :cond_c

    .line 20
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v14

    move-object v9, v5

    move v11, v15

    goto :goto_8

    :cond_c
    if-nez v14, :cond_d

    .line 21
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v9, v5

    move v11, v15

    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    goto :goto_8

    :cond_e
    if-nez v9, :cond_11

    cmpg-float v4, v15, v6

    if-gez v4, :cond_11

    if-nez v10, :cond_f

    .line 22
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v13

    move-object v10, v5

    move v12, v15

    goto :goto_8

    :cond_f
    cmpl-float v4, v12, v15

    if-lez v4, :cond_10

    .line 23
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v13

    move-object v10, v5

    move v12, v15

    goto :goto_8

    :cond_10
    if-nez v13, :cond_11

    .line 24
    invoke-static {v5}, Lvl;->l(Lvs;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v10, v5

    move v12, v15

    const/4 v13, 0x1

    goto :goto_8

    :cond_11
    nop

    .line 19
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v4, -0x1

    goto :goto_7

    .line 24
    :cond_12
    if-eqz v9, :cond_13

    goto :goto_9

    :cond_13
    move-object v9, v10

    :goto_9
    if-nez v9, :cond_14

    const/4 v2, 0x1

    goto :goto_a

    .line 25
    :cond_14
    invoke-virtual {v1, v9}, Lvl;->b(Lvs;)V

    const/4 v2, 0x0

    .line 24
    :goto_a
    iget-object v4, v1, Lvl;->e:Lvk;

    iget v4, v4, Lvk;->a:I

    if-nez v4, :cond_15

    iput-boolean v3, v1, Lvl;->d:Z

    :cond_15
    if-eqz v2, :cond_1b

    iget v2, v0, Lvn;->h:I

    add-int/2addr v2, v3

    iget v4, v0, Lvn;->m:I

    if-lt v2, v4, :cond_16

    .line 26
    invoke-direct/range {p0 .. p0}, Lvn;->s()V

    :cond_16
    const/4 v2, 0x3

    .line 27
    invoke-direct {v0, v2}, Lvn;->v(I)Lvs;

    move-result-object v2

    iget v4, v0, Lvn;->d:I

    add-int/2addr v4, v3

    iput v4, v0, Lvn;->d:I

    iget v5, v0, Lvn;->h:I

    add-int/2addr v5, v3

    iput v5, v0, Lvn;->h:I

    iput v4, v2, Lvs;->c:I

    iget-object v5, v0, Lvn;->j:Lvm;

    .line 28
    iget-object v5, v5, Lvm;->a:[Lvs;

    aput-object v2, v5, v4

    iput-object v2, v1, Lvl;->a:Lvs;

    iget v4, v0, Lvn;->i:I

    .line 29
    invoke-direct/range {p0 .. p1}, Lvn;->q(Lvl;)V

    iget v5, v0, Lvn;->i:I

    add-int/2addr v4, v3

    if-ne v5, v4, :cond_1b

    iget-object v4, v0, Lvn;->s:Lvl;

    iput-object v7, v4, Lvl;->a:Lvs;

    iget-object v5, v4, Lvl;->e:Lvk;

    .line 30
    invoke-virtual {v5}, Lvk;->f()V

    const/4 v5, 0x0

    :goto_b
    iget-object v8, v1, Lvl;->e:Lvk;

    iget v9, v8, Lvk;->a:I

    if-ge v5, v9, :cond_17

    .line 31
    invoke-virtual {v8, v5}, Lvk;->d(I)Lvs;

    move-result-object v8

    iget-object v9, v1, Lvl;->e:Lvk;

    .line 32
    invoke-virtual {v9, v5}, Lvk;->b(I)F

    move-result v9

    iget-object v10, v4, Lvl;->e:Lvk;

    .line 33
    invoke-virtual {v10, v8, v9, v3}, Lvk;->e(Lvs;FZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_17
    iget-object v4, v0, Lvn;->s:Lvl;

    .line 34
    invoke-direct {v0, v4}, Lvn;->u(Lvl;)V

    iget v4, v2, Lvs;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    iget-object v4, v1, Lvl;->a:Lvs;

    if-ne v4, v2, :cond_18

    .line 35
    invoke-virtual {v1, v7, v2}, Lvl;->a([ZLvs;)Lvs;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 36
    invoke-virtual {v1, v2}, Lvl;->b(Lvs;)V

    :cond_18
    iget-boolean v2, v1, Lvl;->d:Z

    if-nez v2, :cond_19

    iget-object v2, v1, Lvl;->a:Lvs;

    .line 37
    invoke-virtual {v2, v0, v1}, Lvs;->e(Lvn;Lvl;)V

    :cond_19
    iget-object v2, v0, Lvn;->j:Lvm;

    .line 38
    iget-object v2, v2, Lvm;->b:Lvo;

    invoke-virtual {v2, v1}, Lvo;->b(Ljava/lang/Object;)V

    iget v2, v0, Lvn;->i:I

    const/4 v4, -0x1

    add-int/2addr v2, v4

    iput v2, v0, Lvn;->i:I

    const/4 v5, 0x1

    goto :goto_c

    .line 39
    :cond_1a
    const/4 v5, 0x1

    goto :goto_c

    :cond_1b
    const/4 v5, 0x0

    .line 38
    :goto_c
    iget-object v2, v1, Lvl;->a:Lvs;

    if-eqz v2, :cond_1d

    iget v2, v2, Lvs;->n:I

    if-eq v2, v3, :cond_1c

    iget v2, v1, Lvl;->b:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1d

    :cond_1c
    if-nez v5, :cond_1d

    goto :goto_d

    .line 39
    :cond_1d
    return-void

    .line 25
    :cond_1e
    return-void

    .line 39
    :cond_1f
    :goto_d
    invoke-direct/range {p0 .. p1}, Lvn;->q(Lvl;)V

    return-void
.end method

.method public final f(Lvs;I)V
    .locals 3

    .line 1
    iget v0, p1, Lvs;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    .line 15
    invoke-virtual {p1, p0, p2}, Lvs;->d(Lvn;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lvn;->d:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lvn;->j:Lvm;

    .line 16
    iget-object p2, p2, Lvm;->a:[Lvs;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 2
    aget-object v0, v1, v0

    .line 3
    iget-boolean v1, v0, Lvl;->d:Z

    if-eqz v1, :cond_2

    int-to-float p1, p2

    .line 4
    iput p1, v0, Lvl;->b:F

    return-void

    .line 5
    :cond_2
    iget-object v1, v0, Lvl;->e:Lvk;

    iget v1, v1, Lvk;->a:I

    if-nez v1, :cond_3

    .line 6
    iput-boolean v2, v0, Lvl;->d:Z

    int-to-float p1, p2

    .line 7
    iput p1, v0, Lvl;->b:F

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v0

    if-gez p2, :cond_4

    neg-int p2, p2

    int-to-float p2, p2

    iput p2, v0, Lvl;->b:F

    iget-object p2, v0, Lvl;->e:Lvk;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p2, p1, v1}, Lvk;->g(Lvs;F)V

    goto :goto_1

    .line 11
    :cond_4
    int-to-float p2, p2

    iput p2, v0, Lvl;->b:F

    iget-object p2, v0, Lvl;->e:Lvk;

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    invoke-virtual {p2, p1, v1}, Lvk;->g(Lvs;F)V

    .line 11
    :goto_1
    invoke-virtual {p0, v0}, Lvn;->e(Lvl;)V

    return-void

    .line 12
    :cond_5
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v0

    iput-object p1, v0, Lvl;->a:Lvs;

    int-to-float p2, p2

    .line 13
    iput p2, p1, Lvs;->f:F

    iput p2, v0, Lvl;->b:F

    iput-boolean v2, v0, Lvl;->d:Z

    .line 14
    invoke-virtual {p0, v0}, Lvn;->e(Lvl;)V

    return-void
.end method

.method public final g(Lvs;Lvs;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lvn;->c()Lvs;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lvs;->e:I

    .line 3
    invoke-virtual {v0, p1, p2, v1, p3}, Lvl;->h(Lvs;Lvs;Lvs;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p1, v1}, Lvk;->a(Lvs;)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, v0, p1, p4}, Lvn;->i(Lvl;II)V

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lvn;->e(Lvl;)V

    return-void
.end method

.method public final h(Lvs;Lvs;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lvn;->c()Lvs;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lvs;->e:I

    .line 3
    invoke-virtual {v0, p1, p2, v1, p3}, Lvl;->i(Lvs;Lvs;Lvs;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p1, v1}, Lvk;->a(Lvs;)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, v0, p1, p4}, Lvn;->i(Lvl;II)V

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lvn;->e(Lvl;)V

    return-void
.end method

.method final i(Lvl;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lvn;->p(I)Lvs;

    move-result-object p3

    iget-object p1, p1, Lvl;->e:Lvk;

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p3, p2}, Lvk;->g(Lvs;F)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvn;->r:Lvl;

    invoke-virtual {v0}, Lvl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lvn;->r()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lvn;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lvn;->i:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lvn;->e:[Lvl;

    .line 2
    aget-object v1, v1, v0

    .line 3
    iget-boolean v1, v1, Lvl;->d:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lvn;->r:Lvl;

    .line 5
    invoke-virtual {p0, v0}, Lvn;->l(Lvl;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lvn;->r()V

    return-void

    :cond_3
    iget-object v0, p0, Lvn;->r:Lvl;

    .line 6
    invoke-virtual {p0, v0}, Lvn;->l(Lvl;)V

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lvn;->j:Lvm;

    iget-object v3, v2, Lvm;->a:[Lvs;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lvs;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Lvm;->c:Lvo;

    iget-object v2, p0, Lvn;->p:[Lvs;

    iget v3, p0, Lvn;->q:I

    .line 5
    array-length v4, v2

    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 6
    aget-object v5, v2, v4

    iget v6, v1, Lvo;->b:I

    const/16 v7, 0x100

    if-ge v6, v7, :cond_3

    iget-object v7, v1, Lvo;->a:[Ljava/lang/Object;

    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lvo;->b:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lvn;->q:I

    iget-object v1, p0, Lvn;->j:Lvm;

    .line 7
    iget-object v1, v1, Lvm;->a:[Lvs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lvn;->d:I

    iget-object v1, p0, Lvn;->r:Lvl;

    check-cast v1, Lvr;

    iput v0, v1, Lvr;->f:I

    const/4 v2, 0x0

    iput v2, v1, Lvr;->b:F

    const/4 v1, 0x1

    iput v1, p0, Lvn;->h:I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lvn;->i:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lvn;->e:[Lvl;

    .line 8
    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_5
    invoke-direct {p0}, Lvn;->t()V

    iput v0, p0, Lvn;->i:I

    new-instance v0, Lvl;

    iget-object v1, p0, Lvn;->j:Lvm;

    .line 10
    invoke-direct {v0, v1}, Lvl;-><init>(Lvm;)V

    iput-object v0, p0, Lvn;->s:Lvl;

    return-void
.end method

.method final l(Lvl;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lvn;->i:I

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lvn;->e:[Lvl;

    aget-object v3, v3, v2

    iget-object v4, v3, Lvl;->a:Lvs;

    .line 2
    iget v4, v4, Lvs;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iget v3, v3, Lvl;->b:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_e

    add-int/2addr v3, v5

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_2
    iget v11, v0, Lvn;->i:I

    if-ge v7, v11, :cond_a

    iget-object v11, v0, Lvn;->e:[Lvl;

    .line 4
    aget-object v11, v11, v7

    .line 5
    iget-object v12, v11, Lvl;->a:Lvs;

    .line 6
    iget v12, v12, Lvs;->n:I

    if-ne v12, v5, :cond_1

    goto :goto_7

    .line 7
    :cond_1
    iget-boolean v12, v11, Lvl;->d:Z

    if-eqz v12, :cond_2

    goto :goto_7

    .line 8
    :cond_2
    iget v12, v11, Lvl;->b:F

    cmpg-float v12, v12, v4

    if-gez v12, :cond_8

    .line 9
    iget-object v12, v11, Lvl;->e:Lvk;

    iget v12, v12, Lvk;->a:I

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_9

    .line 10
    iget-object v14, v11, Lvl;->e:Lvk;

    invoke-virtual {v14, v13}, Lvk;->d(I)Lvs;

    move-result-object v14

    .line 11
    iget-object v15, v11, Lvl;->e:Lvk;

    invoke-virtual {v15, v14}, Lvk;->a(Lvs;)F

    move-result v15

    cmpg-float v16, v15, v4

    if-gtz v16, :cond_4

    :cond_3
    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_4
    const/16 v4, 0x9

    if-ge v1, v4, :cond_3

    .line 12
    iget-object v4, v14, Lvs;->h:[F

    aget v4, v4, v1

    div-float/2addr v4, v15

    cmpg-float v17, v4, v2

    if-gez v17, :cond_5

    if-eq v1, v10, :cond_6

    :cond_5
    if-le v1, v10, :cond_7

    .line 13
    :cond_6
    iget v9, v14, Lvs;->c:I

    move v10, v1

    move v2, v4

    move v8, v7

    goto :goto_5

    :cond_7
    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 11
    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 13
    :cond_8
    nop

    .line 6
    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 13
    :cond_a
    if-eq v8, v6, :cond_b

    iget-object v1, v0, Lvn;->e:[Lvl;

    .line 14
    aget-object v1, v1, v8

    .line 15
    iget-object v2, v1, Lvl;->a:Lvs;

    iput v6, v2, Lvs;->d:I

    iget-object v2, v0, Lvn;->j:Lvm;

    .line 16
    iget-object v2, v2, Lvm;->a:[Lvs;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lvl;->b(Lvs;)V

    .line 17
    iget-object v2, v1, Lvl;->a:Lvs;

    iput v8, v2, Lvs;->d:I

    .line 18
    invoke-virtual {v2, v0, v1}, Lvs;->e(Lvn;Lvl;)V

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    const/4 v1, 0x1

    :goto_8
    iget v2, v0, Lvn;->h:I

    div-int/lit8 v2, v2, 0x2

    if-le v3, v2, :cond_c

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    :goto_9
    xor-int/2addr v2, v5

    or-int/2addr v2, v1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 19
    :cond_e
    invoke-direct/range {p0 .. p1}, Lvn;->u(Lvl;)V

    .line 20
    invoke-direct/range {p0 .. p0}, Lvn;->r()V

    return-void
.end method

.method public final m(Lvs;Lvs;II)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    iget-boolean p4, p2, Lvs;->g:Z

    if-eqz p4, :cond_1

    iget p4, p1, Lvs;->d:I

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    .line 9
    :cond_0
    iget p2, p2, Lvs;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lvs;->d(Lvn;F)V

    return-void

    :cond_1
    const/16 p4, 0x8

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p3, :cond_5

    if-gez p3, :cond_3

    neg-int p3, p3

    const/4 v4, 0x1

    goto :goto_1

    .line 6
    :cond_3
    const/4 v4, 0x0

    .line 2
    :goto_1
    int-to-float p3, p3

    iput p3, v1, Lvl;->b:F

    if-nez v4, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    iget-object p3, v1, Lvl;->e:Lvk;

    .line 5
    invoke-virtual {p3, p1, v2}, Lvk;->g(Lvs;F)V

    iget-object p1, v1, Lvl;->e:Lvk;

    .line 6
    invoke-virtual {p1, p2, v3}, Lvk;->g(Lvs;F)V

    goto :goto_3

    .line 2
    :cond_5
    :goto_2
    iget-object p3, v1, Lvl;->e:Lvk;

    .line 3
    invoke-virtual {p3, p1, v3}, Lvk;->g(Lvs;F)V

    iget-object p1, v1, Lvl;->e:Lvk;

    .line 4
    invoke-virtual {p1, p2, v2}, Lvk;->g(Lvs;F)V

    :goto_3
    if-eq p4, v0, :cond_6

    .line 7
    invoke-virtual {v1, p0, p4}, Lvl;->f(Lvn;I)V

    .line 8
    :cond_6
    invoke-virtual {p0, v1}, Lvn;->e(Lvl;)V

    return-void
.end method

.method public final n(Lvs;Lvs;Lvs;Lvs;F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lvn;->a()Lvl;

    move-result-object v6

    .line 2
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lvl;->g(Lvs;Lvs;Lvs;Lvs;F)V

    .line 3
    invoke-virtual {p0, v6}, Lvn;->e(Lvl;)V

    return-void
.end method

.method public final p(I)Lvs;
    .locals 4

    .line 1
    iget v0, p0, Lvn;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lvn;->m:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lvn;->s()V

    :cond_0
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lvn;->v(I)Lvs;

    move-result-object v0

    iget v1, p0, Lvn;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lvn;->d:I

    iget v2, p0, Lvn;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lvn;->h:I

    iput v1, v0, Lvs;->c:I

    iput p1, v0, Lvs;->e:I

    iget-object p1, p0, Lvn;->j:Lvm;

    .line 3
    iget-object p1, p1, Lvm;->a:[Lvs;

    aput-object v0, p1, v1

    iget-object p1, p0, Lvn;->r:Lvl;

    check-cast p1, Lvr;

    iget-object v1, p1, Lvr;->g:Lvq;

    iput-object v0, v1, Lvq;->a:Lvs;

    iget-object v1, v1, Lvq;->a:Lvs;

    .line 4
    iget-object v1, v1, Lvs;->i:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, v0, Lvs;->i:[F

    iget v2, v0, Lvs;->e:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    aput v3, v1, v2

    .line 6
    invoke-virtual {p1, v0}, Lvr;->m(Lvs;)V

    return-object v0
.end method
