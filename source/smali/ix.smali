.class public final Lix;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljb;

.field final synthetic b:Liy;


# direct methods
.method public constructor <init>(Liy;Ljb;)V
    .locals 0

    iput-object p1, p0, Lix;->b:Liy;

    iput-object p2, p0, Lix;->a:Ljb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lix;->b:Liy;

    iget-object p1, p1, Liy;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lix;->a:Ljb;

    iget-object p2, p2, Ljb;->b:Ljy;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lix;->b:Liy;

    iget-boolean p1, p1, Liy;->i:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lix;->a:Ljb;

    .line 2
    iget-object p1, p1, Ljb;->b:Ljy;

    invoke-virtual {p1}, Ljy;->dismiss()V

    :cond_0
    return-void
.end method
