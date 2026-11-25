.class Lcom/achour/tweaks/Bubble$15;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/achour/tweaks/Bubble;->togglePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/achour/tweaks/P;->usb()Z

    move-result v0

    invoke-static {}, Lcom/achour/tweaks/P;->wifi()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/achour/tweaks/P;->setUsb(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->setWifi(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->setUsb(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/achour/tweaks/P;->setWifi(Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/achour/tweaks/P;->setUsb(Z)V

    invoke-static {v0}, Lcom/achour/tweaks/P;->setWifi(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/achour/tweaks/P;->setUsb(Z)V

    invoke-static {v0}, Lcom/achour/tweaks/P;->setWifi(Z)V

    :goto_0
    invoke-static {}, Lcom/achour/tweaks/Bubble;->access$600()V

    return-void
.end method
