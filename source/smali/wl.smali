.class public final Lwl;
.super Lwk;
.source "PG"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Lwt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwk;-><init>(Lwt;)V

    .line 2
    instance-of p1, p1, Lwp;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lwl;->l:I

    return-void

    :cond_0
    const/4 p1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwl;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwl;->i:Z

    iput p1, p0, Lwl;->f:I

    iget-object p1, p0, Lwl;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwi;

    .line 2
    invoke-interface {v0}, Lwi;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method
