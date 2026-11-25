.class public final Lcax;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcax;->a:Ldny;

    iput-object p2, p0, Lcax;->b:Ldny;

    iput-object p3, p0, Lcax;->c:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcax;->b()Lcoc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcoc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcax;->a:Ldny;

    check-cast v0, Latg;

    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Lcax;->b:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    iget-object v0, p0, Lcax;->c:Ldny;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcaw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcaw;-><init>(Ldny;I)V

    invoke-static {v1}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    return-object v0
.end method
