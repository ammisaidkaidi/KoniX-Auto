.class public final Lbyg;
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

.field private final l:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyg;->a:Ldny;

    iput-object p2, p0, Lbyg;->b:Ldny;

    iput-object p3, p0, Lbyg;->c:Ldny;

    iput-object p4, p0, Lbyg;->d:Ldny;

    iput-object p5, p0, Lbyg;->e:Ldny;

    iput-object p6, p0, Lbyg;->f:Ldny;

    iput-object p7, p0, Lbyg;->g:Ldny;

    iput-object p8, p0, Lbyg;->h:Ldny;

    iput-object p9, p0, Lbyg;->i:Ldny;

    iput-object p10, p0, Lbyg;->j:Ldny;

    iput-object p11, p0, Lbyg;->k:Ldny;

    iput-object p12, p0, Lbyg;->l:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lbyg;->a:Ldny;

    check-cast v0, Lbwp;

    invoke-virtual {v0}, Lbwp;->b()Lbwo;

    move-result-object v2

    iget-object v0, p0, Lbyg;->b:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lbyg;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbvh;

    iget-object v0, p0, Lbyg;->d:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v5

    iget-object v0, p0, Lbyg;->e:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v7, p0, Lbyg;->f:Ldny;

    iget-object v8, p0, Lbyg;->g:Ldny;

    iget-object v1, p0, Lbyg;->h:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbyg;->i:Ldny;

    invoke-static {v1}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v10

    iget-object v1, p0, Lbyg;->j:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lbwv;

    iget-object v12, p0, Lbyg;->k:Ldny;

    iget-object v1, p0, Lbyg;->l:Ldny;

    check-cast v1, Lbyo;

    invoke-virtual {v1}, Lbyo;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    new-instance v14, Lbyf;

    .line 2
    move-object v6, v0

    check-cast v6, Lbxw;

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lbyf;-><init>(Lbwo;Landroid/content/Context;Lbvh;Ldgz;Lbxw;Ldny;Ldny;Ljava/util/concurrent/Executor;Ldgz;Lbwv;Ldny;Z)V

    return-object v14
.end method
