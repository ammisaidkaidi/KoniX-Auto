.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$3;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Landroid/car/CarProjectionManager$CarProjectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->addKeyEventHandler(Landroid/car/CarProjectionManager;Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;


# direct methods
.method constructor <init>(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$3;->val$handler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceAssistantRequest(Z)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$3;->val$handler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-interface {v0, p1}, Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;->onKeyEvent(I)V

    .line 534
    return-void
.end method
