.class public final synthetic Lbzb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lbyz;


# direct methods
.method public synthetic constructor <init>(Lbyz;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzb;->d:Lbyz;

    iput p2, p0, Lbzb;->c:I

    iput-object p3, p0, Lbzb;->a:Ljava/lang/String;

    iput-object p4, p0, Lbzb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 15

    .line 1
    iget-object v0, p0, Lbzb;->d:Lbyz;

    iget v1, p0, Lbzb;->c:I

    iget-object v2, p0, Lbzb;->a:Ljava/lang/String;

    iget-object v3, p0, Lbzb;->b:Ljava/lang/String;

    iget-object v4, v0, Lbyz;->b:Ldgz;

    invoke-interface {v4}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbyq;

    invoke-static {v1}, Lbyz;->c(I)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_1

    iget v5, v4, Lbyq;->f:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    const-wide/16 v8, 0x3e8

    goto :goto_0

    .line 19
    :cond_0
    move-wide v8, v6

    .line 1
    :goto_0
    goto :goto_1

    .line 19
    :cond_1
    iget-object v5, v0, Lbyz;->c:Lbwn;

    .line 2
    invoke-virtual {v5, v2}, Lbwn;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 1
    :goto_1
    cmp-long v5, v8, v6

    if-nez v5, :cond_2

    .line 40
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    :cond_2
    iget-boolean v5, v4, Lbyq;->c:Z

    if-eqz v5, :cond_3

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 5
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    iget-object v5, v4, Lbyq;->b:Lcoc;

    iget-boolean v4, v4, Lbyq;->a:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    iget-object v4, v0, Lbyz;->a:Landroid/app/Application;

    .line 20
    invoke-static {v4}, Lbvk;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    .line 21
    sget-object v0, Ldad;->a:Ldag;

    goto/16 :goto_3

    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    .line 22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, v0, Lbyz;->a:Landroid/app/Application;

    .line 23
    invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    .line 24
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 25
    sget-object v12, Ldpz;->y:Ldpz;

    .line 26
    invoke-virtual {v12}, Lddk;->n()Lddf;

    move-result-object v12

    iget-object v13, v0, Lbyz;->d:Lbze;

    .line 25
    iget v14, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v11, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 27
    invoke-virtual {v13, v1, v14, v11, v3}, Lbze;->b(IILjava/lang/String;Ljava/lang/String;)Ldox;

    move-result-object v11

    iget-boolean v13, v12, Lddf;->c:Z

    if-eqz v13, :cond_5

    .line 28
    invoke-virtual {v12}, Lddf;->k()V

    iput-boolean v5, v12, Lddf;->c:Z

    :cond_5
    iget-object v13, v12, Lddf;->b:Lddk;

    .line 29
    check-cast v13, Ldpz;

    .line 30
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v13, Ldpz;->b:Ldox;

    iget v11, v13, Ldpz;->a:I

    or-int/2addr v11, v7

    iput v11, v13, Ldpz;->a:I

    .line 31
    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v11

    check-cast v11, Ldpz;

    .line 32
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v12

    iput-object v2, v12, Lbwi;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v12, v7}, Lbwi;->b(Z)V

    .line 34
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lbwi;->d:Ljava/lang/Long;

    .line 35
    invoke-virtual {v12, v11}, Lbwi;->d(Ldpz;)V

    iput-object v6, v12, Lbwi;->b:Ldot;

    invoke-static {v1}, Lbyz;->c(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 36
    invoke-virtual {v12, v7}, Lbwi;->c(Z)V

    :cond_6
    iget-object v11, v0, Lbyz;->c:Lbwn;

    .line 37
    invoke-virtual {v12}, Lbwi;->a()Lbwj;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_7
    invoke-static {v10}, Lhh;->g(Ljava/lang/Iterable;)Lczz;

    move-result-object v0

    invoke-static {}, Lhh;->r()Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 39
    sget-object v2, Lczj;->a:Lczj;

    .line 38
    invoke-virtual {v0, v1, v2}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    goto :goto_3

    .line 6
    :cond_8
    sget-object v4, Ldpz;->y:Ldpz;

    .line 7
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-object v10, v0, Lbyz;->d:Lbze;

    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 9
    invoke-virtual {v10, v1, v11, v6, v3}, Lbze;->b(IILjava/lang/String;Ljava/lang/String;)Ldox;

    move-result-object v3

    iget-boolean v10, v4, Lddf;->c:Z

    if-eqz v10, :cond_9

    .line 10
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v5, v4, Lddf;->c:Z

    :cond_9
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 11
    check-cast v5, Ldpz;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v5, Ldpz;->b:Ldox;

    iget v3, v5, Ldpz;->a:I

    or-int/2addr v3, v7

    iput v3, v5, Ldpz;->a:I

    .line 13
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpz;

    .line 14
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v4

    iput-object v2, v4, Lbwi;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v7}, Lbwi;->b(Z)V

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lbwi;->d:Ljava/lang/Long;

    .line 17
    invoke-virtual {v4, v3}, Lbwi;->d(Ldpz;)V

    iput-object v6, v4, Lbwi;->b:Ldot;

    invoke-static {v1}, Lbyz;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {v4, v7}, Lbwi;->c(Z)V

    :cond_a
    iget-object v0, v0, Lbyz;->c:Lbwn;

    .line 19
    invoke-virtual {v4}, Lbwi;->a()Lbwj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v0

    .line 40
    :goto_3
    return-object v0
.end method
