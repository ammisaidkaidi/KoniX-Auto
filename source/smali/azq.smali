.class public final synthetic Lazq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Lazy;

.field public final synthetic b:Lckb;


# direct methods
.method public synthetic constructor <init>(Lazy;Lckb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazq;->a:Lazy;

    iput-object p2, p0, Lazq;->b:Lckb;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lazq;->a:Lazy;

    iget-object v1, p0, Lazq;->b:Lckb;

    check-cast p1, Lbaw;

    invoke-interface {p1}, Lbaw;->h()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    sget-object p1, Lckb;->a:Lckb;

    const/high16 v2, 0x10000000

    const/high16 v3, 0x20000

    if-ne v1, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v1, v0, Lazy;->j:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 3
    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lazy;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    sget-object p1, Lckb;->b:Lckb;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lazy;->k:Lbfe;

    .line 7
    invoke-virtual {p1}, Lbfe;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v1, v0, Lazy;->j:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    .line 8
    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lazy;->j:Landroid/content/Context;

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lazy;->g(Lckb;I)V

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
