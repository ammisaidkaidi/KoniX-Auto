.class final Lavj;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lavk;


# direct methods
.method public constructor <init>(Lavk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lavj;->a:Lavk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lavj;->a:Lavk;

    invoke-virtual {p1}, Lavk;->b()V

    return-void
.end method
