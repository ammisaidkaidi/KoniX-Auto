.class public final Lth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lty;

.field final synthetic c:Lczd;


# direct methods
.method public constructor <init>(Lty;ILczd;[B)V
    .locals 0

    iput-object p1, p0, Lth;->b:Lty;

    iput p2, p0, Lth;->a:I

    iput-object p3, p0, Lth;->c:Lczd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lth;->b:Lty;

    iget v1, p0, Lth;->a:I

    iget-object v2, p0, Lth;->c:Lczd;

    iget-object v2, v2, Lczd;->a:Ljava/lang/Object;

    iget-object v3, v0, Lty;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lty;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltw;

    if-eqz v3, :cond_3

    iget-object v3, v3, Ltw;->a:Lts;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, v0, Lty;->e:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v3, v2}, Lts;->a(Ljava/lang/Object;)V

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void

    .line 2
    :cond_3
    :goto_1
    iget-object v3, v0, Lty;->h:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Lty;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
