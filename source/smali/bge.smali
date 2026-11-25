.class public final synthetic Lbge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic a:Lbgg;


# direct methods
.method public synthetic constructor <init>(Lbgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbge;->a:Lbgg;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbge;->a:Lbgg;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-object p1, v0, Lbgg;->a:Landroid/os/Handler;

    iget-object v1, v0, Lbgg;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lbgg;->a:Landroid/os/Handler;

    iget-object v0, v0, Lbgg;->c:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
