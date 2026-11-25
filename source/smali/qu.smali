.class public final Lqu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrr;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lrr;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lqu;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lqu;->b:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lqu;->b:I

    iget v1, p0, Lqu;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final c(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput p1, p0, Lqu;->a:I

    return-void

    :cond_0
    iput p1, p0, Lqu;->b:I

    return-void
.end method
