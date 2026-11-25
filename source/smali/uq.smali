.class final Luq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Luu;


# direct methods
.method public constructor <init>(Luu;)V
    .locals 0

    iput-object p1, p0, Luq;->a:Luu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lus;

    .line 2
    iget-object v0, p1, Lus;->d:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Luq;->a:Luu;

    iget-object v0, v0, Luu;->a:Landroid/view/LayoutInflater;

    .line 3
    iget v2, p1, Lus;->c:I

    iget-object v3, p1, Lus;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lus;->d:Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p1, Lus;->e:Lapw;

    iget-object v2, p1, Lus;->d:Landroid/view/View;

    iget v3, p1, Lus;->c:I

    iget-object v3, p1, Lus;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Lapw;->a:Lapx;

    iget-object v0, v0, Lapw;->b:Lj$/util/function/Consumer;

    iput-object v2, v3, Lapx;->d:Landroid/view/View;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    const v4, 0x7f0900b1

    .line 5
    invoke-static {v2, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lapx;->e:Landroid/view/View;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    const v4, 0x7f0900b0

    .line 6
    invoke-static {v2, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lapx;->f:Landroid/widget/ImageView;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    const v4, 0x7f0900b2

    .line 7
    invoke-static {v2, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v3, Lapx;->g:Landroid/widget/Switch;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    const v4, 0x7f0900b3

    .line 8
    invoke-static {v2, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lapx;->h:Landroid/widget/TextView;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    const v4, 0x7f0900b4

    .line 9
    invoke-static {v2, v4}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lapx;->i:Landroid/widget/TextView;

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050010

    .line 11
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v3, Lapx;->j:Z

    .line 12
    invoke-virtual {v3}, Lapx;->a()V

    iget-object v2, v3, Lapx;->d:Landroid/view/View;

    .line 13
    invoke-interface {v0, v2}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Luq;->a:Luu;

    iget-object v0, v0, Luu;->c:Lut;

    .line 14
    const/4 v2, 0x0

    iput-object v2, p1, Lus;->e:Lapw;

    .line 15
    iput-object v2, p1, Lus;->a:Luu;

    .line 16
    iput-object v2, p1, Lus;->b:Landroid/view/ViewGroup;

    .line 17
    iput v1, p1, Lus;->c:I

    .line 18
    iput-object v2, p1, Lus;->d:Landroid/view/View;

    iget-object v0, v0, Lut;->c:Lgf;

    .line 19
    invoke-virtual {v0, p1}, Lge;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
