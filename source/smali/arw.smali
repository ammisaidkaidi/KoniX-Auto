.class public final synthetic Larw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lary;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Larw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larw;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    .line 4
    iget v0, p0, Larw;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Larw;->a:Landroid/view/View;

    if-eq p1, v0, :cond_3

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lhf;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lhf;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lhf;->t(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :pswitch_0
    iget-object v0, p0, Larw;->a:Landroid/view/View;

    if-eq p1, v0, :cond_0

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lhf;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget-object v0, p0, Larw;->a:Landroid/view/View;

    if-eq p1, v0, :cond_1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1}, Lhf;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_2
    iget-object v0, p0, Larw;->a:Landroid/view/View;

    if-eq p1, v0, :cond_2

    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lhf;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 4
    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
