.class public final Laxs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lfx;

.field public c:Lfu;

.field public final d:Laxr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laxs;->a:Landroid/os/Handler;

    new-instance v0, Lfx;

    .line 2
    invoke-direct {v0}, Lfx;-><init>()V

    iput-object v0, p0, Laxs;->b:Lfx;

    new-instance v0, Laxr;

    invoke-direct {v0, p0}, Laxr;-><init>(Laxs;)V

    iput-object v0, p0, Laxs;->d:Laxr;

    return-void
.end method
