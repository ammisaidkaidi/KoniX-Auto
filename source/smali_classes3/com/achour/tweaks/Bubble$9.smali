.class Lcom/achour/tweaks/Bubble$9;
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

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 238
    invoke-static {}, Lcom/achour/tweaks/P;->autoRepair()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/achour/tweaks/P;->setAutoRepair(Z)V

    invoke-static {}, Lcom/achour/tweaks/Bubble;->access$600()V

    return-void
.end method
