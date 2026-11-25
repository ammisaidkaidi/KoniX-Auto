.class public final Lyp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/Callable;

.field private final b:Lgc;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Lgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyp;->a:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lyp;->b:Lgc;

    iput-object p1, p0, Lyp;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lyp;->a:Ljava/util/concurrent/Callable;

    check-cast v0, Lyh;

    invoke-virtual {v0}, Lyh;->a()Lyj;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lyp;->b:Lgc;

    iget-object v2, p0, Lyp;->c:Landroid/os/Handler;

    new-instance v3, Lyo;

    invoke-direct {v3, v1, v0}, Lyo;-><init>(Lgc;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
