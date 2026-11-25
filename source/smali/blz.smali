.class final Lblz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbqv;

.field final synthetic b:Lbma;


# direct methods
.method public constructor <init>(Lbma;Lbqv;)V
    .locals 0

    iput-object p1, p0, Lblz;->b:Lbma;

    iput-object p2, p0, Lblz;->a:Lbqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lblz;->b:Lbma;

    iget-object v1, p0, Lblz;->a:Lbqv;

    iget-object v2, v1, Lbqv;->b:Lbiz;

    invoke-virtual {v2}, Lbiz;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Lbqv;->c:Lbno;

    .line 2
    invoke-static {v1}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lbno;->c:Lbiz;

    .line 3
    invoke-virtual {v2}, Lbiz;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v0, Lbma;->f:Lblm;

    .line 5
    invoke-virtual {v1, v2}, Lblm;->b(Lbiz;)V

    iget-object v0, v0, Lbma;->e:Lbqn;

    .line 6
    invoke-interface {v0}, Lbqn;->l()V

    return-void

    :cond_0
    iget-object v2, v0, Lbma;->f:Lblm;

    .line 7
    invoke-virtual {v1}, Lbno;->a()Lbng;

    move-result-object v1

    iget-object v3, v0, Lbma;->c:Ljava/util/Set;

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, v2, Lblm;->f:Lbng;

    iput-object v3, v2, Lblm;->c:Ljava/util/Set;

    .line 7
    invoke-virtual {v2}, Lblm;->c()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    .line 8
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lbiz;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lbiz;-><init>(I)V

    .line 7
    invoke-virtual {v2, v1}, Lblm;->b(Lbiz;)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lbma;->f:Lblm;

    .line 9
    invoke-virtual {v1, v2}, Lblm;->b(Lbiz;)V

    .line 7
    :goto_1
    iget-object v0, v0, Lbma;->e:Lbqn;

    .line 10
    invoke-interface {v0}, Lbqn;->l()V

    return-void
.end method
