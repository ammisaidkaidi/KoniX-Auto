.class public final Lbgd;
.super Landroid/os/Binder;
.source "PG"


# instance fields
.field public final a:Ldag;

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ldag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lbgd;->a:Ldag;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbgd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
