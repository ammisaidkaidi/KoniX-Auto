.class public final Lasw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbbp;
.implements Lbbq;
.implements Ldhs;


# instance fields
.field private A:Ldny;

.field private B:Ldny;

.field private C:Ldny;

.field private D:Ldny;

.field private E:Ldny;

.field private F:Ldny;

.field private G:Ldny;

.field private H:Ldny;

.field private I:Ldny;

.field private final a:Latj;

.field private b:Ldny;

.field private c:Ldny;

.field private d:Ldny;

.field private e:Ldny;

.field private f:Ldny;

.field private g:Ldny;

.field private h:Ldny;

.field private i:Ldny;

.field private j:Ldny;

.field private k:Ldny;

.field private l:Ldny;

.field private m:Ldny;

.field private n:Ldny;

.field private o:Ldny;

.field private p:Ldny;

.field private q:Ldny;

.field private r:Ldny;

.field private s:Ldny;

.field private t:Ldny;

.field private u:Ldny;

.field private v:Ldny;

.field private w:Ldny;

.field private x:Ldny;

.field private y:Ldny;

.field private z:Ldny;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Latj;Lbbl;Lawo;Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 19

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lasw;->a:Latj;

    invoke-static/range {p2 .. p2}, Ldhy;->b(Ljava/lang/Object;)Ldhx;

    move-result-object v2

    iput-object v2, v0, Lasw;->b:Ldny;

    new-instance v3, Laua;

    const/16 v4, 0x12

    invoke-direct {v3, v2, v4}, Laua;-><init>(Ldny;I)V

    .line 3
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->c:Ldny;

    iget-object v3, v1, Latj;->F:Ldny;

    new-instance v4, Latx;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v2, v3, v5, v6}, Latx;-><init>(Ldny;Ldny;I[B)V

    .line 4
    invoke-static {v4}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->d:Ldny;

    sget-object v2, Laty;->a:Latz;

    iget-object v3, v0, Lasw;->b:Ldny;

    sget-object v4, Lcya;->a:Lcde;

    new-instance v7, Lauk;

    invoke-direct {v7, v2, v3, v4}, Lauk;-><init>(Ldny;Ldny;Ldny;)V

    iput-object v7, v0, Lasw;->e:Ldny;

    .line 5
    invoke-static/range {p4 .. p4}, Ldhy;->b(Ljava/lang/Object;)Ldhx;

    move-result-object v2

    iput-object v2, v0, Lasw;->f:Ldny;

    iget-object v8, v1, Latj;->G:Ldny;

    iget-object v9, v0, Lasw;->f:Ldny;

    iget-object v10, v0, Lasw;->c:Ldny;

    new-instance v2, Lavy;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lavy;-><init>(Ldny;Ldny;Ldny;I[B)V

    .line 6
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->g:Ldny;

    iget-object v8, v1, Latj;->G:Ldny;

    iget-object v9, v0, Lasw;->f:Ldny;

    iget-object v10, v0, Lasw;->c:Ldny;

    iget-object v11, v1, Latj;->F:Ldny;

    new-instance v2, Lavc;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lavc;-><init>(Ldny;Ldny;Ldny;Ldny;I[B)V

    .line 7
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->h:Ldny;

    iget-object v3, v0, Lasw;->g:Ldny;

    new-instance v4, Latx;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v2, v7}, Latx;-><init>(Ldny;Ldny;I)V

    .line 8
    invoke-static {v4}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->i:Ldny;

    iget-object v9, v1, Latj;->o:Ldny;

    iget-object v10, v0, Lasw;->d:Ldny;

    iget-object v11, v0, Lasw;->e:Ldny;

    iget-object v12, v1, Latj;->l:Ldny;

    iget-object v13, v1, Latj;->F:Ldny;

    iget-object v14, v0, Lasw;->i:Ldny;

    iget-object v15, v1, Latj;->c:Ldny;

    iget-object v2, v1, Latj;->i:Ldny;

    new-instance v3, Laya;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v8, v3

    move-object/from16 v16, v2

    invoke-direct/range {v8 .. v18}, Laya;-><init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V

    .line 9
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->j:Ldny;

    new-instance v3, Lasy;

    const/16 v4, 0x13

    invoke-direct {v3, v2, v4}, Lasy;-><init>(Ldny;I)V

    .line 10
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->k:Ldny;

    iget-object v2, v0, Lasw;->j:Ldny;

    new-instance v3, Laua;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Laua;-><init>(Ldny;I)V

    .line 11
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->l:Ldny;

    iget-object v2, v0, Lasw;->j:Ldny;

    new-instance v3, Lasy;

    const/16 v4, 0x14

    invoke-direct {v3, v2, v4}, Lasy;-><init>(Ldny;I)V

    .line 12
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->m:Ldny;

    iget-object v2, v0, Lasw;->j:Ldny;

    new-instance v3, Laua;

    invoke-direct {v3, v2, v5}, Laua;-><init>(Ldny;I)V

    .line 13
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->n:Ldny;

    iget-object v2, v0, Lasw;->j:Ldny;

    new-instance v3, Laua;

    invoke-direct {v3, v2, v7}, Laua;-><init>(Ldny;I)V

    .line 14
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->o:Ldny;

    .line 15
    invoke-static/range {p3 .. p3}, Ldhy;->b(Ljava/lang/Object;)Ldhx;

    move-result-object v2

    iput-object v2, v0, Lasw;->p:Ldny;

    iget-object v9, v1, Latj;->c:Ldny;

    iget-object v10, v1, Latj;->j:Ldny;

    iget-object v11, v1, Latj;->p:Ldny;

    iget-object v12, v0, Lasw;->p:Ldny;

    iget-object v13, v0, Lasw;->b:Ldny;

    iget-object v14, v1, Latj;->H:Ldny;

    iget-object v15, v1, Latj;->d:Ldny;

    new-instance v2, Lazz;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v17}, Lazz;-><init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;I[B)V

    .line 16
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->q:Ldny;

    iget-object v2, v1, Latj;->B:Ldny;

    iget-object v3, v0, Lasw;->q:Ldny;

    new-instance v4, Latx;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v3, v5}, Latx;-><init>(Ldny;Ldny;I)V

    .line 17
    invoke-static {v4}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->r:Ldny;

    iget-object v9, v1, Latj;->c:Ldny;

    iget-object v10, v1, Latj;->v:Ldny;

    iget-object v11, v1, Latj;->I:Ldny;

    new-instance v2, Lavy;

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lavy;-><init>(Ldny;Ldny;Ldny;I[C)V

    .line 18
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->s:Ldny;

    sget-object v2, Laxt;->a:Latz;

    .line 19
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->t:Ldny;

    new-instance v3, Laua;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Laua;-><init>(Ldny;I)V

    .line 20
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->u:Ldny;

    iget-object v9, v1, Latj;->c:Ldny;

    iget-object v10, v1, Latj;->J:Ldny;

    iget-object v11, v1, Latj;->s:Ldny;

    new-instance v2, Lavy;

    const/16 v12, 0x8

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lavy;-><init>(Ldny;Ldny;Ldny;I[[C)V

    .line 21
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->v:Ldny;

    iget-object v9, v1, Latj;->c:Ldny;

    iget-object v10, v1, Latj;->r:Ldny;

    iget-object v11, v1, Latj;->s:Ldny;

    new-instance v2, Lavy;

    const/4 v12, 0x7

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lavy;-><init>(Ldny;Ldny;Ldny;I[[B)V

    .line 22
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->w:Ldny;

    iget-object v3, v0, Lasw;->v:Ldny;

    new-instance v8, Latx;

    const/4 v9, 0x7

    invoke-direct {v8, v3, v2, v9, v6}, Latx;-><init>(Ldny;Ldny;I[S)V

    iput-object v8, v0, Lasw;->x:Ldny;

    iget-object v2, v1, Latj;->K:Ldny;

    new-instance v3, Laua;

    const/16 v6, 0xf

    invoke-direct {v3, v2, v6}, Laua;-><init>(Ldny;I)V

    .line 23
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->y:Ldny;

    iget-object v2, v1, Latj;->c:Ldny;

    new-instance v3, Laua;

    const/16 v6, 0x10

    invoke-direct {v3, v2, v6}, Laua;-><init>(Ldny;I)V

    .line 24
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->z:Ldny;

    iget-object v2, v1, Latj;->c:Ldny;

    new-instance v3, Laua;

    const/16 v6, 0x11

    invoke-direct {v3, v2, v6}, Laua;-><init>(Ldny;I)V

    .line 25
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->A:Ldny;

    .line 26
    sget v2, Ldhz;->a:I

    .line 27
    invoke-static {v4}, Ldpx;->n(I)Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-static {v7}, Ldpx;->n(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lasw;->x:Ldny;

    .line 26
    invoke-static {v4, v2}, Ldpx;->k(Ldny;Ljava/util/List;)V

    iget-object v4, v0, Lasw;->y:Ldny;

    invoke-static {v4, v2}, Ldpx;->k(Ldny;Ljava/util/List;)V

    iget-object v4, v0, Lasw;->z:Ldny;

    invoke-static {v4, v2}, Ldpx;->k(Ldny;Ljava/util/List;)V

    iget-object v4, v0, Lasw;->A:Ldny;

    invoke-static {v4, v2}, Ldpx;->k(Ldny;Ljava/util/List;)V

    invoke-static {v2, v3}, Ldpx;->i(Ljava/util/List;Ljava/util/List;)Ldhz;

    move-result-object v2

    iput-object v2, v0, Lasw;->B:Ldny;

    iget-object v7, v0, Lasw;->c:Ldny;

    iget-object v8, v1, Latj;->u:Ldny;

    iget-object v9, v0, Lasw;->B:Ldny;

    new-instance v2, Lavy;

    const/16 v10, 0x9

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lavy;-><init>(Ldny;Ldny;Ldny;I[[S)V

    .line 29
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->C:Ldny;

    iget-object v2, v1, Latj;->c:Ldny;

    iget-object v3, v0, Lasw;->b:Ldny;

    new-instance v4, Latx;

    const/16 v6, 0xb

    invoke-direct {v4, v2, v3, v6}, Latx;-><init>(Ldny;Ldny;I)V

    .line 30
    invoke-static {v4}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->D:Ldny;

    new-instance v3, Lbee;

    invoke-direct {v3, v2, v5}, Lbee;-><init>(Ldny;I)V

    .line 31
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->E:Ldny;

    sget-object v2, Lbhh;->a:Latz;

    iget-object v3, v1, Latj;->k:Ldny;

    new-instance v4, Lbhf;

    invoke-direct {v4, v2, v3}, Lbhf;-><init>(Ldny;Ldny;)V

    iput-object v4, v0, Lasw;->F:Ldny;

    iget-object v6, v1, Latj;->A:Ldny;

    iget-object v7, v0, Lasw;->F:Ldny;

    iget-object v8, v1, Latj;->l:Ldny;

    new-instance v2, Lavy;

    const/16 v9, 0xb

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lavy;-><init>(Ldny;Ldny;Ldny;I[[Z)V

    .line 32
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->G:Ldny;

    iget-object v4, v1, Latj;->c:Ldny;

    iget-object v5, v0, Lasw;->f:Ldny;

    iget-object v6, v0, Lasw;->c:Ldny;

    iget-object v7, v1, Latj;->p:Ldny;

    new-instance v2, Lavc;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lavc;-><init>(Ldny;Ldny;Ldny;Ldny;I[I)V

    .line 33
    invoke-static {v2}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v2

    iput-object v2, v0, Lasw;->H:Ldny;

    iget-object v2, v1, Latj;->c:Ldny;

    iget-object v1, v1, Latj;->D:Ldny;

    new-instance v3, Latx;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v1, v4}, Latx;-><init>(Ldny;Ldny;I)V

    .line 34
    invoke-static {v3}, Ldhw;->c(Ldny;)Ldny;

    move-result-object v1

    iput-object v1, v0, Lasw;->I:Ldny;

    return-void
.end method


# virtual methods
.method public final a()Latu;
    .locals 1

    .line 1
    iget-object v0, p0, Lasw;->i:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    return-object v0
.end method

.method public final b()Laxs;
    .locals 1

    .line 1
    iget-object v0, p0, Lasw;->t:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    return-object v0
.end method

.method public final c()Lcmj;
    .locals 1

    .line 1
    iget-object v0, p0, Lasw;->I:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmj;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 3

    .line 1
    const/16 v0, 0xb

    invoke-static {v0}, Lcqk;->f(I)Lcqi;

    move-result-object v0

    sget-object v1, Laxg;->j:Laxg;

    iget-object v2, p0, Lasw;->k:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->f:Laxg;

    iget-object v2, p0, Lasw;->l:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->g:Laxg;

    iget-object v2, p0, Lasw;->m:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->h:Laxg;

    iget-object v2, p0, Lasw;->n:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->i:Laxg;

    iget-object v2, p0, Lasw;->o:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->k:Laxg;

    iget-object v2, p0, Lasw;->r:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->m:Laxg;

    iget-object v2, p0, Lasw;->s:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->n:Laxg;

    iget-object v2, p0, Lasw;->u:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->e:Laxg;

    iget-object v2, p0, Lasw;->C:Ldny;

    .line 2
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lazm;

    iget-object v2, v2, Lazm;->e:Lcom/google/android/projection/protocol/SensorSource;

    invoke-static {v2}, Ldpx;->m(Ljava/lang/Object;)V

    .line 1
    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->o:Laxg;

    iget-object v2, p0, Lasw;->E:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Laxg;->l:Laxg;

    iget-object v2, p0, Lasw;->G:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclk;

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lasw;->i:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclp;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcsf;->a:Lcsf;

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lasw;->H:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbo;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0
.end method
