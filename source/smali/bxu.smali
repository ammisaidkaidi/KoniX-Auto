.class public final Lbxu;
.super Lbxr;
.source "PG"

# interfaces
.implements Lbwq;
.implements Lbvd;


# static fields
.field private static final a:Lcsz;


# instance fields
.field private final b:Lbwn;

.field private final c:Landroid/content/Context;

.field private final d:Lbvh;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lbxo;

.field private final g:Ldny;

.field private final h:Ldgz;

.field private final i:Ldny;

.field private final j:Ldny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbxu;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Lbvh;Ljava/util/concurrent/Executor;Lbxo;Ldny;Ldgz;Ldny;Ldny;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbxr;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p4, p7, v0}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbxu;->b:Lbwn;

    iput-object p2, p0, Lbxu;->c:Landroid/content/Context;

    iput-object p3, p0, Lbxu;->d:Lbvh;

    iput-object p4, p0, Lbxu;->e:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbxu;->f:Lbxo;

    iput-object p6, p0, Lbxu;->g:Ldny;

    iput-object p7, p0, Lbxu;->h:Ldgz;

    iput-object p8, p0, Lbxu;->i:Ldny;

    iput-object p9, p0, Lbxu;->j:Ldny;

    return-void
.end method

.method public static synthetic e(Lbxu;)Ldag;
    .locals 10

    .line 1
    iget-object v0, p0, Lbxu;->h:Ldgz;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxn;

    invoke-virtual {v0}, Lbxn;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lbxu;->c:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lbxu;->i:Ldny;

    .line 5
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object p0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lbxu;->f:Lbxo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lbxu;->g:Ldny;

    .line 7
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    const-string v5, "lastExitProcessName"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbxu;->g:Ldny;

    .line 8
    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const-wide/16 v5, -0x1

    const-string v7, "lastExitTimestamp"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 9
    invoke-interface/range {v0 .. v5}, Lbxo;->a(IILjava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    sget-object p0, Ldad;->a:Ldag;

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lbxu;->j:Ldny;

    .line 12
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldoh;

    .line 13
    sget-object v2, Ldog;->e:Ldog;

    .line 14
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    .line 9
    move-object v3, v0

    check-cast v3, Lcrz;

    iget v3, v3, Lcrz;->c:I

    iget-boolean v4, v2, Lddf;->c:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_4
    iget-object v4, v2, Lddf;->b:Lddk;

    .line 16
    check-cast v4, Ldog;

    iget v6, v4, Ldog;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Ldog;->a:I

    iput v3, v4, Ldog;->d:I

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v4, Ldog;->c:Ldoh;

    const/4 v3, 0x1

    or-int/2addr v6, v3

    iput v6, v4, Ldog;->a:I

    new-instance v4, Ljava/util/HashSet;

    .line 18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v1, Ldoh;->a:Lddp;

    .line 19
    invoke-interface {v7}, Lddp;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, v1, Ldoh;->a:Lddp;

    .line 20
    invoke-interface {v7, v6}, Lddp;->e(I)I

    move-result v7

    invoke-static {v7}, Ldpx;->c(I)I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_6
    move-object v1, v0

    check-cast v1, Lcqh;

    .line 22
    invoke-virtual {v1}, Lcqh;->u()Lcsu;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldof;

    iget v7, v6, Ldof;->c:I

    invoke-static {v7}, Ldpx;->c(I)I

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, v2, Lddf;->c:Z

    if-eqz v7, :cond_9

    .line 24
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v5, v2, Lddf;->c:Z

    :cond_9
    iget-object v7, v2, Lddf;->b:Lddk;

    .line 25
    check-cast v7, Ldog;

    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Ldog;->b:Lddr;

    .line 27
    invoke-interface {v8}, Lddr;->c()Z

    move-result v9

    if-nez v9, :cond_a

    .line 28
    invoke-static {v8}, Lddk;->z(Lddr;)Lddr;

    move-result-object v8

    iput-object v8, v7, Ldog;->b:Lddr;

    :cond_a
    iget-object v7, v7, Ldog;->b:Lddr;

    .line 29
    invoke-interface {v7, v6}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_b
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldog;

    iget-object v2, p0, Lbxu;->b:Lbwn;

    .line 31
    invoke-static {}, Lbwj;->a()Lbwi;

    move-result-object v3

    .line 32
    sget-object v4, Ldpz;->y:Ldpz;

    .line 33
    invoke-virtual {v4}, Lddk;->n()Lddf;

    move-result-object v4

    iget-boolean v6, v4, Lddf;->c:Z

    if-eqz v6, :cond_c

    .line 34
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v5, v4, Lddf;->c:Z

    :cond_c
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 35
    check-cast v5, Ldpz;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Ldpz;->x:Ldog;

    iget v1, v5, Ldpz;->a:I

    const/high16 v6, 0x8000000

    or-int/2addr v1, v6

    iput v1, v5, Ldpz;->a:I

    .line 37
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v1

    check-cast v1, Ldpz;

    .line 38
    invoke-virtual {v3, v1}, Lbwi;->d(Ldpz;)V

    .line 39
    invoke-virtual {v3}, Lbwi;->a()Lbwj;

    move-result-object v1

    .line 40
    invoke-virtual {v2, v1}, Lbwn;->b(Lbwj;)Ldag;

    move-result-object v1

    new-instance v2, Lbxs;

    invoke-direct {v2, p0, v0}, Lbxs;-><init>(Lbxu;Ljava/util/List;)V

    iget-object p0, p0, Lbxu;->e:Ljava/util/concurrent/Executor;

    .line 41
    invoke-static {v1, v2, p0}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p0

    .line 2
    :goto_2
    return-object p0
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbxu;->d:Lbvh;

    invoke-virtual {p1, p0}, Lbvh;->b(Lbvg;)V

    .line 2
    invoke-virtual {p0}, Lbxu;->g()V

    return-void
.end method

.method public synthetic f(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 1
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldof;

    :cond_0
    iget-object v0, p1, Ldof;->b:Ljava/lang/String;

    iget-wide v1, p1, Ldof;->f:J

    add-int/lit8 p2, p2, 0x1

    iget-object v3, p0, Lbxu;->g:Ldny;

    .line 2
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4
    const-string v4, "lastExitProcessName"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    const-string v3, "lastExitTimestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    sget-object p1, Lbxu;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0xac

    .line 7
    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl"

    const-string v1, "updateLastRecordedAppExit"

    const-string v2, "ApplicationExitMetricServiceImpl.java"

    invoke-interface {p1, v0, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Failed to persist most recent App Exit"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Lbxt;

    invoke-direct {v0, p0}, Lbxt;-><init>(Lbxu;)V

    iget-object v1, p0, Lbxu;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbxu;->d:Lbvh;

    invoke-virtual {v0, p0}, Lbvh;->a(Lbvg;)V

    return-void
.end method
