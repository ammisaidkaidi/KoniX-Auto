.class public final Lmt;
.super Lma;
.source "PG"


# instance fields
.field final synthetic d:Lmz;


# direct methods
.method public constructor <init>(Lmz;Landroid/content/Context;Lmk;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmt;->d:Lmz;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lma;-><init>(Landroid/content/Context;Llo;Landroid/view/View;Z)V

    iget-object p2, p3, Lmk;->k:Llr;

    invoke-virtual {p2}, Llr;->o()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lmz;->g:Lmw;

    if-nez p2, :cond_0

    iget-object p2, p1, Lmz;->f:Lme;

    .line 2
    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Lma;->a:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Lmz;->l:Lmy;

    .line 3
    invoke-virtual {p0, p1}, Lma;->e(Lmb;)V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmt;->d:Lmz;

    const/4 v1, 0x0

    iput-object v1, v0, Lmz;->j:Lmt;

    invoke-super {p0}, Lma;->c()V

    return-void
.end method
