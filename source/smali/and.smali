.class public final Land;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lanc;


# instance fields
.field public a:Lanc;

.field public b:Lcom/android/car/ui/baselayout/Insets;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v0}, Lcom/android/car/ui/baselayout/Insets;-><init>()V

    iput-object v0, p0, Land;->b:Lcom/android/car/ui/baselayout/Insets;

    iput-object p1, p0, Land;->c:Landroid/app/Activity;

    iput-object p2, p0, Land;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 5

    .line 1
    iget-object v0, p0, Land;->b:Lcom/android/car/ui/baselayout/Insets;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/baselayout/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Land;->b:Lcom/android/car/ui/baselayout/Insets;

    iget-object v0, p0, Land;->a:Lanc;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    return-void

    :cond_1
    iget-object v0, p0, Land;->c:Landroid/app/Activity;

    .line 3
    instance-of v1, v0, Lanc;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lanc;

    invoke-interface {v0, p1}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Land;->c:Landroid/app/Activity;

    .line 5
    instance-of v3, v1, Lbv;

    if-eqz v3, :cond_4

    .line 6
    check-cast v1, Lbv;

    .line 7
    invoke-virtual {v1}, Lbv;->aI()Lcr;

    move-result-object v1

    invoke-virtual {v1}, Lcr;->i()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr;

    .line 8
    instance-of v4, v3, Lanc;

    if-eqz v4, :cond_3

    .line 9
    check-cast v3, Lanc;

    invoke-interface {v3, p1}, Lanc;->a(Lcom/android/car/ui/baselayout/Insets;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Land;->d:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v2

    .line 11
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p1

    .line 10
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    return-void
.end method
