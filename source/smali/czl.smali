.class public final synthetic Lczl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldax;

.field public final synthetic b:Ldas;

.field public final synthetic c:Ldag;

.field public final synthetic d:Ldag;

.field public final synthetic e:Lczo;


# direct methods
.method public synthetic constructor <init>(Ldax;Ldas;Ldag;Ldag;Lczo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczl;->a:Ldax;

    iput-object p2, p0, Lczl;->b:Ldas;

    iput-object p3, p0, Lczl;->c:Ldag;

    iput-object p4, p0, Lczl;->d:Ldag;

    iput-object p5, p0, Lczl;->e:Lczo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lczl;->a:Ldax;

    iget-object v1, p0, Lczl;->b:Ldas;

    iget-object v2, p0, Lczl;->c:Ldag;

    iget-object v3, p0, Lczl;->d:Ldag;

    iget-object v4, p0, Lczl;->e:Lczo;

    invoke-virtual {v0}, Lcyp;->isDone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Lcyp;->d(Ldag;)Z

    return-void

    .line 3
    :cond_0
    invoke-interface {v3}, Ldag;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lczn;->a:Lczn;

    sget-object v2, Lczn;->b:Lczn;

    invoke-virtual {v4, v1, v2}, Lczo;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcyp;->cancel(Z)Z

    :cond_1
    return-void
.end method
