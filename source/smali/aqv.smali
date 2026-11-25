.class public final synthetic Laqv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/toolbar/TabLayout;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/TabLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqv;->a:Lcom/android/car/ui/toolbar/TabLayout;

    iput p2, p0, Laqv;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Laqv;->a:Lcom/android/car/ui/toolbar/TabLayout;

    iget v0, p0, Laqv;->b:I

    iget-object v1, p1, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 2
    :cond_1
    :goto_0
    iget v1, p1, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iput v0, p1, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    .line 3
    invoke-virtual {p1, v1}, Lcom/android/car/ui/toolbar/TabLayout;->a(I)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/car/ui/toolbar/TabLayout;->a(I)V

    if-ltz v0, :cond_3

    iget-object p1, p1, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqu;

    iget-object v0, p1, Laqu;->c:Lj$/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_3
    :goto_1
    return-void
.end method
