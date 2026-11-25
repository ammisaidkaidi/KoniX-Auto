.class public final Lauz;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Ldas;


# direct methods
.method public constructor <init>(Ldas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lauz;->a:Ldas;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lauz;->a:Ldas;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Ldas;->k(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, Ldik;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lauz;->a:Ldas;

    new-instance p2, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "Failure starting BT adapter"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ldas;->l(Ljava/lang/Throwable;)Z

    :cond_1
    return-void
.end method
