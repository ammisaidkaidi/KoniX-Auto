.class final Lajh;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Laji;


# direct methods
.method public constructor <init>(Laji;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lajh;->a:Laji;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    iget-object p1, p0, Lajh;->a:Laji;

    invoke-virtual {p1, p2}, Laji;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
