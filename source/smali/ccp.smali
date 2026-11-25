.class public final synthetic Lccp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Lccq;

.field public final synthetic b:Ldpz;


# direct methods
.method public synthetic constructor <init>(Lccq;Ldpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccp;->a:Lccq;

    iput-object p2, p0, Lccp;->b:Ldpz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lccp;->a:Lccq;

    iget-object v1, p0, Lccp;->b:Ldpz;

    check-cast p1, Ljava/util/List;

    sget-object v2, Lccs;->c:Lccs;

    .line 2
    invoke-virtual {v2}, Lddk;->n()Lddf;

    move-result-object v2

    check-cast v2, Lddh;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccs;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Lddf;->n(Lddk;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, v2, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v2}, Lddf;->k()V

    iput-boolean v3, v2, Lddf;->c:Z

    :cond_2
    iget-object p1, v2, Lddh;->b:Lddk;

    .line 6
    check-cast p1, Lccs;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lccs;->b:Ldpz;

    iget v1, p1, Lccs;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lccs;->a:I

    iget-object p1, v0, Lccq;->b:Ljava/util/Set;

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v1, v0, Lccq;->b:Ljava/util/Set;

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccu;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    move v3, v4

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 11
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lccq;->a:Landroid/app/Application;

    .line 12
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/android/libraries/performance/primes/transmitter/LifeboatReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, v0, Lccq;->a:Landroid/app/Application;

    .line 14
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v3, "Transmitters"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v2}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lccs;

    invoke-virtual {p1}, Ldbv;->h()[B

    move-result-object p1

    .line 17
    const-string v2, "MetricSnapshot"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, v0, Lccq;->a:Landroid/app/Application;

    .line 18
    invoke-virtual {p1, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method
