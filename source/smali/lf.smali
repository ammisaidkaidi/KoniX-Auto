.class public final Llf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llh;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Llo;

.field final synthetic d:Llg;


# direct methods
.method public constructor <init>(Llg;Llh;Landroid/view/MenuItem;Llo;)V
    .locals 0

    iput-object p1, p0, Llf;->d:Llg;

    iput-object p2, p0, Llf;->a:Llh;

    iput-object p3, p0, Llf;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Llf;->c:Llo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Llf;->a:Llh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llf;->d:Llg;

    iget-object v1, v1, Llg;->a:Lli;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lli;->f:Z

    iget-object v0, v0, Llh;->b:Llo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llo;->i(Z)V

    iget-object v0, p0, Llf;->d:Llg;

    iget-object v0, v0, Llg;->a:Lli;

    iput-boolean v1, v0, Lli;->f:Z

    :cond_0
    iget-object v0, p0, Llf;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf;->c:Llo;

    iget-object v1, p0, Llf;->b:Landroid/view/MenuItem;

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Llo;->z(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
