.class public final Laph;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:I

.field public final c:Landroid/view/View$OnClickListener;

.field public d:Landroid/view/View;

.field public e:Z

.field private final f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laph;->a:Landroid/os/Handler;

    new-instance v0, Lapg;

    invoke-direct {v0, p0}, Lapg;-><init>(Laph;)V

    iput-object v0, p0, Laph;->g:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Laph;->f:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a0009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Laph;->b:I

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    .line 4
    iput-object p2, p0, Laph;->c:Landroid/view/View$OnClickListener;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "negative intervals are not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Laph;->a:Landroid/os/Handler;

    iget-object v1, p0, Laph;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laph;->e:Z

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Laph;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 4
    :pswitch_0
    return v0

    .line 1
    :pswitch_1
    iget-boolean p2, p0, Laph;->e:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Laph;->c:Landroid/view/View$OnClickListener;

    .line 2
    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Laph;->a:Landroid/os/Handler;

    iget-object p2, p0, Laph;->g:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Laph;->d:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v0, p0, Laph;->e:Z

    return v1

    :pswitch_2
    iget-object p1, p0, Laph;->a:Landroid/os/Handler;

    iget-object p2, p0, Laph;->g:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Laph;->a:Landroid/os/Handler;

    iget-object p2, p0, Laph;->g:Ljava/lang/Runnable;

    iget v0, p0, Laph;->f:I

    int-to-long v2, v0

    .line 6
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Laph;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
