.class public final synthetic Lcbk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcbh;


# direct methods
.method public synthetic constructor <init>(Lcbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbk;->a:Lcbh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcbk;->a:Lcbh;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcbh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v0, Lcbh;->d:Lcbv;

    iget-object v4, v0, Lcbh;->c:Ldgz;

    invoke-interface {v4}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcbe;

    invoke-virtual {v4}, Lcbe;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcbh;->c:Ldgz;

    .line 2
    invoke-interface {v4}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcbe;

    iget v4, v4, Lcbe;->a:F

    goto :goto_0

    .line 4
    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {v3, v4}, Lcbv;->a(F)Lcbu;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    iget-object v2, v0, Lcbh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v0, Lcbh;->d:Lcbv;

    .line 5
    invoke-virtual {v0, v1}, Lcbv;->a(F)Lcbu;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
