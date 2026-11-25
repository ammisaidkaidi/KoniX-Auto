.class public final Lbwo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final e:Ldny;

.field private final f:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbwo;->a:Ldny;

    iput-object p2, p0, Lbwo;->b:Ldny;

    iput-object p3, p0, Lbwo;->c:Ldny;

    iput-object p4, p0, Lbwo;->d:Ldny;

    iput-object p5, p0, Lbwo;->e:Ldny;

    iput-object p6, p0, Lbwo;->f:Ldny;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;
    .locals 11

    .line 1
    new-instance v10, Lbwn;

    iget-object v0, p0, Lbwo;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbwl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lbwo;->b:Ldny;

    iget-object v0, p0, Lbwo;->c:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbul;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbwo;->d:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lbwo;->e:Ldny;

    iget-object v4, p0, Lbwo;->f:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lbut;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    check-cast v4, Lcce;

    move-object v0, v10

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lbwn;-><init>(Lbwl;Ldny;Lbul;Lcce;Ldny;Lbut;Ljava/util/concurrent/Executor;Ldgz;Ldny;)V

    return-object v10
.end method
