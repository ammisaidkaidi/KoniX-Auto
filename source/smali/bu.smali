.class final Lbu;
.super Lcc;
.source "PG"

# interfaces
.implements Laak;
.implements Lto;
.implements Ltz;
.implements Laex;
.implements Lcu;


# instance fields
.field final synthetic a:Lbv;


# direct methods
.method public constructor <init>(Lbv;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lbu;->a:Lbv;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p1, v0}, Lcc;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final C()Lzn;
    .locals 1

    iget-object v0, p0, Lbu;->a:Lbv;

    iget-object v0, v0, Lbv;->e:Lzn;

    return-object v0
.end method

.method public final D()Laev;
    .locals 1

    .line 1
    iget-object v0, p0, Lbu;->a:Lbv;

    invoke-virtual {v0}, Ltk;->D()Laev;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lbu;->a:Lbv;

    invoke-virtual {v0, p1}, Lbv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ai()Laed;
    .locals 1

    .line 1
    iget-object v0, p0, Lbu;->a:Lbv;

    invoke-virtual {v0}, Ltk;->ai()Laed;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbu;->a:Lbv;

    invoke-virtual {v0}, Lbv;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
