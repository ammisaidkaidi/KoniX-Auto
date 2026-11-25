.class public final Lbxl;
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

.field private final i:Ldny;

.field private final synthetic j:I


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I)V
    .locals 0

    iput p10, p0, Lbxl;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxl;->a:Ldny;

    iput-object p2, p0, Lbxl;->b:Ldny;

    iput-object p3, p0, Lbxl;->c:Ldny;

    iput-object p4, p0, Lbxl;->d:Ldny;

    iput-object p5, p0, Lbxl;->e:Ldny;

    iput-object p6, p0, Lbxl;->f:Ldny;

    iput-object p7, p0, Lbxl;->g:Ldny;

    iput-object p8, p0, Lbxl;->h:Ldny;

    iput-object p9, p0, Lbxl;->i:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V
    .locals 0

    iput p10, p0, Lbxl;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxl;->h:Ldny;

    iput-object p2, p0, Lbxl;->b:Ldny;

    iput-object p3, p0, Lbxl;->f:Ldny;

    iput-object p4, p0, Lbxl;->c:Ldny;

    iput-object p5, p0, Lbxl;->i:Ldny;

    iput-object p6, p0, Lbxl;->g:Ldny;

    iput-object p7, p0, Lbxl;->d:Ldny;

    iput-object p8, p0, Lbxl;->e:Ldny;

    iput-object p9, p0, Lbxl;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[C)V
    .locals 0

    iput p10, p0, Lbxl;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxl;->e:Ldny;

    iput-object p2, p0, Lbxl;->h:Ldny;

    iput-object p3, p0, Lbxl;->d:Ldny;

    iput-object p4, p0, Lbxl;->a:Ldny;

    iput-object p5, p0, Lbxl;->i:Ldny;

    iput-object p6, p0, Lbxl;->g:Ldny;

    iput-object p7, p0, Lbxl;->c:Ldny;

    iput-object p8, p0, Lbxl;->f:Ldny;

    iput-object p9, p0, Lbxl;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 11

    .line 5
    iget v0, p0, Lbxl;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbxl;->e:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbxl;->h:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lbxl;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbvh;

    iget-object v0, p0, Lbxl;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lbxl;->i:Ldny;

    check-cast v0, Lbxq;

    invoke-virtual {v0}, Lbxq;->b()Lbxp;

    move-result-object v6

    iget-object v7, p0, Lbxl;->g:Ldny;

    iget-object v0, p0, Lbxl;->c:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v8

    iget-object v9, p0, Lbxl;->f:Ldny;

    iget-object v10, p0, Lbxl;->b:Ldny;

    new-instance v0, Lbxu;

    .line 6
    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lbxu;-><init>(Lbwo;Landroid/content/Context;Lbvh;Ljava/util/concurrent/Executor;Lbxo;Ldny;Ldgz;Ldny;Ldny;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lbxl;->h:Ldny;

    check-cast v0, Lbwp;

    .line 1
    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbxl;->b:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lbxl;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbvh;

    iget-object v0, p0, Lbxl;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldai;

    iget-object v0, p0, Lbxl;->i:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v6

    iget-object v0, p0, Lbxl;->g:Ldny;

    check-cast v0, Lbwe;

    invoke-virtual {v0}, Lbwe;->b()Lbwd;

    move-result-object v7

    iget-object v0, p0, Lbxl;->d:Ldny;

    check-cast v0, Lbvo;

    invoke-virtual {v0}, Lbvo;->b()Lbvn;

    move-result-object v8

    iget-object v9, p0, Lbxl;->e:Ldny;

    iget-object v0, p0, Lbxl;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/concurrent/Executor;

    new-instance v0, Lbvu;

    .line 2
    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lbvu;-><init>(Lbwo;Landroid/content/Context;Lbvh;Ldai;Ldgz;Lbwd;Lbvn;Ldny;Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbxl;->a:Ldny;

    check-cast v0, Lbwp;

    .line 3
    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbxl;->b:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lbxl;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lbxl;->d:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v5

    iget-object v0, p0, Lbxl;->e:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcoc;

    iget-object v0, p0, Lbxl;->f:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lbvh;

    iget-object v0, p0, Lbxl;->g:Ldny;

    check-cast v0, Lcbw;

    invoke-virtual {v0}, Lcbw;->b()Lcbv;

    move-result-object v8

    iget-object v0, p0, Lbxl;->h:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcoc;

    iget-object v10, p0, Lbxl;->i:Ldny;

    new-instance v0, Lbxk;

    .line 4
    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lbxk;-><init>(Lbwo;Landroid/content/Context;Ljava/util/concurrent/Executor;Ldgz;Lcoc;Lbvh;Lcbv;Lcoc;Ldny;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
