.class final Lmx;
.super Lma;
.source "PG"


# instance fields
.field final synthetic d:Lmz;


# direct methods
.method public constructor <init>(Lmz;Landroid/content/Context;Llo;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmx;->d:Lmz;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lma;-><init>(Landroid/content/Context;Llo;Landroid/view/View;Z)V

    const p2, 0x800005

    iput p2, p0, Lma;->b:I

    iget-object p1, p1, Lmz;->l:Lmy;

    .line 2
    invoke-virtual {p0, p1}, Lma;->e(Lmb;)V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmx;->d:Lmz;

    iget-object v0, v0, Lmz;->c:Llo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llo;->close()V

    :cond_0
    iget-object v0, p0, Lmx;->d:Lmz;

    const/4 v1, 0x0

    iput-object v1, v0, Lmz;->i:Lmx;

    .line 2
    invoke-super {p0}, Lma;->c()V

    return-void
.end method
