.class final Lbl;
.super Lby;
.source "PG"


# instance fields
.field final synthetic a:Lby;

.field final synthetic b:Lbm;


# direct methods
.method public constructor <init>(Lbm;Lby;)V
    .locals 0

    iput-object p1, p0, Lbl;->b:Lbm;

    iput-object p2, p0, Lbl;->a:Lby;

    invoke-direct {p0}, Lby;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lbl;->a:Lby;

    invoke-virtual {v0}, Lby;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbl;->a:Lby;

    invoke-virtual {v0, p1}, Lby;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lbl;->b:Lbm;

    iget-object v0, v0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lbl;->a:Lby;

    invoke-virtual {v0}, Lby;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbl;->b:Lbm;

    iget-boolean v0, v0, Lbm;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
