.class final Ljk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljw;I)V
    .locals 0

    iput p2, p0, Ljk;->b:I

    iput-object p1, p0, Ljk;->a:Ljw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 9
    iget v0, p0, Ljk;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljk;->a:Ljw;

    iget v2, v0, Ljw;->D:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljw;->y(I)V

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v2, v0, Ljw;->m:Landroid/widget/PopupWindow;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v3, 0x37

    .line 1
    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Ljk;->a:Ljw;

    .line 2
    invoke-virtual {v0}, Ljw;->z()V

    iget-object v0, p0, Ljk;->a:Ljw;

    .line 3
    invoke-virtual {v0}, Ljw;->F()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v1, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 5
    invoke-static {v1}, Lhs;->O(Landroid/view/View;)Lbew;

    move-result-object v1

    invoke-virtual {v1, v2}, Lbew;->b(F)V

    iput-object v1, v0, Ljw;->G:Lbew;

    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->G:Lbew;

    new-instance v1, Ljj;

    invoke-direct {v1, p0}, Ljj;-><init>(Ljk;)V

    .line 6
    invoke-virtual {v0, v1}, Lbew;->d(Lhv;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 7
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ljk;->a:Ljw;

    iget v2, v0, Ljw;->D:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_2

    const/16 v2, 0x6c

    .line 10
    invoke-virtual {v0, v2}, Ljw;->y(I)V

    :cond_2
    iget-object v0, p0, Ljk;->a:Ljw;

    iput-boolean v1, v0, Ljw;->C:Z

    iput v1, v0, Ljw;->D:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
