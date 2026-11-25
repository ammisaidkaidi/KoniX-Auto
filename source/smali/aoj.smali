.class public Laoj;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "carui"

    const-string v1, "setMessageToShowWhenDisabledPreferenceClicked is deprecated, and does nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ldag;)V
    .locals 2

    .line 1
    new-instance v0, Lcfs;

    invoke-direct {v0, p0}, Lcfs;-><init>(Ldag;)V

    sget-object v1, Lczj;->a:Lczj;

    .line 2
    invoke-interface {p0, v0, v1}, Ldag;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
