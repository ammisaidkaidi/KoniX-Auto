.class public final Lbbn;
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

.field private final n:Ldny;

.field private final o:Ldny;

.field private final p:Ldny;

.field private final q:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lbbn;->a:Ldny;

    move-object v1, p2

    iput-object v1, v0, Lbbn;->b:Ldny;

    move-object v1, p3

    iput-object v1, v0, Lbbn;->c:Ldny;

    move-object v1, p4

    iput-object v1, v0, Lbbn;->d:Ldny;

    move-object v1, p5

    iput-object v1, v0, Lbbn;->e:Ldny;

    move-object v1, p6

    iput-object v1, v0, Lbbn;->f:Ldny;

    move-object v1, p7

    iput-object v1, v0, Lbbn;->g:Ldny;

    move-object v1, p8

    iput-object v1, v0, Lbbn;->h:Ldny;

    move-object v1, p9

    iput-object v1, v0, Lbbn;->i:Ldny;

    move-object v1, p10

    iput-object v1, v0, Lbbn;->j:Ldny;

    move-object v1, p11

    iput-object v1, v0, Lbbn;->k:Ldny;

    move-object v1, p12

    iput-object v1, v0, Lbbn;->l:Ldny;

    move-object v1, p13

    iput-object v1, v0, Lbbn;->m:Ldny;

    move-object/from16 v1, p14

    iput-object v1, v0, Lbbn;->n:Ldny;

    move-object/from16 v1, p15

    iput-object v1, v0, Lbbn;->o:Ldny;

    move-object/from16 v1, p16

    iput-object v1, v0, Lbbn;->p:Ldny;

    move-object/from16 v1, p17

    iput-object v1, v0, Lbbn;->q:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbbn;->b()Lbbm;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbbm;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbn;->a:Ldny;

    iget-object v3, v0, Lbbn;->b:Ldny;

    iget-object v4, v0, Lbbn;->c:Ldny;

    iget-object v5, v0, Lbbn;->d:Ldny;

    iget-object v6, v0, Lbbn;->e:Ldny;

    iget-object v7, v0, Lbbn;->f:Ldny;

    iget-object v8, v0, Lbbn;->g:Ldny;

    iget-object v9, v0, Lbbn;->h:Ldny;

    iget-object v10, v0, Lbbn;->i:Ldny;

    iget-object v11, v0, Lbbn;->j:Ldny;

    iget-object v12, v0, Lbbn;->k:Ldny;

    iget-object v13, v0, Lbbn;->l:Ldny;

    iget-object v14, v0, Lbbn;->n:Ldny;

    iget-object v15, v0, Lbbn;->o:Ldny;

    iget-object v1, v0, Lbbn;->p:Ldny;

    move-object/from16 v16, v1

    iget-object v1, v0, Lbbn;->q:Ldny;

    move-object/from16 v17, v1

    new-instance v18, Lbbm;

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Lbbm;-><init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V

    return-object v18
.end method
