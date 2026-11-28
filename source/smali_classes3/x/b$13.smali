.class Lx/b$13;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/b;->togglePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 316
    :try_start_0
    invoke-static {}, Lx/b;->access$400()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {}, Lx/b;->access$1000()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 317
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lx/b;->access$1002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    invoke-static {p1}, Lx/b;->access$1102(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 318
    return-void
.end method
