.class public Lzt;
.super Landroid/app/Service;
.source "PG"

# interfaces
.implements Lzq;


# instance fields
.field private final a:Laae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Laae;

    .line 2
    invoke-direct {v0, p0}, Laae;-><init>(Lzq;)V

    iput-object v0, p0, Lzt;->a:Laae;

    return-void
.end method


# virtual methods
.method public final C()Lzn;
    .locals 1

    iget-object v0, p0, Lzt;->a:Laae;

    iget-object v0, v0, Laae;->a:Lzn;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p1, p0, Lzt;->a:Laae;

    sget-object v0, Lzl;->ON_START:Lzl;

    .line 2
    invoke-virtual {p1, v0}, Laae;->a(Lzl;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzt;->a:Laae;

    sget-object v1, Lzl;->ON_CREATE:Lzl;

    .line 2
    invoke-virtual {v0, v1}, Laae;->a(Lzl;)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzt;->a:Laae;

    sget-object v1, Lzl;->ON_STOP:Lzl;

    .line 2
    invoke-virtual {v0, v1}, Laae;->a(Lzl;)V

    sget-object v1, Lzl;->ON_DESTROY:Lzl;

    invoke-virtual {v0, v1}, Laae;->a(Lzl;)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzt;->a:Laae;

    sget-object v1, Lzl;->ON_START:Lzl;

    .line 2
    invoke-virtual {v0, v1}, Laae;->a(Lzl;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
