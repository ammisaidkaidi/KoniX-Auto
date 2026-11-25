.class public final synthetic Lcfs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldag;


# direct methods
.method public synthetic constructor <init>(Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfs;->a:Ldag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcfs;->a:Ldag;

    :try_start_0
    invoke-static {v0}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcft;

    invoke-direct {v1, v0}, Lcft;-><init>(Ljava/util/concurrent/ExecutionException;)V

    .line 2
    invoke-static {v1}, Lbjq;->g(Ljava/lang/Runnable;)V

    return-void
.end method
