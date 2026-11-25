.class public final synthetic Laux;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavb;

.field public final synthetic b:Landroid/content/BroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lavb;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laux;->a:Lavb;

    iput-object p2, p0, Laux;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Laux;->a:Lavb;

    iget-object v1, p0, Laux;->b:Landroid/content/BroadcastReceiver;

    iget-object v0, v0, Lavb;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
