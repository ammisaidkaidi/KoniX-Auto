.class public final synthetic Lari;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laps;


# instance fields
.field public final synthetic a:Larn;


# direct methods
.method public synthetic constructor <init>(Larn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lari;->a:Larn;

    return-void
.end method


# virtual methods
.method public final onMenuItemChanged(Lapu;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lari;->a:Larn;

    iget-object v1, v0, Larn;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, v0, Larn;->f:Ljava/util/List;

    invoke-virtual {v0, p1}, Larn;->a(Lapu;)Laoe;

    move-result-object p1

    .line 2
    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Larn;->g:Laop;

    .line 3
    invoke-virtual {p1, v1}, Lqq;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Larn;->b()V

    :goto_0
    invoke-virtual {v0}, Larn;->c()V

    return-void
.end method
