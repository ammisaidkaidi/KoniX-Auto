.class public final synthetic Lamp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic a:Lamq;


# direct methods
.method public synthetic constructor <init>(Lamq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamp;->a:Lamq;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lamp;->a:Lamq;

    iget-object v0, p2, Lamq;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p2, Lamq;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p2, Lamq;->x:Lamz;

    iget-object v3, p2, Lamq;->A:Landroid/view/View;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, v2, Lamz;->a:Lamx;

    .line 3
    invoke-virtual {v2, v3, v4, v5}, Lamx;->b(Landroid/view/View;J)V

    iput-object v1, p2, Lamq;->A:Landroid/view/View;

    goto :goto_2

    .line 9
    :cond_0
    iget-object v2, p2, Lamq;->c:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 5
    :cond_3
    :goto_1
    iput-object v2, p2, Lamq;->A:Landroid/view/View;

    .line 3
    :cond_4
    :goto_2
    iget-boolean v2, p2, Lamq;->d:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 7
    instance-of v2, p1, Lcom/android/car/ui/FocusParkingView;

    if-eqz v2, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    invoke-static {p1}, Lhf;->m(Landroid/view/View;)Lamt;

    move-result-object v1

    iput-object v1, p2, Lamq;->z:Lamt;

    iget-object v1, p2, Lamq;->z:Lamt;

    if-nez v1, :cond_7

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No ancestor focus area for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FocusAreaHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7
    :cond_6
    :goto_3
    iput-object v1, p2, Lamq;->z:Lamt;

    :cond_7
    :goto_4
    iget-boolean v1, p2, Lamq;->y:Z

    if-nez v1, :cond_8

    goto :goto_5

    .line 12
    :cond_8
    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 10
    invoke-static {p1}, Lhf;->m(Landroid/view/View;)Lamt;

    move-result-object p1

    iget-object v1, p2, Lamq;->c:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_9

    iget-object p1, p2, Lamq;->x:Lamz;

    iget-object p1, p1, Lamz;->b:Lamv;

    .line 11
    invoke-virtual {p1}, Lamv;->clear()V

    .line 7
    :cond_9
    :goto_5
    iget-boolean p1, p2, Lamq;->f:Z

    if-nez p1, :cond_a

    iget-boolean p1, p2, Lamq;->e:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-boolean p1, p2, Lamq;->d:Z

    if-eq p1, v0, :cond_b

    iget-object p1, p2, Lamq;->c:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    iput-boolean v0, p2, Lamq;->d:Z

    return-void
.end method
