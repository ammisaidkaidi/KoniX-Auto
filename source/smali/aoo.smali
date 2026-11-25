.class final Laoo;
.super Lrr;
.source "PG"


# static fields
.field public static final synthetic p:I


# instance fields
.field final a:Lasl;

.field final b:Lasl;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field final f:Landroid/view/ViewGroup;

.field final g:Landroid/view/ViewGroup;

.field final h:Landroid/view/View;

.field final i:Landroid/widget/Switch;

.field final j:Landroid/widget/CheckBox;

.field final k:Landroid/widget/RadioButton;

.field final l:Landroid/widget/ImageView;

.field final m:Landroid/view/View;

.field final n:Landroid/view/View;

.field final o:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lrr;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f09009d

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lasl;

    iput-object v0, p0, Laoo;->a:Lasl;

    .line 3
    const v0, 0x7f090092

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lasl;

    iput-object v0, p0, Laoo;->b:Lasl;

    .line 4
    const v0, 0x7f090096

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoo;->c:Landroid/widget/ImageView;

    .line 5
    const v0, 0x7f090094

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoo;->d:Landroid/widget/ImageView;

    .line 6
    const v0, 0x7f090091

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoo;->e:Landroid/widget/ImageView;

    .line 7
    const v0, 0x7f090097

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laoo;->f:Landroid/view/ViewGroup;

    .line 8
    const v0, 0x7f09008e

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laoo;->g:Landroid/view/ViewGroup;

    .line 9
    const v0, 0x7f090090

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoo;->h:Landroid/view/View;

    .line 10
    const v0, 0x7f09009c

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Laoo;->i:Landroid/widget/Switch;

    .line 11
    const v0, 0x7f090093

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Laoo;->j:Landroid/widget/CheckBox;

    .line 12
    const v0, 0x7f090098

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Laoo;->k:Landroid/widget/RadioButton;

    .line 13
    const v0, 0x7f09009b

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoo;->l:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f090099

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoo;->n:Landroid/view/View;

    .line 15
    const v0, 0x7f09009e

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoo;->m:Landroid/view/View;

    .line 16
    const v0, 0x7f09008f

    invoke-static {p1, v0}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Laoo;->o:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Laoo;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b(Laoe;Landroid/widget/CompoundButton;Larh;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, p1, Laoe;->e:Z

    .line 3
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 4
    new-instance v1, Laon;

    invoke-direct {v1, p1}, Laon;-><init>(Laoe;)V

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Laoo;->m:Landroid/view/View;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Laoo;->m:Landroid/view/View;

    new-instance v1, Laol;

    invoke-direct {v1, p2, p3}, Laol;-><init>(Landroid/widget/CompoundButton;Larh;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Laoo;->m:Landroid/view/View;

    .line 7
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Laoo;->n:Landroid/view/View;

    .line 8
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Laoo;->o:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Laoo;->g:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Laoo;->g:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method
