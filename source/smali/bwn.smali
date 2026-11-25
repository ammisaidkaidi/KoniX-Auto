.class public final Lbwn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbwl;

.field public final b:Ldny;

.field public final c:Lccd;

.field public final d:Ldny;

.field public final e:Lbut;

.field private final f:Lbul;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lbwl;Ldny;Lbul;Lcce;Ldny;Lbut;Ljava/util/concurrent/Executor;Ldgz;Ldny;)V
    .locals 11

    .line 1
    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lbwn;->a:Lbwl;

    move-object v2, p3

    iput-object v2, v0, Lbwn;->f:Lbul;

    move-object v2, p2

    iput-object v2, v0, Lbwn;->b:Ldny;

    move-object/from16 v2, p7

    iput-object v2, v0, Lbwn;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lcaw;

    const/4 v3, 0x1

    move-object/from16 v4, p5

    invoke-direct {v2, v4, v3}, Lcaw;-><init>(Ldny;I)V

    iput-object v2, v0, Lbwn;->d:Ldny;

    new-instance v2, Lccd;

    iget-object v3, v1, Lcce;->a:Ldny;

    check-cast v3, Ldhr;

    invoke-virtual {v3}, Ldhr;->b()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v1, Lcce;->b:Ldny;

    .line 2
    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcce;->c:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v1, v1, Lcce;->d:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v7, v3

    check-cast v7, Lcch;

    move-object v4, v2

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v4 .. v10}, Lccd;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcch;Ldgz;ZLdny;)V

    iput-object v2, v0, Lbwn;->c:Lccd;

    move-object/from16 v1, p6

    iput-object v1, v0, Lbwn;->e:Lbut;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lbwn;->f:Lbul;

    iget-boolean v0, v0, Lbul;->b:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lbwn;->c:Lccd;

    iget-object v3, v0, Lccd;->d:Lcbz;

    invoke-virtual {v3}, Lcbz;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lccd;->c:Z

    iget-object v0, v0, Lccd;->b:Lcci;

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcci;->a(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    :cond_1
    nop

    .line 1
    :goto_0
    return-wide v1

    .line 2
    :cond_2
    return-wide v1
.end method

.method public final b(Lbwj;)Ldag;
    .locals 1

    .line 1
    iget-object v0, p0, Lbwn;->f:Lbul;

    iget-boolean v0, v0, Lbul;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lhh;->h()Ldag;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lbwm;

    invoke-direct {v0, p0, p1}, Lbwm;-><init>(Lbwn;Lbwj;)V

    iget-object p1, p0, Lbwn;->g:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, p1}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lbwn;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbwn;->c:Lccd;

    iget-boolean v1, v0, Lccd;->c:Z

    iget-object v0, v0, Lccd;->b:Lcci;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcci;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
