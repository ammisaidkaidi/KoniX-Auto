.class final Ldhf;
.super Laaf;
.source "PG"


# instance fields
.field public final a:Last;


# direct methods
.method public constructor <init>(Last;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Laaf;-><init>()V

    iput-object p1, p0, Ldhf;->a:Last;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldhf;->a:Last;

    const-class v1, Ldhg;

    invoke-static {v0, v1}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhg;

    .line 2
    invoke-interface {v0}, Ldhg;->a()Ldhh;

    move-result-object v0

    sget-object v1, Ldpx;->a:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Ldpx;->a:Ljava/lang/Thread;

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Ldpx;->a:Ljava/lang/Thread;

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Ldhh;->a:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldha;

    .line 6
    invoke-interface {v1}, Ldha;->a()V

    goto :goto_0

    .line 7
    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "Must be called on the Main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
