.class final Lahy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldag;

.field final synthetic b:Laib;

.field final synthetic c:Lame;


# direct methods
.method public constructor <init>(Laib;Ldag;Lame;)V
    .locals 0

    iput-object p1, p0, Lahy;->b:Laib;

    iput-object p2, p0, Lahy;->a:Ldag;

    iput-object p3, p0, Lahy;->c:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lahy;->a:Ldag;

    invoke-interface {v0}, Ldag;->get()Ljava/lang/Object;

    .line 2
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    sget v1, Laib;->j:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lahy;->b:Laib;

    iget-object v2, v2, Laib;->c:Lakk;

    iget-object v2, v2, Lakk;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Starting work for %s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 2
    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Lahy;->b:Laib;

    iget-object v1, v0, Laib;->d:Landroidx/work/ListenableWorker;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->b()Ldag;

    move-result-object v1

    iput-object v1, v0, Laib;->e:Ldag;

    iget-object v0, p0, Lahy;->c:Lame;

    iget-object v1, p0, Lahy;->b:Laib;

    iget-object v1, v1, Laib;->e:Ldag;

    .line 5
    invoke-virtual {v0, v1}, Lame;->g(Ldag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lahy;->c:Lame;

    .line 6
    invoke-virtual {v1, v0}, Lame;->f(Ljava/lang/Throwable;)V

    return-void
.end method
