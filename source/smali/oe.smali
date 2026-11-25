.class final Loe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Loh;


# direct methods
.method public constructor <init>(Loh;)V
    .locals 0

    iput-object p1, p0, Loe;->a:Loh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Loe;->a:Loh;

    iget-object p1, p1, Loh;->d:Lok;

    invoke-virtual {p1, p3}, Lok;->setSelection(I)V

    iget-object p1, p0, Loe;->a:Loh;

    iget-object p1, p1, Loh;->d:Lok;

    .line 2
    invoke-virtual {p1}, Lok;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Loe;->a:Loh;

    iget-object p4, p1, Loh;->d:Lok;

    iget-object p1, p1, Loh;->b:Landroid/widget/ListAdapter;

    .line 3
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Lok;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Loe;->a:Loh;

    .line 4
    invoke-virtual {p1}, Lqf;->k()V

    return-void
.end method
