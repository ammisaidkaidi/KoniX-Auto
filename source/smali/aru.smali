.class public final synthetic Laru;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Larx;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Larx;Landroid/view/View;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laru;->a:Larx;

    iput-object p2, p0, Laru;->b:Landroid/view/View;

    iput-object p3, p0, Laru;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Laru;->d:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Laru;->a:Larx;

    iget-object v1, p0, Laru;->b:Landroid/view/View;

    iget-object v2, p0, Laru;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Laru;->d:[Ljava/lang/Runnable;

    invoke-static {v0}, Lhf;->q(Larx;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    aget-object v1, v3, v1

    .line 3
    invoke-interface {v0, v1}, Larx;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
