.class public final synthetic Lcfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcfn;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcdz;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcdz;Lcfn;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcfz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfz;->c:Lcdz;

    iput-object p2, p0, Lcfz;->a:Lcfn;

    iput-object p3, p0, Lcfz;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcfn;Ljava/lang/String;Lcdz;I)V
    .locals 0

    iput p4, p0, Lcfz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfz;->a:Lcfn;

    iput-object p2, p0, Lcfz;->b:Ljava/lang/String;

    iput-object p3, p0, Lcfz;->c:Lcdz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 10

    .line 1
    iget v0, p0, Lcfz;->d:I

    packed-switch v0, :pswitch_data_0

    .line 16
    iget-object v0, p0, Lcfz;->c:Lcdz;

    iget-object v1, p0, Lcfz;->a:Lcfn;

    iget-object v2, p0, Lcfz;->b:Ljava/lang/String;

    .line 17
    move-object v3, p1

    check-cast v3, Lcgw;

    iget-object p1, v1, Lcfn;->a:Ljava/lang/String;

    iget-boolean v4, v1, Lcfn;->b:Z

    iget-boolean v5, v1, Lcfn;->e:Z

    .line 18
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcgv;->e(Lcdz;Ljava/lang/String;Ljava/lang/String;Lcgw;ZZ)Ldag;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcfz;->a:Lcfn;

    iget-object v1, p0, Lcfz;->b:Ljava/lang/String;

    iget-object v2, p0, Lcfz;->c:Lcdz;

    check-cast p1, Ljava/util/List;

    iget-boolean v3, v0, Lcfn;->d:Z

    const-string v4, ""

    if-nez v3, :cond_0

    .line 2
    invoke-static {v4}, Lcqh;->q(Ljava/lang/Object;)Lcqh;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    sget-object v6, Lcgf;->c:Lcej;

    invoke-static {v1, v5}, Lcod;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcod;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcpu;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, v0, Lcfn;->c:Z

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcdz;->h:Landroid/content/Context;

    iget-object v7, v0, Lcfn;->a:Ljava/lang/String;

    .line 6
    invoke-static {v6}, Lcfx;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 7
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 14
    :cond_2
    move-object v6, v5

    .line 7
    :goto_1
    iget-object v7, v0, Lcfn;->a:Ljava/lang/String;

    .line 8
    invoke-static {v2, v7, v6}, Lcgv;->d(Lcdz;Ljava/lang/String;Ljava/lang/String;)Ldag;

    move-result-object v6

    .line 9
    invoke-static {v6}, Ldab;->q(Ldag;)Ldab;

    move-result-object v7

    new-instance v8, Lcfz;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v0, v5, v9}, Lcfz;-><init>(Lcdz;Lcfn;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v2}, Lcdz;->d()Ldai;

    move-result-object v9

    .line 11
    invoke-static {v7, v8, v9}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v7

    new-instance v8, Lcfy;

    invoke-direct {v8, v2, v6, v0, v5}, Lcfy;-><init>(Lcdz;Ldag;Lcfn;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcdz;->d()Ldai;

    move-result-object v5

    .line 13
    invoke-static {v7, v8, v5}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v5

    .line 14
    invoke-virtual {v3, v5}, Lcqc;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v3}, Lcqc;->f()Lcqh;

    move-result-object p1

    invoke-static {p1}, Lhh;->e(Ljava/lang/Iterable;)Lczz;

    move-result-object p1

    sget-object v0, Lcge;->c:Lcge;

    .line 16
    invoke-virtual {v2}, Lcdz;->d()Ldai;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
