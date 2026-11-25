.class public final synthetic Lazr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Lazy;

.field public final synthetic b:Lckb;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lazy;Lckb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazr;->a:Lazy;

    iput-object p2, p0, Lazr;->b:Lckb;

    iput p3, p0, Lazr;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lazr;->a:Lazy;

    iget-object v1, p0, Lazr;->b:Lckb;

    iget v2, p0, Lazr;->c:I

    check-cast p1, Lbaw;

    invoke-virtual {v0, v1, v2}, Lazy;->g(Lckb;I)V

    invoke-interface {p1}, Lbaw;->e()V

    const/4 p1, 0x2

    if-ne v2, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, v0, Lazy;->j:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
