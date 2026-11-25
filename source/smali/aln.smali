.class public final Laln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic g:I


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lakk;

.field final c:Landroidx/work/ListenableWorker;

.field final d:Lagm;

.field final e:Lamh;

.field public final f:Lame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lakk;Landroidx/work/ListenableWorker;Lagm;Lamh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    iput-object v0, p0, Laln;->f:Lame;

    iput-object p1, p0, Laln;->a:Landroid/content/Context;

    iput-object p2, p0, Laln;->b:Lakk;

    iput-object p3, p0, Laln;->c:Landroidx/work/ListenableWorker;

    iput-object p4, p0, Laln;->d:Lagm;

    iput-object p5, p0, Laln;->e:Lamh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Laln;->b:Lakk;

    iget-boolean v0, v0, Lakk;->p:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lre;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    iget-object v1, p0, Laln;->e:Lamh;

    iget-object v1, v1, Lamh;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lall;

    invoke-direct {v2, v0}, Lall;-><init>(Lame;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lalm;

    invoke-direct {v1, p0, v0}, Lalm;-><init>(Laln;Lame;)V

    iget-object v2, p0, Laln;->e:Lamh;

    iget-object v2, v2, Lamh;->c:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v0, v1, v2}, Lame;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Laln;->f:Lame;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lame;->e(Ljava/lang/Object;)V

    return-void
.end method
