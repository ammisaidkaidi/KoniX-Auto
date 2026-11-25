.class final Ldhd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laag;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ldhd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Laaf;
    .locals 2

    .line 1
    iget-object v0, p0, Ldhd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldpx;->r(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    const-class v1, Ldhe;

    invoke-static {v0, v1}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ldhe;

    .line 3
    invoke-interface {v0}, Ldhe;->k()Latd;

    move-result-object v0

    new-instance v1, Last;

    iget-object v0, v0, Latd;->a:Latj;

    .line 4
    invoke-direct {v1, v0}, Last;-><init>(Latj;)V

    new-instance v0, Ldhf;

    .line 5
    invoke-direct {v0, v1}, Ldhf;-><init>(Last;)V

    return-object v0
.end method
