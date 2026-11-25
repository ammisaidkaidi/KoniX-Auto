.class public final Lbsq;
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

    iput-object p1, p0, Lbsq;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbsq;->b()Ldhq;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldhq;
    .locals 2

    .line 1
    iget-object v0, p0, Lbsq;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ldhq;

    invoke-direct {v1, v0}, Ldhq;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
