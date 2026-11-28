.class Lx/l$2;
.super Ljava/lang/Object;
.source "l.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    :try_start_0
    invoke-static {}, Lx/l;->-$$Nest$sfgetrailShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lx/l;->railWanted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx/l;->hideRail()V

    return-void

    .line 214
    :cond_1
    invoke-static {}, Lx/l;->refreshRailTexts()V

    .line 215
    invoke-static {}, Lx/l;->mainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_2

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 218
    return-void
.end method
