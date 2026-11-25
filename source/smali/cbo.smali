.class public final Lcbo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbo;->a:Ldny;

    iput-object p2, p0, Lcbo;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcbo;->b()Lcoc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcoc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcbo;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    iget-object v1, p0, Lcbo;->b:Ldny;

    check-cast v1, Ldhr;

    invoke-virtual {v1}, Ldhr;->b()Landroid/content/Context;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcbn;

    invoke-direct {v1, v0}, Lcbn;-><init>(Lcoc;)V

    .line 2
    invoke-static {v1}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcns;->a:Lcns;

    :goto_0
    return-object v0
.end method
