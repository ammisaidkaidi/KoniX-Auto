.class public final Lpp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field static final b:Ljava/util/Comparator;


# instance fields
.field public final c:Ljava/util/ArrayList;

.field d:J

.field public e:J

.field private final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lpp;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lvp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvp;-><init>(I)V

    sput-object v0, Lpp;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpp;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpp;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private static final b(Landroid/support/v7/widget/RecyclerView;IJ)Lrr;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    invoke-virtual {v0}, Lor;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 2
    invoke-virtual {v3, v2}, Lor;->f(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lrr;

    move-result-object v3

    .line 4
    iget v4, v3, Lrr;->mPosition:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lrr;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lrh;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lrh;->n(IJ)Lrr;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lrr;->isBound()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lrr;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lrr;->itemView:Landroid/view/View;

    .line 9
    invoke-virtual {v0, p2}, Lrh;->i(Landroid/view/View;)V

    goto :goto_2

    .line 11
    :cond_3
    nop

    .line 8
    invoke-virtual {v0, p1, v1}, Lrh;->d(Lrr;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_4
    :goto_2
    nop

    .line 10
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->O(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->O(Z)V

    .line 11
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lpp;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lpp;->d:J

    .line 2
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    iput p2, p1, Lpn;->a:I

    iput p3, p1, Lpn;->b:I

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "RV Prefetch"

    invoke-static {v0}, Lxz;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    iput-wide v2, v1, Lpp;->d:J

    .line 3
    :goto_0
    invoke-static {}, Lxz;->b()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v8, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    .line 6
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 7
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    iput-wide v2, v1, Lpp;->d:J

    goto :goto_0

    .line 3
    :cond_3
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, v1, Lpp;->e:J

    add-long/2addr v5, v7

    iget-object v0, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v0, :cond_5

    iget-object v9, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    .line 11
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 12
    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    invoke-virtual {v10, v9, v4}, Lpn;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 13
    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    iget v9, v9, Lpn;->d:I

    add-int/2addr v8, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v7, v0, :cond_9

    iget-object v10, v1, Lpp;->c:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    .line 16
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_8

    .line 17
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    .line 18
    iget v12, v11, Lpn;->a:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v11, Lpn;->b:I

    .line 19
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x0

    .line 20
    :goto_4
    iget v14, v11, Lpn;->d:I

    add-int/2addr v14, v14

    if-ge v13, v14, :cond_8

    iget-object v14, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v8, v14, :cond_6

    new-instance v14, Lpo;

    invoke-direct {v14}, Lpo;-><init>()V

    iget-object v15, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 29
    :cond_6
    iget-object v14, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpo;

    .line 24
    :goto_5
    iget-object v15, v11, Lpn;->c:[I

    add-int/lit8 v16, v13, 0x1

    aget v2, v15, v16

    if-gt v2, v12, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    .line 29
    :cond_7
    const/4 v3, 0x0

    .line 25
    :goto_6
    iput-boolean v3, v14, Lpo;->a:Z

    .line 26
    iput v12, v14, Lpo;->b:I

    .line 27
    iput v2, v14, Lpo;->c:I

    .line 28
    iput-object v10, v14, Lpo;->d:Landroid/support/v7/widget/RecyclerView;

    .line 29
    aget v2, v15, v13

    iput v2, v14, Lpo;->e:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x2

    const-wide/16 v2, 0x0

    goto :goto_4

    .line 23
    :cond_8
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lpp;->f:Ljava/util/ArrayList;

    sget-object v2, Lpp;->b:Ljava/util/Comparator;

    .line 30
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_7
    iget-object v2, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    iget-object v2, v1, Lpp;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpo;

    .line 33
    iget-object v3, v2, Lpo;->d:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_a

    goto/16 :goto_b

    .line 34
    :cond_a
    iget-boolean v7, v2, Lpo;->a:Z

    if-eq v9, v7, :cond_b

    move-wide v7, v5

    goto :goto_8

    .line 48
    :cond_b
    const-wide v7, 0x7fffffffffffffffL

    .line 35
    :goto_8
    iget v10, v2, Lpo;->e:I

    invoke-static {v3, v10, v7, v8}, Lpp;->b(Landroid/support/v7/widget/RecyclerView;IJ)Lrr;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v7, v3, Lrr;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_f

    .line 36
    invoke-virtual {v3}, Lrr;->isBound()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 37
    invoke-virtual {v3}, Lrr;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v3, v3, Lrr;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    iget-boolean v7, v3, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v7, :cond_d

    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->f:Lor;

    .line 39
    invoke-virtual {v7}, Lor;->c()I

    move-result v7

    if-eqz v7, :cond_d

    .line 40
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->S()V

    :cond_d
    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->G:Lpn;

    .line 41
    invoke-virtual {v7, v3, v9}, Lpn;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 42
    iget v8, v7, Lpn;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_f

    :try_start_3
    const-string v8, "RV Nested Prefetch"

    .line 43
    invoke-static {v8}, Lxz;->a(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/support/v7/widget/RecyclerView;->H:Lro;

    iget-object v10, v3, Landroid/support/v7/widget/RecyclerView;->k:Lqq;

    iput v9, v8, Lro;->d:I

    .line 44
    invoke-virtual {v10}, Lqq;->getItemCount()I

    move-result v10

    iput v10, v8, Lro;->e:I

    iput-boolean v4, v8, Lro;->g:Z

    iput-boolean v4, v8, Lro;->h:Z

    iput-boolean v4, v8, Lro;->i:Z

    const/4 v8, 0x0

    .line 45
    :goto_9
    iget v10, v7, Lpn;->d:I

    add-int/2addr v10, v10

    if-ge v8, v10, :cond_e

    .line 46
    iget-object v10, v7, Lpn;->c:[I

    aget v10, v10, v8

    .line 47
    invoke-static {v3, v10, v5, v6}, Lpp;->b(Landroid/support/v7/widget/RecyclerView;IJ)Lrr;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    .line 48
    :cond_e
    :try_start_4
    invoke-static {}, Lxz;->b()V

    goto :goto_a

    .line 49
    :catchall_0
    move-exception v0

    .line 48
    invoke-static {}, Lxz;->b()V

    .line 49
    throw v0

    .line 38
    :cond_f
    :goto_a
    iput-boolean v4, v2, Lpo;->a:Z

    iput v4, v2, Lpo;->b:I

    iput v4, v2, Lpo;->c:I

    const/4 v3, 0x0

    iput-object v3, v2, Lpo;->d:Landroid/support/v7/widget/RecyclerView;

    iput v4, v2, Lpo;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 33
    :cond_10
    :goto_b
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lpp;->d:J

    goto/16 :goto_0

    .line 48
    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lpp;->d:J

    .line 3
    invoke-static {}, Lxz;->b()V

    .line 50
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
