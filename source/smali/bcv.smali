.class public Lbcv;
.super Landroid/telecom/InCallService;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private volatile a:Ldho;

.field private final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbcv;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbcv;->c:Z

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbcv;->a:Ldho;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbcv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbcv;->a:Ldho;

    if-nez v1, :cond_0

    new-instance v1, Ldho;

    invoke-direct {v1, p0}, Ldho;-><init>(Landroid/app/Service;)V

    iput-object v1, p0, Lbcv;->a:Ldho;

    .line 2
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 3
    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lbcv;->a:Ldho;

    .line 3
    invoke-virtual {v0}, Ldho;->aT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbcv;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbcv;->c:Z

    invoke-virtual {p0}, Lbcv;->aT()Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    return-void
.end method
