.class public final synthetic Lcyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcyw;

.field public final synthetic b:Ldag;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcyw;Ldag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyv;->a:Lcyw;

    iput-object p2, p0, Lcyv;->b:Ldag;

    iput p3, p0, Lcyv;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcyv;->a:Lcyw;

    iget-object v1, p0, Lcyv;->b:Ldag;

    iget v2, p0, Lcyv;->c:I

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Ldag;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, v0, Lcyw;->a:Lcqa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcyp;->cancel(Z)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcyw;->o(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :goto_0
    invoke-virtual {v0, v3}, Lcyw;->p(Lcqa;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v3}, Lcyw;->p(Lcqa;)V

    .line 2
    throw v1
.end method
