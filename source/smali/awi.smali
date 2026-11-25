.class public final Lawi;
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

.field private final m:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawi;->a:Ldny;

    iput-object p2, p0, Lawi;->b:Ldny;

    iput-object p3, p0, Lawi;->c:Ldny;

    iput-object p4, p0, Lawi;->d:Ldny;

    iput-object p5, p0, Lawi;->e:Ldny;

    iput-object p6, p0, Lawi;->f:Ldny;

    iput-object p7, p0, Lawi;->g:Ldny;

    iput-object p8, p0, Lawi;->h:Ldny;

    iput-object p9, p0, Lawi;->i:Ldny;

    iput-object p10, p0, Lawi;->j:Ldny;

    iput-object p11, p0, Lawi;->k:Ldny;

    iput-object p12, p0, Lawi;->l:Ldny;

    iput-object p13, p0, Lawi;->m:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lawi;->a:Ldny;

    check-cast v1, Ldhr;

    invoke-virtual {v1}, Ldhr;->b()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lawi;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lbah;

    iget-object v1, v0, Lawi;->c:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lazy;

    iget-object v1, v0, Lawi;->d:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lbdq;

    iget-object v1, v0, Lawi;->e:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lbss;

    iget-object v1, v0, Lawi;->f:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/location/LocationManager;

    iget-object v1, v0, Lawi;->g:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lbdu;

    iget-object v1, v0, Lawi;->h:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lbcj;

    iget-object v1, v0, Lawi;->i:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lawt;

    iget-object v1, v0, Lawi;->j:Ldny;

    check-cast v1, Lawz;

    invoke-virtual {v1}, Lawz;->b()Lawy;

    move-result-object v12

    iget-object v1, v0, Lawi;->k:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lbhi;

    iget-object v1, v0, Lawi;->l:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lbde;

    iget-object v1, v0, Lawi;->m:Ldny;

    check-cast v1, Laxu;

    invoke-virtual {v1}, Laxu;->b()Ldhq;

    move-result-object v15

    new-instance v1, Lawh;

    move-object v2, v1

    .line 2
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lawh;-><init>(Landroid/content/Context;Lbah;Lazy;Lbdq;Lbss;Landroid/location/LocationManager;Lbdu;Lbcj;Lawt;Lawy;Lbhi;Lbde;Ldhq;[B[B[B)V

    return-object v1
.end method
