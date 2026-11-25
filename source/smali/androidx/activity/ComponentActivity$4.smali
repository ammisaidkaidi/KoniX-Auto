.class public Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzo;


# instance fields
.field final synthetic a:Ltk;


# direct methods
.method public constructor <init>(Ltk;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 0

    .line 1
    sget-object p1, Lzl;->ON_DESTROY:Lzl;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Ltk;

    iget-object p1, p1, Ltk;->f:Ltp;

    const/4 p2, 0x0

    iput-object p2, p1, Ltp;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Ltk;

    invoke-virtual {p1}, Ltk;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Ltk;

    .line 2
    invoke-virtual {p1}, Ltk;->ai()Laed;

    move-result-object p1

    invoke-virtual {p1}, Laed;->b()V

    :cond_0
    return-void
.end method
