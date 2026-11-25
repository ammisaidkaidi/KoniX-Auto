.class public abstract Laji;
.super Lajk;
.source "PG"


# instance fields
.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BrdcstRcvrCnstrntTrckr"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lajk;-><init>(Landroid/content/Context;Lamh;)V

    new-instance p1, Lajh;

    .line 2
    invoke-direct {p1, p0}, Lajh;-><init>(Laji;)V

    iput-object p1, p0, Laji;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/content/IntentFilter;
.end method

.method public abstract c(Landroid/content/Intent;)V
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s: registering receiver"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1
    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laji;->a:Landroid/content/Context;

    iget-object v1, p0, Laji;->f:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p0}, Laji;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s: unregistering receiver"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1
    invoke-virtual {v0, v1}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laji;->a:Landroid/content/Context;

    iget-object v1, p0, Laji;->f:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
