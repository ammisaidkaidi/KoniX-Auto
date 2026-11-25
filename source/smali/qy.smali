.class final Lqy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsx;


# instance fields
.field final synthetic a:Lra;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lra;I)V
    .locals 0

    iput p2, p0, Lqy;->b:I

    iput-object p1, p0, Lqy;->a:Lra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    .line 3
    iget v0, p0, Lqy;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 4
    invoke-static {p1}, Lra;->be(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lrb;->rightMargin:I

    add-int/2addr p1, v0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 2
    invoke-static {p1}, Lra;->ba(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lrb;->bottomMargin:I

    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    .line 3
    iget v0, p0, Lqy;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 4
    invoke-static {p1}, Lra;->bb(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lrb;->leftMargin:I

    sub-int/2addr p1, v0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrb;

    .line 2
    invoke-static {p1}, Lra;->bf(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lrb;->topMargin:I

    sub-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 2

    .line 2
    iget v0, p0, Lqy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqy;->a:Lra;

    iget v1, v0, Lra;->D:I

    invoke-virtual {v0}, Lra;->as()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lqy;->a:Lra;

    iget v1, v0, Lra;->E:I

    .line 1
    invoke-virtual {v0}, Lra;->aq()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    .line 2
    iget v0, p0, Lqy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqy;->a:Lra;

    invoke-virtual {v0}, Lra;->ar()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lqy;->a:Lra;

    .line 1
    invoke-virtual {v0}, Lra;->at()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    .line 2
    iget v0, p0, Lqy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqy;->a:Lra;

    invoke-virtual {v0, p1}, Lra;->aw(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lqy;->a:Lra;

    .line 1
    invoke-virtual {v0, p1}, Lra;->aw(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
