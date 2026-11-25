.class abstract Lcls;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final a:Lclz;

.field final synthetic b:Lclv;


# direct methods
.method public constructor <init>(Lclv;Ljava/lang/String;Lclz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcls;->b:Lclv;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcls;->a:Lclz;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 2

    .line 1
    const/16 v0, -0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-virtual {p0}, Lcls;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcls;->b:Lclv;

    .line 3
    invoke-virtual {v0, p0}, Lclv;->a(Lcls;)V

    return-void

    .line 2
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcls;->b:Lclv;

    .line 3
    invoke-virtual {v1, p0}, Lclv;->a(Lcls;)V

    .line 4
    throw v0
.end method
