.class public final Lbtp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtp;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbtp;->b()Lcoc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcoc;
    .locals 2

    .line 1
    iget-object v0, p0, Lbtp;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwh;

    if-nez v0, :cond_0

    sget-object v0, Lcns;->a:Lcns;

    goto :goto_0

    :cond_0
    new-instance v1, Lcof;

    .line 3
    invoke-direct {v1, v0}, Lcof;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcns;->a:Lcns;

    .line 2
    :goto_0
    return-object v0
.end method
