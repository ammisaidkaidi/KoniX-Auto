.class public Lcom/google/android/apps/auto/aareceiver/service/SQLiteDeviceRegistryCleanupWorker;
.super Landroidx/work/Worker;
.source "PG"


# instance fields
.field private final g:Lbby;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-class p2, Lbax;

    .line 2
    invoke-static {p1, p2}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbax;

    invoke-interface {p1}, Lbax;->e()Lbby;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/service/SQLiteDeviceRegistryCleanupWorker;->g:Lbby;

    return-void
.end method


# virtual methods
.method public final h()Lex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/service/SQLiteDeviceRegistryCleanupWorker;->g:Lbby;

    invoke-interface {v0}, Lbby;->i()V

    .line 2
    invoke-static {}, Lex;->h()Lex;

    move-result-object v0

    return-object v0
.end method
