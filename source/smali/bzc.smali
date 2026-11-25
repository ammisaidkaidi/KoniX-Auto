.class public final Lbzc;
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

.field private final j:Ldny;

.field private final k:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzc;->a:Ldny;

    iput-object p2, p0, Lbzc;->b:Ldny;

    iput-object p3, p0, Lbzc;->c:Ldny;

    iput-object p4, p0, Lbzc;->d:Ldny;

    iput-object p5, p0, Lbzc;->e:Ldny;

    iput-object p6, p0, Lbzc;->f:Ldny;

    iput-object p7, p0, Lbzc;->g:Ldny;

    iput-object p8, p0, Lbzc;->h:Ldny;

    iput-object p9, p0, Lbzc;->i:Ldny;

    iput-object p10, p0, Lbzc;->j:Ldny;

    iput-object p11, p0, Lbzc;->k:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lbzc;->a:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbzc;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    iget-object v0, p0, Lbzc;->c:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lbzc;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbzc;->e:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ldai;

    iget-object v1, p0, Lbzc;->f:Ldny;

    invoke-static {v1}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v6

    iget-object v1, p0, Lbzc;->g:Ldny;

    check-cast v1, Lbzf;

    invoke-virtual {v1}, Lbzf;->b()Lbze;

    move-result-object v7

    iget-object v1, p0, Lbzc;->h:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lbul;

    iget-object v9, p0, Lbzc;->i:Ldny;

    iget-object v1, p0, Lbzc;->j:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbzc;->k:Ldny;

    check-cast v1, Ldhy;

    iget-object v1, v1, Ldhy;->a:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lcoc;

    new-instance v12, Lbyz;

    .line 2
    move-object v4, v0

    check-cast v4, Lbyy;

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lbyz;-><init>(Lbwo;Landroid/content/Context;Lbyy;Ldai;Ldgz;Lbze;Lbul;Ldny;Ljava/util/concurrent/Executor;Lcoc;)V

    return-object v12
.end method
