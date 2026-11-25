.class public final Lbvh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbvj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbvj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbvh;->a:Lbvj;

    iget-object v0, p2, Lbvj;->a:Lbvi;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p2, p2, Lbvj;->a:Lbvi;

    .line 2
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method


# virtual methods
.method public final a(Lbvg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbvh;->a:Lbvj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbvj;->a:Lbvi;

    .line 2
    sget v1, Lbvi;->c:I

    .line 3
    iget-object v0, v0, Lbvi;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lbvg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbvh;->a:Lbvj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbvj;->a:Lbvi;

    .line 2
    sget v1, Lbvi;->c:I

    .line 3
    iget-object v0, v0, Lbvi;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
