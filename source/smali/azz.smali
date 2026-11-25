.class public final Lazz;
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

.field private final synthetic h:I


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I)V
    .locals 0

    iput p8, p0, Lazz;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazz;->a:Ldny;

    iput-object p2, p0, Lazz;->b:Ldny;

    iput-object p3, p0, Lazz;->c:Ldny;

    iput-object p4, p0, Lazz;->d:Ldny;

    iput-object p5, p0, Lazz;->e:Ldny;

    iput-object p6, p0, Lazz;->f:Ldny;

    iput-object p7, p0, Lazz;->g:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V
    .locals 0

    iput p8, p0, Lazz;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazz;->g:Ldny;

    iput-object p2, p0, Lazz;->b:Ldny;

    iput-object p3, p0, Lazz;->f:Ldny;

    iput-object p4, p0, Lazz;->c:Ldny;

    iput-object p5, p0, Lazz;->e:Ldny;

    iput-object p6, p0, Lazz;->d:Ldny;

    iput-object p7, p0, Lazz;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[C)V
    .locals 0

    iput p8, p0, Lazz;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazz;->f:Ldny;

    iput-object p2, p0, Lazz;->d:Ldny;

    iput-object p3, p0, Lazz;->g:Ldny;

    iput-object p4, p0, Lazz;->b:Ldny;

    iput-object p5, p0, Lazz;->c:Ldny;

    iput-object p6, p0, Lazz;->a:Ldny;

    iput-object p7, p0, Lazz;->e:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[S)V
    .locals 0

    iput p8, p0, Lazz;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazz;->f:Ldny;

    iput-object p2, p0, Lazz;->a:Ldny;

    iput-object p3, p0, Lazz;->d:Ldny;

    iput-object p4, p0, Lazz;->g:Ldny;

    iput-object p5, p0, Lazz;->b:Ldny;

    iput-object p6, p0, Lazz;->c:Ldny;

    iput-object p7, p0, Lazz;->e:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 12

    .line 7
    iget v0, p0, Lazz;->h:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lazz;->f:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lazz;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lazz;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbvh;

    iget-object v0, p0, Lazz;->g:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lazz;->b:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v6

    iget-object v0, p0, Lazz;->c:Ldny;

    check-cast v0, Lcbt;

    invoke-virtual {v0}, Lcbt;->b()Lcbs;

    move-result-object v7

    iget-object v8, p0, Lazz;->e:Ldny;

    .line 8
    new-instance v0, Lcam;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcam;-><init>(Lbwo;Landroid/content/Context;Lbvh;Ljava/util/concurrent/Executor;Ldgz;Lcbs;Ldny;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lazz;->f:Ldny;

    check-cast v0, Lbwp;

    .line 1
    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lazz;->d:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lazz;->g:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldai;

    iget-object v0, p0, Lazz;->b:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v5

    iget-object v6, p0, Lazz;->c:Ldny;

    iget-object v0, p0, Lazz;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    iget-object v7, p0, Lazz;->e:Ldny;

    new-instance v0, Lbxb;

    .line 2
    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lbxb;-><init>(Lbwo;Landroid/content/Context;Ldai;Ldgz;Ldny;Ldny;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lazz;->g:Ldny;

    check-cast v0, Ldhr;

    .line 3
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lazz;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/car/CarProjectionManager;

    iget-object v0, p0, Lazz;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbah;

    iget-object v0, p0, Lazz;->c:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lawo;

    iget-object v0, p0, Lazz;->e:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lbbl;

    iget-object v0, p0, Lazz;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lazz;->a:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v9, Lavi;

    .line 4
    move-object v7, v0

    check-cast v7, Lavb;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lavi;-><init>(Landroid/content/Context;Landroid/car/CarProjectionManager;Lbah;Lawo;Lbbl;Lavb;Ljava/util/concurrent/Executor;)V

    return-object v9

    :pswitch_2
    iget-object v0, p0, Lazz;->a:Ldny;

    check-cast v0, Ldhr;

    .line 5
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lazz;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbah;

    iget-object v0, p0, Lazz;->c:Ldny;

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Lbbm;

    move-result-object v4

    iget-object v0, p0, Lazz;->d:Ldny;

    check-cast v0, Lbff;

    invoke-virtual {v0}, Lbff;->b()Lbfe;

    move-result-object v5

    iget-object v0, p0, Lazz;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lazi;

    iget-object v0, p0, Lazz;->f:Ldny;

    check-cast v0, Laxu;

    invoke-virtual {v0}, Laxu;->b()Ldhq;

    move-result-object v7

    iget-object v0, p0, Lazz;->g:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lj$/util/Optional;

    new-instance v0, Lazy;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6
    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lazy;-><init>(Landroid/content/Context;Lbah;Lbbm;Lbfe;Lazi;Ldhq;Lj$/util/Optional;[B[B[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
