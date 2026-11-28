.class Lx/b$2;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/b;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field moved:Z

.field startX:I

.field startY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 122
    return v0

    .line 112
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lx/b$2;->downX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lx/b$2;->downY:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 114
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x6

    invoke-static {v2}, Lx/b;->access$200(I)I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Lx/b;->access$200(I)I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lx/b$2;->moved:Z

    .line 115
    :cond_1
    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, p0, Lx/b$2;->startX:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Lx/b$2;->startY:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    :try_start_0
    invoke-static {}, Lx/b;->access$400()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {}, Lx/b;->access$300()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 117
    :goto_0
    return v1

    .line 119
    :pswitch_1
    iget-boolean p1, p0, Lx/b$2;->moved:Z

    if-nez p1, :cond_2

    invoke-static {}, Lx/b;->access$500()V

    .line 120
    return v1

    :cond_2
    invoke-static {}, Lx/b;->access$300()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    move-object v2, v3

    :cond_3
    const-string v3, "achour_tweaks"

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "bubble_x"

    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "bubble_y"

    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 108
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lx/b$2;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lx/b$2;->downY:F

    .line 109
    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lx/b$2;->startX:I

    invoke-static {}, Lx/b;->access$100()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lx/b$2;->startY:I

    iput-boolean v0, p0, Lx/b$2;->moved:Z

    .line 110
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
