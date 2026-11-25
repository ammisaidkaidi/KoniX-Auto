.class public Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzo;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lts;

.field final synthetic c:Lub;

.field final synthetic d:Lty;


# direct methods
.method public constructor <init>(Lty;Ljava/lang/String;Lts;Lub;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lts;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 3

    .line 1
    sget-object p1, Lzl;->ON_START:Lzl;

    invoke-virtual {p1, p2}, Lzl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p1, p1, Lty;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    new-instance v0, Ltw;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lts;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lub;

    invoke-direct {v0, v1, v2}, Ltw;-><init>(Lts;Lub;)V

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p1, p1, Lty;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p1, p1, Lty;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p2, p2, Lty;->g:Ljava/util/Map;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lts;

    .line 6
    invoke-interface {p2, p1}, Lts;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p1, p1, Lty;->h:Landroid/os/Bundle;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ltr;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p2, p2, Lty;->h:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Lts;

    iget v0, p1, Ltr;->a:I

    iget-object p1, p1, Ltr;->b:Landroid/content/Intent;

    .line 9
    invoke-static {v0, p1}, Luc;->b(ILandroid/content/Intent;)Ljava/util/Map;

    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, Lts;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lzl;->ON_STOP:Lzl;

    .line 11
    invoke-virtual {p1, p2}, Lzl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p1, p1, Lty;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p1, Lzl;->ON_DESTROY:Lzl;

    .line 13
    invoke-virtual {p1, p2}, Lzl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Lty;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p2}, Lty;->d(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    return-void
.end method
