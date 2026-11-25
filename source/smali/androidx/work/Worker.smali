.class public abstract Landroidx/work/Worker;
.super Landroidx/work/ListenableWorker;
.source "PG"


# instance fields
.field public f:Lame;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final b()Ldag;
    .locals 2

    .line 1
    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Worker;->f:Lame;

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lagz;

    invoke-direct {v1, p0}, Lagz;-><init>(Landroidx/work/Worker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/work/Worker;->f:Lame;

    return-object v0
.end method

.method public abstract h()Lex;
.end method
