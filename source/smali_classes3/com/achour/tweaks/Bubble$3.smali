.class Lcom/achour/tweaks/Bubble$3;
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

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/achour/tweaks/P;->fps()I

    move-result p1

    .line 194
    const/16 v0, 0x1e

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-static {v0}, Lcom/achour/tweaks/P;->setFps(I)V

    .line 196
    invoke-static {}, Lcom/achour/tweaks/Bubble;->access$600()V

    .line 197
    return-void
.end method
