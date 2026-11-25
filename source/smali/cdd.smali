.class public final Lcdd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final e:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdd;->a:Ldny;

    iput-object p2, p0, Lcdd;->b:Ldny;

    iput-object p3, p0, Lcdd;->c:Ldny;

    iput-object p4, p0, Lcdd;->d:Ldny;

    iput-object p5, p0, Lcdd;->e:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcdd;->b()Lcdc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcdc;
    .locals 7

    .line 1
    iget-object v0, p0, Lcdd;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcdd;->b:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcoc;

    iget-object v0, p0, Lcdd;->c:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcoc;

    iget-object v0, p0, Lcdd;->d:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoc;

    iget-object v0, p0, Lcdd;->e:Ldny;

    check-cast v0, Latg;

    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v6

    new-instance v0, Lcdc;

    .line 2
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcdc;-><init>(Landroid/content/Context;Lcoc;Lcoc;Lcoc;Lcoc;)V

    return-object v0
.end method
