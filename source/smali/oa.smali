.class final Loa;
.super Lpm;
.source "PG"


# instance fields
.field final synthetic a:Loh;

.field final synthetic b:Lok;


# direct methods
.method public constructor <init>(Lok;Landroid/view/View;Loh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa;->b:Lok;

    iput-object p3, p0, Loa;->a:Loh;

    invoke-direct {p0, p2}, Lpm;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lmg;
    .locals 1

    iget-object v0, p0, Loa;->a:Loh;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Loa;->b:Lok;

    iget-object v0, v0, Lok;->b:Loj;

    invoke-interface {v0}, Loj;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Loa;->b:Lok;

    .line 2
    invoke-virtual {v0}, Lok;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
