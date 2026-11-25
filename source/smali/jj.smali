.class final Ljj;
.super Lhw;
.source "PG"


# instance fields
.field final synthetic a:Ljk;


# direct methods
.method public constructor <init>(Ljk;)V
    .locals 0

    iput-object p1, p0, Ljj;->a:Ljk;

    invoke-direct {p0}, Lhw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljj;->a:Ljk;

    iget-object v0, v0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Ljj;->a:Ljk;

    iget-object v0, v0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->G:Lbew;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbew;->d(Lhv;)V

    iget-object v0, p0, Ljj;->a:Ljk;

    iget-object v0, v0, Ljk;->a:Ljw;

    iput-object v1, v0, Ljw;->G:Lbew;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljj;->a:Ljk;

    iget-object v0, v0, Ljk;->a:Ljw;

    iget-object v0, v0, Ljw;->l:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
