.class final Lbyd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbxz;
.implements Lbuw;


# instance fields
.field private final a:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private final b:Ldgz;


# direct methods
.method public constructor <init>(Landroid/view/Window$OnFrameMetricsAvailableListener;Ldgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyd;->a:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iput-object p2, p0, Lbyd;->b:Ldgz;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p2, p0, Lbyd;->a:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iget-object v0, p0, Lbyd;->b:Ldgz;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
