.class Lcom/achour/tweaks/Bubble$10;
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

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    invoke-static {}, Lcom/achour/tweaks/Bubble;->access$700()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u062c\u0627\u0631\u064d \u0625\u0632\u0627\u0644\u0629 \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 \u062b\u0645 \u0625\u0639\u0627\u062f\u062a\u0647\u2026"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-static {}, Lcom/achour/tweaks/Bubble;->access$700()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/achour/tweaks/Bt;->repair(Landroid/content/Context;Z)V

    .line 248
    return-void
.end method
