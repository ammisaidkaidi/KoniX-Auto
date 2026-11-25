.class public final Lbxb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbwq;


# instance fields
.field public final a:Ldai;

.field public final b:Ldgz;


# direct methods
.method public constructor <init>(Lbwo;Landroid/content/Context;Ldai;Ldgz;Ldny;Ldny;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p3, p4, p5}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    iput-object p3, p0, Lbxb;->a:Ldai;

    iput-object p4, p0, Lbxb;->b:Ldgz;

    new-instance p1, Lbwy;

    invoke-direct {p1, p0, p2}, Lbwy;-><init>(Lbxb;Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lex;->i(Lcol;)Lcol;

    new-instance p1, Lbwz;

    invoke-direct {p1, p6}, Lbwz;-><init>(Ldny;)V

    .line 5
    invoke-static {p1}, Lex;->i(Lcol;)Lcol;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbxb;->b:Ldgz;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()V
    .locals 2

    .line 1
    new-instance v0, Lbxa;

    invoke-direct {v0, p0}, Lbxa;-><init>(Lbxb;)V

    iget-object v1, p0, Lbxb;->a:Ldai;

    invoke-static {v0, v1}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
