.class final Laek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lael;


# direct methods
.method public constructor <init>(Lael;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Laek;->b:Lael;

    iput-object p2, p0, Laek;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Laek;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Laek;->b:Lael;

    .line 2
    invoke-virtual {v0}, Lael;->a()V

    return-void

    .line 1
    :catchall_0
    move-exception v0

    iget-object v1, p0, Laek;->b:Lael;

    .line 2
    invoke-virtual {v1}, Lael;->a()V

    .line 3
    throw v0
.end method
