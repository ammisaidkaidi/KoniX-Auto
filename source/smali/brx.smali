.class public final Lbrx;
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

    iput-object p1, p0, Lbrx;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbrx;->b()Lbrw;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbrw;
    .locals 2

    .line 1
    iget-object v0, p0, Lbrx;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    new-instance v1, Lbrw;

    .line 2
    invoke-direct {v1, v0}, Lbrw;-><init>(Lcoc;)V

    return-object v1
.end method
