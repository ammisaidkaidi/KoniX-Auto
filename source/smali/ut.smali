.class public final Lut;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field public static final a:Lut;


# instance fields
.field public final b:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final c:Lgf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lut;

    invoke-direct {v0}, Lut;-><init>()V

    sput-object v0, Lut;->a:Lut;

    .line 2
    const-string v1, "AsyncLayoutInflator"

    invoke-virtual {v0, v1}, Lut;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lut;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lut;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lgf;

    invoke-direct {v0}, Lgf;-><init>()V

    iput-object v0, p0, Lut;->c:Lgf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "AsyncLayoutInflater"

    :goto_0
    :try_start_0
    iget-object v1, p0, Lut;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, v1, Lus;->a:Luu;

    iget-object v3, v3, Luu;->a:Landroid/view/LayoutInflater;

    iget v4, v1, Lus;->c:I

    iget-object v5, v1, Lus;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lus;->d:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2
    :catch_0
    move-exception v3

    .line 4
    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_1
    iget-object v3, v1, Lus;->a:Luu;

    iget-object v3, v3, Luu;->b:Landroid/os/Handler;

    invoke-static {v3, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
