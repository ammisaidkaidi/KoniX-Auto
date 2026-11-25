.class public final Lwu;
.super Lww;
.source "PG"


# instance fields
.field public a:I

.field public b:Lvu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lww;-><init>(Landroid/content/Context;)V

    .line 2
    const/16 p1, 0x8

    invoke-super {p0, p1}, Lww;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Lvx;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lwu;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz p2, :cond_1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :cond_0
    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    .line 1
    :cond_3
    :goto_1
    instance-of p2, p1, Lvu;

    if-eqz p2, :cond_4

    .line 2
    check-cast p1, Lvu;

    iput v0, p1, Lvu;->a:I

    :cond_4
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lwu;->b:Lvu;

    iput p1, v0, Lvu;->c:I

    return-void
.end method

.method protected final c()V
    .locals 1

    .line 1
    new-instance v0, Lvu;

    invoke-direct {v0}, Lvu;-><init>()V

    iput-object v0, p0, Lwu;->b:Lvu;

    iput-object v0, p0, Lwu;->h:Lwb;

    .line 2
    invoke-virtual {p0}, Lww;->f()V

    return-void
.end method
