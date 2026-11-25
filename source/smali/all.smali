.class final Lall;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lame;


# direct methods
.method public constructor <init>(Lame;)V
    .locals 0

    iput-object p1, p0, Lall;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lall;->a:Lame;

    invoke-static {}, Lame;->h()Lame;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lame;->f(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {v0, v1}, Lame;->g(Ldag;)V

    return-void
.end method
