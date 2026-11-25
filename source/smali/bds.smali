.class public final Lbds;
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

.field private final f:Ldny;

.field private final synthetic g:I


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I)V
    .locals 0

    iput p7, p0, Lbds;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbds;->a:Ldny;

    iput-object p2, p0, Lbds;->b:Ldny;

    iput-object p3, p0, Lbds;->c:Ldny;

    iput-object p4, p0, Lbds;->d:Ldny;

    iput-object p5, p0, Lbds;->e:Ldny;

    iput-object p6, p0, Lbds;->f:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V
    .locals 0

    iput p7, p0, Lbds;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbds;->d:Ldny;

    iput-object p2, p0, Lbds;->b:Ldny;

    iput-object p3, p0, Lbds;->f:Ldny;

    iput-object p4, p0, Lbds;->a:Ldny;

    iput-object p5, p0, Lbds;->c:Ldny;

    iput-object p6, p0, Lbds;->e:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[C)V
    .locals 0

    iput p7, p0, Lbds;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbds;->d:Ldny;

    iput-object p2, p0, Lbds;->a:Ldny;

    iput-object p3, p0, Lbds;->e:Ldny;

    iput-object p4, p0, Lbds;->b:Ldny;

    iput-object p5, p0, Lbds;->c:Ldny;

    iput-object p6, p0, Lbds;->f:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 11

    .line 5
    iget v0, p0, Lbds;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbds;->d:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbds;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldai;

    iget-object v0, p0, Lbds;->e:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v4

    iget-object v0, p0, Lbds;->b:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v5

    iget-object v6, p0, Lbds;->c:Ldny;

    iget-object v0, p0, Lbds;->f:Ldny;

    check-cast v0, Lcbw;

    invoke-virtual {v0}, Lcbw;->b()Lcbv;

    move-result-object v7

    new-instance v0, Lcbh;

    .line 6
    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcbh;-><init>(Lbwo;Ldai;Ldgz;Ldgz;Ldny;Lcbv;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lbds;->d:Ldny;

    check-cast v0, Ldhr;

    .line 1
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lbds;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbcj;

    iget-object v0, p0, Lbds;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbby;

    iget-object v0, p0, Lbds;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/car/CarProjectionManager;

    iget-object v0, p0, Lbds;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldhq;

    iget-object v0, p0, Lbds;->e:Ldny;

    check-cast v0, Laxu;

    invoke-virtual {v0}, Laxu;->b()Ldhq;

    move-result-object v7

    .line 2
    new-instance v0, Lbah;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lbah;-><init>(Landroid/content/Context;Lbcj;Lbby;Landroid/car/CarProjectionManager;Ldhq;Ldhq;[B[B[B)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbds;->a:Ldny;

    check-cast v0, Ldhr;

    .line 3
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lbds;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lbds;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/car/CarProjectionManager;

    invoke-static {}, Latz;->c()Lbdw;

    move-result-object v5

    iget-object v0, p0, Lbds;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldah;

    iget-object v0, p0, Lbds;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lbde;

    iget-object v0, p0, Lbds;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationManager;

    .line 4
    new-instance v0, Lbdq;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lbdq;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/car/CarProjectionManager;Lbdw;Ldah;Lbde;Landroid/location/LocationManager;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
