.class final Lblm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbmi;


# instance fields
.field public final a:Lbjx;

.field public final b:Lbks;

.field public c:Ljava/util/Set;

.field public d:Z

.field final synthetic e:Lbln;

.field public f:Lbng;


# direct methods
.method public constructor <init>(Lbln;Lbjx;Lbks;)V
    .locals 0

    iput-object p1, p0, Lblm;->e:Lbln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lblm;->f:Lbng;

    iput-object p1, p0, Lblm;->c:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lblm;->d:Z

    iput-object p2, p0, Lblm;->a:Lbjx;

    iput-object p3, p0, Lblm;->b:Lbks;

    return-void
.end method


# virtual methods
.method public final a(Lbiz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lblm;->e:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    new-instance v1, Lbll;

    invoke-direct {v1, p0, p1}, Lbll;-><init>(Lblm;Lbiz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lbiz;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lblm;->e:Lbln;

    iget-object v0, v0, Lbln;->k:Ljava/util/Map;

    iget-object v1, p0, Lblm;->b:Lbks;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lblj;->j:Lbln;

    iget-object v1, v1, Lbln;->l:Landroid/os/Handler;

    .line 2
    invoke-static {v1}, Lhr;->g(Landroid/os/Handler;)V

    iget-object v1, v0, Lblj;->b:Lbjx;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onSignInFailed for "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbjx;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lblj;->i(Lbiz;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lblm;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblm;->f:Lbng;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lblm;->a:Lbjx;

    iget-object v2, p0, Lblm;->c:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lbjx;->t(Lbng;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
