.class public final Lcfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcgg;


# static fields
.field private static b:Z


# instance fields
.field public final a:Lcol;

.field private final c:Lcol;

.field private final d:I


# direct methods
.method public constructor <init>(Lcol;)V
    .locals 2

    .line 1
    sget-object v0, Lbpe;->t:Lbpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfw;->c:Lcol;

    const/4 p1, 0x5

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcfw;->d:I

    iput-object v0, p0, Lcfw;->a:Lcol;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    const-class v0, Lcfw;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcfw;->b:Z

    if-nez v1, :cond_0

    new-instance v3, Lcfu;

    invoke-direct {v3, p0}, Lcfu;-><init>(Lcfw;)V

    iget v1, p0, Lcfw;->d:I

    int-to-long v8, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcfw;->c:Lcol;

    invoke-interface {v2}, Lcol;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ldai;

    new-instance v11, Lcfv;

    move-object v2, v11

    move-object v4, v10

    move-wide v5, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcfv;-><init>(Ljava/lang/Runnable;Ldai;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-interface {v10, v11, v8, v9, v1}, Ldai;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ldak;

    move-result-object v1

    .line 3
    invoke-static {v1}, Laoj;->e(Ldag;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcfw;->b:Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
