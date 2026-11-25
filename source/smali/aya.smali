.class public final Laya;
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

.field private final g:Ldny;

.field private final h:Ldny;

.field private final synthetic i:I


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I)V
    .locals 0

    iput p9, p0, Laya;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laya;->a:Ldny;

    iput-object p2, p0, Laya;->b:Ldny;

    iput-object p3, p0, Laya;->c:Ldny;

    iput-object p4, p0, Laya;->d:Ldny;

    iput-object p5, p0, Laya;->e:Ldny;

    iput-object p6, p0, Laya;->f:Ldny;

    iput-object p7, p0, Laya;->g:Ldny;

    iput-object p8, p0, Laya;->h:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V
    .locals 0

    iput p9, p0, Laya;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laya;->b:Ldny;

    iput-object p2, p0, Laya;->f:Ldny;

    iput-object p3, p0, Laya;->e:Ldny;

    iput-object p4, p0, Laya;->g:Ldny;

    iput-object p5, p0, Laya;->h:Ldny;

    iput-object p6, p0, Laya;->c:Ldny;

    iput-object p7, p0, Laya;->d:Ldny;

    iput-object p8, p0, Laya;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[C)V
    .locals 0

    iput p9, p0, Laya;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laya;->b:Ldny;

    iput-object p2, p0, Laya;->a:Ldny;

    iput-object p3, p0, Laya;->h:Ldny;

    iput-object p4, p0, Laya;->c:Ldny;

    iput-object p5, p0, Laya;->e:Ldny;

    iput-object p6, p0, Laya;->f:Ldny;

    iput-object p7, p0, Laya;->g:Ldny;

    iput-object p8, p0, Laya;->d:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 13

    .line 5
    iget v0, p0, Laya;->i:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laya;->b:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Laya;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    iget-object v0, p0, Laya;->h:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbvh;

    iget-object v0, p0, Laya;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldai;

    iget-object v0, p0, Laya;->e:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v5

    iget-object v0, p0, Laya;->f:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v6

    iget-object v7, p0, Laya;->g:Ldny;

    iget-object v0, p0, Laya;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v0, Lbzm;

    .line 6
    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lbzm;-><init>(Lbwo;Lbvh;Ldai;Ldgz;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Laya;->b:Ldny;

    check-cast v0, Laxu;

    .line 1
    invoke-virtual {v0}, Laxu;->b()Ldhq;

    move-result-object v2

    iget-object v3, p0, Laya;->f:Ldny;

    iget-object v0, p0, Laya;->e:Ldny;

    check-cast v0, Lauk;

    invoke-virtual {v0}, Lauk;->b()Lcbv;

    move-result-object v4

    iget-object v0, p0, Laya;->g:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lbcj;

    iget-object v0, p0, Laya;->h:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    iget-object v0, p0, Laya;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Laya;->d:Ldny;

    check-cast v1, Ldhr;

    invoke-virtual {v1}, Ldhr;->b()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Laya;->a:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ldgq;

    new-instance v12, Laus;

    .line 2
    move-object v6, v0

    check-cast v6, Latt;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Laus;-><init>(Ldhq;Ldny;Lcbv;Lbcj;Latt;Landroid/content/Context;Ldgq;[B[B[B)V

    return-object v12

    :pswitch_1
    iget-object v0, p0, Laya;->a:Ldny;

    check-cast v0, Ldhr;

    .line 3
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Laya;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lceo;

    iget-object v0, p0, Laya;->c:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lj$/util/Optional;

    iget-object v0, p0, Laya;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldai;

    iget-object v0, p0, Laya;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    iget-object v0, p0, Laya;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageManager;

    iget-object v0, p0, Laya;->g:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/UserManager;

    iget-object v0, p0, Laya;->h:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lj$/util/Optional;

    .line 4
    new-instance v0, Laxz;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Laxz;-><init>(Landroid/content/Context;Lceo;Lj$/util/Optional;Ldai;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lj$/util/Optional;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
