.class public final Lkq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkn;


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;

.field final d:Lvi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq;->b:Landroid/content/Context;

    iput-object p2, p0, Lkq;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkq;->c:Ljava/util/ArrayList;

    new-instance p1, Lvi;

    invoke-direct {p1}, Lvi;-><init>()V

    iput-object p1, p0, Lkq;->d:Lvi;

    return-void
.end method


# virtual methods
.method public final a(Lko;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Lko;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lko;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Lko;Landroid/view/Menu;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lko;)Landroid/view/ActionMode;
    .locals 4

    .line 1
    iget-object v0, p0, Lkq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lkq;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lkr;->b:Lko;

    if-eq v3, p1, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lkr;

    iget-object v1, p0, Lkq;->b:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1, p1}, Lkr;-><init>(Landroid/content/Context;Lko;)V

    iget-object p1, p0, Lkq;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2

    .line 1
    iget-object v0, p0, Lkq;->d:Lvi;

    invoke-virtual {v0, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Lmf;

    iget-object v1, p0, Lkq;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmf;-><init>(Landroid/content/Context;Let;)V

    iget-object v1, p0, Lkq;->d:Lvi;

    .line 2
    invoke-virtual {v1, p1, v0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
