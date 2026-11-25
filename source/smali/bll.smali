.class final Lbll;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbiz;

.field final synthetic b:Lblm;


# direct methods
.method public constructor <init>(Lblm;Lbiz;)V
    .locals 0

    iput-object p1, p0, Lbll;->b:Lblm;

    iput-object p2, p0, Lbll;->a:Lbiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbll;->b:Lblm;

    iget-object v1, v0, Lblm;->e:Lbln;

    iget-object v1, v1, Lbln;->k:Ljava/util/Map;

    iget-object v0, v0, Lblm;->b:Lbks;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbll;->a:Lbiz;

    invoke-virtual {v1}, Lbiz;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbll;->b:Lblm;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lblm;->d:Z

    iget-object v1, v1, Lblm;->a:Lbjx;

    .line 2
    invoke-interface {v1}, Lbjx;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbll;->b:Lblm;

    .line 3
    invoke-virtual {v0}, Lblm;->c()V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lbll;->b:Lblm;

    iget-object v1, v1, Lblm;->a:Lbjx;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1}, Lbjx;->j()Ljava/util/Set;

    move-result-object v3

    .line 5
    invoke-interface {v1, v2, v3}, Lbjx;->t(Lbng;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    move-exception v1

    .line 6
    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lbll;->b:Lblm;

    iget-object v1, v1, Lblm;->a:Lbjx;

    .line 7
    const-string v2, "Failed to get service from broker."

    invoke-interface {v1, v2}, Lbjx;->e(Ljava/lang/String;)V

    new-instance v1, Lbiz;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lbiz;-><init>(I)V

    .line 8
    invoke-virtual {v0, v1}, Lblj;->i(Lbiz;)V

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lbll;->a:Lbiz;

    .line 9
    invoke-virtual {v0, v1}, Lblj;->i(Lbiz;)V

    return-void
.end method
