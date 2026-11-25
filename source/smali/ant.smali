.class public final synthetic Lant;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laod;


# instance fields
.field public final synthetic a:Lanu;

.field public final synthetic b:Laop;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lanu;Laop;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lant;->a:Lanu;

    iput-object p2, p0, Lant;->b:Laop;

    iput-object p3, p0, Lant;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Laoe;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lant;->a:Lanu;

    iget-object v1, p0, Lant;->b:Laop;

    iget-object v2, p0, Lant;->c:Ljava/util/List;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lanu;->a:Laoe;

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Laoe;->a(Z)V

    iget-object p2, v0, Lanu;->a:Laoe;

    .line 2
    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p2}, Lqq;->notifyItemChanged(I)V

    :cond_1
    iput-object p1, v0, Lanu;->a:Laoe;

    iget-object p1, v0, Lanu;->a:Laoe;

    .line 3
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lanu;->b:I

    iget-boolean p1, v0, Lanu;->c:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lanu;->b()V

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void
.end method
