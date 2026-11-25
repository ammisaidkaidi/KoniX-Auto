.class public final Lcr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private A:Ltt;

.field private B:Ltt;

.field private C:Z

.field private D:Ljava/util/ArrayList;

.field private E:Ljava/util/ArrayList;

.field private F:Ljava/util/ArrayList;

.field private final G:Ljava/lang/Runnable;

.field private final H:Lr;

.field public final a:Lcy;

.field b:Ljava/util/ArrayList;

.field public final c:Lce;

.field public d:Ltn;

.field public final e:Ltl;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lcg;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field i:I

.field public j:Lcc;

.field public k:Lby;

.field public l:Lbr;

.field m:Lbr;

.field n:Ljava/util/ArrayDeque;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lct;

.field private final t:Ljava/util/ArrayList;

.field private u:Z

.field private v:Ljava/util/ArrayList;

.field private final w:Ljava/util/Map;

.field private final x:Ljava/util/Map;

.field private final y:Lcb;

.field private z:Ltt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcr;->t:Ljava/util/ArrayList;

    new-instance v0, Lcy;

    .line 2
    invoke-direct {v0}, Lcy;-><init>()V

    iput-object v0, p0, Lcr;->a:Lcy;

    new-instance v0, Lce;

    invoke-direct {v0, p0}, Lce;-><init>(Lcr;)V

    iput-object v0, p0, Lcr;->c:Lce;

    new-instance v0, Ltl;

    .line 3
    invoke-direct {v0, p0}, Ltl;-><init>(Lcr;)V

    iput-object v0, p0, Lcr;->e:Ltl;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcr;->w:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcr;->x:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lcg;

    .line 11
    invoke-direct {v0, p0}, Lcg;-><init>(Lcr;)V

    iput-object v0, p0, Lcr;->g:Lcg;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcr;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcr;->i:I

    new-instance v0, Lci;

    invoke-direct {v0, p0}, Lci;-><init>(Lcr;)V

    iput-object v0, p0, Lcr;->y:Lcb;

    new-instance v0, Lr;

    invoke-direct {v0}, Lr;-><init>()V

    iput-object v0, p0, Lcr;->H:Lr;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcr;->n:Ljava/util/ArrayDeque;

    new-instance v0, Lcj;

    invoke-direct {v0, p0}, Lcj;-><init>(Lcr;)V

    iput-object v0, p0, Lcr;->G:Ljava/lang/Runnable;

    return-void
.end method

.method public static R(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final V(Lbr;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbr;->L:Z

    iget-object p0, p0, Lbr;->C:Lcr;

    iget-object p0, p0, Lcr;->a:Lcy;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcy;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcx;->c:Lbr;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_3

    .line 1
    invoke-static {v2}, Lcr;->V(Lbr;)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method static final W(Lbr;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lbr;->A:Lcr;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lbr;->D:Lbr;

    invoke-static {p0}, Lcr;->W(Lbr;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    nop

    :cond_1
    return v0
.end method

.method static final Y(Lbr;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    iget-boolean v0, p0, Lbr;->H:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lbr;->H:Z

    .line 4
    iget-boolean v0, p0, Lbr;->T:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbr;->T:Z

    :cond_1
    return-void
.end method

.method private final ab(Lbr;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p1, Lbr;->F:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcr;->k:Lby;

    .line 3
    invoke-virtual {v0}, Lby;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcr;->k:Lby;

    .line 4
    iget p1, p1, Lbr;->F:I

    invoke-virtual {v0, p1}, Lby;->a(I)Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private final ac()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcr;->a:Lcy;

    .line 2
    invoke-virtual {v1}, Lcy;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcx;

    iget-object v2, v2, Lcx;->c:Lbr;

    .line 3
    iget-object v2, v2, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcr;->aa()Lr;

    .line 5
    invoke-static {v2}, Ldm;->g(Landroid/view/ViewGroup;)Ldm;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final ad()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcr;->T()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final ae()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->u:Z

    iget-object v0, p0, Lcr;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcr;->D:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final af()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcr;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->C:Z

    invoke-direct {p0}, Lcr;->al()V

    :cond_0
    return-void
.end method

.method private final ag()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcr;->ac()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldm;

    .line 3
    invoke-virtual {v1}, Ldm;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final ah(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcr;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcr;->j:Lcc;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcr;->r:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcr;->j:Lcc;

    iget-object v1, v1, Lcc;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 5
    if-nez p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcr;->ad()V

    :cond_2
    iget-object p1, p0, Lcr;->D:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcr;->D:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcr;->E:Ljava/util/ArrayList;

    return-void

    .line 3
    :cond_3
    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final ai(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lau;

    iget-boolean v5, v5, Lau;->s:Z

    iget-object v6, v1, Lcr;->F:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcr;->F:Ljava/util/ArrayList;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2
    :goto_0
    iget-object v6, v1, Lcr;->F:Ljava/util/ArrayList;

    iget-object v7, v1, Lcr;->a:Lcy;

    .line 4
    invoke-virtual {v7}, Lcy;->f()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v1, Lcr;->m:Lbr;

    move v8, v4

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    if-ge v8, v3, :cond_b

    .line 5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lau;

    .line 6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v1, Lcr;->F:Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_2
    iget-object v10, v14, Lau;->d:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_8

    iget-object v10, v14, Lau;->d:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcz;

    .line 9
    iget v12, v10, Lcz;->a:I

    const/16 v13, 0x9

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    iget-object v12, v14, Lau;->d:Ljava/util/ArrayList;

    new-instance v4, Lcz;

    .line 10
    invoke-direct {v4, v13, v6, v11}, Lcz;-><init>(ILbr;[B)V

    invoke-virtual {v12, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 11
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcz;->c:Z

    add-int/lit8 v7, v7, 0x1

    .line 12
    iget-object v4, v10, Lcz;->b:Lbr;

    move-object v6, v4

    goto/16 :goto_6

    .line 13
    :pswitch_2
    iget-object v4, v10, Lcz;->b:Lbr;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object v4, v10, Lcz;->b:Lbr;

    if-ne v4, v6, :cond_1

    iget-object v6, v14, Lau;->d:Ljava/util/ArrayList;

    new-instance v10, Lcz;

    .line 15
    invoke-direct {v10, v13, v4}, Lcz;-><init>(ILbr;)V

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object v6, v11

    goto/16 :goto_6

    :cond_1
    goto/16 :goto_6

    .line 16
    :pswitch_3
    iget-object v4, v10, Lcz;->b:Lbr;

    .line 17
    iget v12, v4, Lbr;->F:I

    .line 18
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v11, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v11, :cond_5

    .line 19
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Lbr;

    .line 20
    iget v2, v13, Lbr;->F:I

    if-ne v2, v12, :cond_4

    if-ne v13, v4, :cond_2

    move/from16 v19, v12

    const/16 v17, 0x1

    goto :goto_5

    :cond_2
    if-ne v13, v6, :cond_3

    iget-object v2, v14, Lau;->d:Ljava/util/ArrayList;

    new-instance v6, Lcz;

    .line 21
    move/from16 v19, v12

    const/4 v0, 0x0

    const/16 v12, 0x9

    invoke-direct {v6, v12, v13, v0}, Lcz;-><init>(ILbr;[B)V

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object v6, v0

    goto :goto_4

    .line 28
    :cond_3
    move/from16 v19, v12

    const/4 v0, 0x0

    const/16 v12, 0x9

    .line 21
    :goto_4
    new-instance v2, Lcz;

    .line 22
    const/4 v12, 0x3

    invoke-direct {v2, v12, v13, v0}, Lcz;-><init>(ILbr;[B)V

    .line 23
    iget v0, v10, Lcz;->d:I

    iput v0, v2, Lcz;->d:I

    .line 24
    iget v0, v10, Lcz;->f:I

    iput v0, v2, Lcz;->f:I

    .line 25
    iget v0, v10, Lcz;->e:I

    iput v0, v2, Lcz;->e:I

    .line 26
    iget v0, v10, Lcz;->g:I

    iput v0, v2, Lcz;->g:I

    iget-object v0, v14, Lau;->d:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/2addr v7, v0

    goto :goto_5

    :cond_4
    move/from16 v19, v12

    .line 20
    :goto_5
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v12, v19

    const/16 v13, 0x9

    goto :goto_3

    .line 28
    :cond_5
    if-eqz v17, :cond_6

    iget-object v0, v14, Lau;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_6
    nop

    .line 30
    const/4 v0, 0x1

    iput v0, v10, Lcz;->a:I

    .line 31
    iput-boolean v0, v10, Lcz;->c:Z

    .line 32
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 33
    :pswitch_4
    iget-object v0, v10, Lcz;->b:Lbr;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_6
    const/4 v0, 0x1

    add-int/2addr v7, v0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 41
    :cond_7
    iget-object v0, v1, Lcr;->F:Ljava/util/ArrayList;

    iget-object v2, v14, Lau;->d:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, -0x1

    add-int/2addr v2, v4

    :goto_7
    if-ltz v2, :cond_8

    iget-object v4, v14, Lau;->d:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz;

    .line 36
    iget v7, v4, Lcz;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_5
    goto :goto_8

    .line 37
    :pswitch_6
    iget-object v7, v4, Lcz;->h:Lzm;

    iput-object v7, v4, Lcz;->i:Lzm;

    goto :goto_8

    .line 38
    :pswitch_7
    iget-object v4, v4, Lcz;->b:Lbr;

    move-object v6, v4

    goto :goto_8

    .line 39
    :pswitch_8
    const/4 v6, 0x0

    goto :goto_8

    :pswitch_9
    iget-object v4, v4, Lcz;->b:Lbr;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 40
    :pswitch_a
    iget-object v4, v4, Lcz;->b:Lbr;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 33
    :cond_8
    if-nez v9, :cond_a

    .line 41
    iget-boolean v0, v14, Lau;->j:Z

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v9, 0x1

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    goto/16 :goto_1

    .line 40
    :cond_b
    iget-object v0, v1, Lcr;->F:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_e

    iget v0, v1, Lcr;->i:I

    if-lez v0, :cond_e

    move/from16 v0, p3

    :goto_b
    if-ge v0, v3, :cond_e

    .line 43
    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lau;

    .line 44
    iget-object v4, v4, Lau;->d:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_d

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz;

    .line 45
    iget-object v7, v7, Lcz;->b:Lbr;

    if-eqz v7, :cond_c

    iget-object v8, v7, Lbr;->A:Lcr;

    if-eqz v8, :cond_c

    .line 46
    invoke-virtual {v1, v7}, Lcr;->g(Lbr;)Lcx;

    move-result-object v7

    iget-object v8, v1, Lcr;->a:Lcy;

    .line 47
    invoke-virtual {v8, v7}, Lcy;->i(Lcx;)V

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 42
    :cond_e
    move-object/from16 v2, p1

    .line 47
    move/from16 v0, p3

    :goto_d
    if-ge v0, v3, :cond_13

    .line 48
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lau;

    .line 49
    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 50
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lau;->a(I)V

    iget-object v7, v4, Lau;->d:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    :goto_e
    if-ltz v7, :cond_12

    iget-object v6, v4, Lau;->d:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz;

    .line 53
    iget-object v8, v6, Lcz;->b:Lbr;

    if-eqz v8, :cond_f

    const/4 v9, 0x0

    iput-boolean v9, v8, Lbr;->u:Z

    .line 54
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lbr;->T(Z)V

    iget v9, v4, Lau;->i:I

    sparse-switch v9, :sswitch_data_0

    const/4 v9, 0x0

    goto :goto_f

    .line 75
    :sswitch_0
    const/16 v9, 0x1004

    goto :goto_f

    :sswitch_1
    const/16 v9, 0x1001

    goto :goto_f

    :sswitch_2
    const/16 v9, 0x2005

    goto :goto_f

    :sswitch_3
    const/16 v9, 0x1003

    goto :goto_f

    :sswitch_4
    const/16 v9, 0x2002

    .line 55
    :goto_f
    invoke-virtual {v8, v9}, Lbr;->S(I)V

    iget-object v9, v4, Lau;->r:Ljava/util/ArrayList;

    iget-object v10, v4, Lau;->q:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v8, v9, v10}, Lbr;->U(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 57
    :cond_f
    iget v9, v6, Lcz;->a:I

    packed-switch v9, :pswitch_data_2

    .line 3
    :pswitch_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcz;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_c
    iget-object v9, v4, Lau;->a:Lcr;

    .line 58
    iget-object v6, v6, Lcz;->h:Lzm;

    invoke-virtual {v9, v8, v6}, Lcr;->K(Lbr;Lzm;)V

    goto/16 :goto_10

    :pswitch_d
    iget-object v6, v4, Lau;->a:Lcr;

    .line 59
    invoke-virtual {v6, v8}, Lcr;->L(Lbr;)V

    goto/16 :goto_10

    :pswitch_e
    iget-object v6, v4, Lau;->a:Lcr;

    .line 60
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcr;->L(Lbr;)V

    goto/16 :goto_10

    .line 61
    :pswitch_f
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 62
    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcr;->J(Lbr;Z)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 63
    invoke-virtual {v6, v8}, Lcr;->m(Lbr;)V

    goto :goto_10

    .line 64
    :pswitch_10
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 65
    invoke-virtual {v6, v8}, Lcr;->l(Lbr;)V

    goto :goto_10

    .line 66
    :pswitch_11
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 67
    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcr;->J(Lbr;Z)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 68
    invoke-virtual {v6, v8}, Lcr;->E(Lbr;)V

    goto :goto_10

    .line 69
    :pswitch_12
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 70
    invoke-static {v8}, Lcr;->Y(Lbr;)V

    goto :goto_10

    .line 71
    :pswitch_13
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 72
    invoke-virtual {v6, v8}, Lcr;->f(Lbr;)Lcx;

    goto :goto_10

    .line 73
    :pswitch_14
    iget v9, v6, Lcz;->d:I

    iget v10, v6, Lcz;->e:I

    iget v11, v6, Lcz;->f:I

    iget v6, v6, Lcz;->g:I

    invoke-virtual {v8, v9, v10, v11, v6}, Lbr;->P(IIII)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 74
    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcr;->J(Lbr;Z)V

    iget-object v6, v4, Lau;->a:Lcr;

    .line 75
    invoke-virtual {v6, v8}, Lcr;->H(Lbr;)V

    .line 58
    :goto_10
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_e

    .line 75
    :cond_10
    nop

    .line 76
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lau;->a(I)V

    iget-object v6, v4, Lau;->d:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_12

    iget-object v8, v4, Lau;->d:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz;

    .line 79
    iget-object v9, v8, Lcz;->b:Lbr;

    if-eqz v9, :cond_11

    const/4 v10, 0x0

    iput-boolean v10, v9, Lbr;->u:Z

    .line 80
    invoke-virtual {v9, v10}, Lbr;->T(Z)V

    iget v10, v4, Lau;->i:I

    .line 81
    invoke-virtual {v9, v10}, Lbr;->S(I)V

    iget-object v10, v4, Lau;->q:Ljava/util/ArrayList;

    iget-object v11, v4, Lau;->r:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v9, v10, v11}, Lbr;->U(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 83
    :cond_11
    iget v10, v8, Lcz;->a:I

    packed-switch v10, :pswitch_data_3

    .line 208
    :pswitch_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcz;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_16
    iget-object v10, v4, Lau;->a:Lcr;

    .line 84
    iget-object v8, v8, Lcz;->i:Lzm;

    invoke-virtual {v10, v9, v8}, Lcr;->K(Lbr;Lzm;)V

    goto/16 :goto_12

    :pswitch_17
    iget-object v8, v4, Lau;->a:Lcr;

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcr;->L(Lbr;)V

    goto/16 :goto_12

    :pswitch_18
    iget-object v8, v4, Lau;->a:Lcr;

    .line 86
    invoke-virtual {v8, v9}, Lcr;->L(Lbr;)V

    goto/16 :goto_12

    .line 87
    :pswitch_19
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 88
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcr;->J(Lbr;Z)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 89
    invoke-virtual {v8, v9}, Lcr;->l(Lbr;)V

    goto :goto_12

    .line 90
    :pswitch_1a
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 91
    invoke-virtual {v8, v9}, Lcr;->m(Lbr;)V

    goto :goto_12

    .line 92
    :pswitch_1b
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 93
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcr;->J(Lbr;Z)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 94
    invoke-static {v9}, Lcr;->Y(Lbr;)V

    goto :goto_12

    .line 95
    :pswitch_1c
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 96
    invoke-virtual {v8, v9}, Lcr;->E(Lbr;)V

    goto :goto_12

    .line 97
    :pswitch_1d
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 98
    invoke-virtual {v8, v9}, Lcr;->H(Lbr;)V

    goto :goto_12

    .line 99
    :pswitch_1e
    iget v10, v8, Lcz;->d:I

    iget v11, v8, Lcz;->e:I

    iget v12, v8, Lcz;->f:I

    iget v8, v8, Lcz;->g:I

    invoke-virtual {v9, v10, v11, v12, v8}, Lbr;->P(IIII)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 100
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcr;->J(Lbr;Z)V

    iget-object v8, v4, Lau;->a:Lcr;

    .line 101
    invoke-virtual {v8, v9}, Lcr;->f(Lbr;)Lcx;

    .line 84
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    .line 75
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 101
    :cond_13
    move-object/from16 v5, p2

    add-int/lit8 v0, v3, -0x1

    .line 102
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v4, p3

    :goto_13
    if-ge v4, v3, :cond_18

    .line 103
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lau;

    if-eqz v0, :cond_15

    .line 104
    iget-object v7, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, -0x1

    add-int/2addr v7, v8

    :goto_14
    if-ltz v7, :cond_17

    .line 105
    iget-object v8, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz;

    .line 106
    iget-object v8, v8, Lcz;->b:Lbr;

    if-eqz v8, :cond_14

    .line 107
    invoke-virtual {v1, v8}, Lcr;->g(Lbr;)Lcx;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Lcx;->d()V

    :cond_14
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 109
    :cond_15
    iget-object v6, v6, Lau;->d:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v7, :cond_17

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcz;

    .line 110
    iget-object v9, v9, Lcz;->b:Lbr;

    if-eqz v9, :cond_16

    .line 111
    invoke-virtual {v1, v9}, Lcr;->g(Lbr;)Lcx;

    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lcx;->d()V

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 108
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 112
    :cond_18
    iget v4, v1, Lcr;->i:I

    .line 113
    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcr;->F(IZ)V

    new-instance v4, Ljava/util/HashSet;

    .line 114
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_16
    if-ge v6, v3, :cond_1b

    .line 115
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lau;

    .line 116
    iget-object v7, v7, Lau;->d:Ljava/util/ArrayList;

    .line 117
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v8, :cond_1a

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 116
    check-cast v10, Lcz;

    .line 118
    iget-object v10, v10, Lcz;->b:Lbr;

    if-eqz v10, :cond_19

    iget-object v10, v10, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v10, :cond_19

    .line 119
    invoke-static {v10, v1}, Ldm;->b(Landroid/view/ViewGroup;Lcr;)Ldm;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 120
    :cond_1b
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldm;

    iput-boolean v0, v6, Ldm;->d:Z

    iget-object v7, v6, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v7

    .line 121
    :try_start_0
    invoke-virtual {v6}, Ldm;->d()V

    iget-object v8, v6, Ldm;->b:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, -0x1

    add-int/2addr v8, v9

    :goto_19
    const/4 v9, 0x2

    if-ltz v8, :cond_1d

    iget-object v10, v6, Ldm;->b:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldl;

    iget-object v11, v10, Ldl;->a:Lbr;

    .line 124
    iget-object v11, v11, Lbr;->P:Landroid/view/View;

    invoke-static {v11}, Lr;->n(Landroid/view/View;)I

    move-result v11

    iget v12, v10, Ldl;->e:I

    if-ne v12, v9, :cond_1c

    if-eq v11, v9, :cond_1c

    iget-object v8, v10, Ldl;->a:Lbr;

    iget-object v8, v8, Lbr;->S:Lbo;

    goto :goto_1a

    .line 202
    :cond_1c
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    .line 125
    :cond_1d
    :goto_1a
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, v6, Ldm;->a:Landroid/view/ViewGroup;

    .line 126
    invoke-static {v7}, Lhs;->F(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 127
    invoke-virtual {v6}, Ldm;->c()V

    const/4 v7, 0x0

    iput-boolean v7, v6, Ldm;->d:Z

    goto :goto_18

    :cond_1e
    iget-object v8, v6, Ldm;->b:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_1
    iget-object v7, v6, Ldm;->b:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_40

    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, v6, Ldm;->c:Ljava/util/ArrayList;

    .line 129
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v6, Ldm;->c:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldl;

    invoke-static {v9}, Lcr;->R(I)Z

    move-result v11

    if-eqz v11, :cond_20

    new-instance v11, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    :cond_20
    invoke-virtual {v10}, Ldl;->d()V

    iget-boolean v11, v10, Ldl;->d:Z

    if-nez v11, :cond_1f

    iget-object v11, v6, Ldm;->c:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 127
    :cond_21
    invoke-virtual {v6}, Ldm;->d()V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, v6, Ldm;->b:Ljava/util/ArrayList;

    .line 135
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v6, Ldm;->b:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v6, Ldm;->c:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldl;

    .line 139
    invoke-virtual {v11}, Ldl;->b()V

    goto :goto_1c

    :cond_22
    iget-boolean v10, v6, Ldm;->d:Z

    .line 140
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldl;

    iget-object v15, v14, Ldl;->a:Lbr;

    .line 141
    iget-object v15, v15, Lbr;->P:Landroid/view/View;

    invoke-static {v15}, Lr;->n(Landroid/view/View;)I

    move-result v15

    iget v9, v14, Ldl;->e:I

    add-int/lit8 v19, v9, -0x1

    if-eqz v9, :cond_25

    packed-switch v19, :pswitch_data_4

    :cond_23
    :goto_1e
    goto :goto_1f

    :pswitch_1f
    const/4 v9, 0x2

    if-ne v15, v9, :cond_24

    goto :goto_1e

    :cond_24
    move-object v13, v14

    goto :goto_1f

    :pswitch_20
    const/4 v9, 0x2

    if-ne v15, v9, :cond_23

    if-nez v12, :cond_23

    move-object v12, v14

    :goto_1f
    const/4 v9, 0x2

    goto :goto_1d

    .line 125
    :cond_25
    nop

    .line 207
    const/4 v9, 0x0

    throw v9

    .line 141
    :cond_26
    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Lcr;->R(I)Z

    move-result v14

    if-eqz v14, :cond_27

    new-instance v11, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Executing operations from "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    new-instance v11, Ljava/util/ArrayList;

    .line 143
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 144
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 145
    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Ldl;

    move/from16 v18, v0

    new-instance v0, Lxv;

    invoke-direct {v0}, Lxv;-><init>()V

    .line 147
    invoke-virtual {v9, v0}, Ldl;->e(Lxv;)V

    new-instance v1, Lbe;

    invoke-direct {v1, v9, v0, v10}, Lbe;-><init>(Ldl;Lxv;Z)V

    .line 148
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lxv;

    invoke-direct {v0}, Lxv;-><init>()V

    .line 149
    invoke-virtual {v9, v0}, Ldl;->e(Lxv;)V

    new-instance v1, Lbg;

    if-eqz v10, :cond_28

    if-ne v9, v12, :cond_29

    move-object/from16 v20, v4

    const/4 v4, 0x1

    goto :goto_21

    .line 152
    :cond_28
    if-ne v9, v13, :cond_29

    move-object/from16 v20, v4

    const/4 v4, 0x1

    goto :goto_21

    :cond_29
    move-object/from16 v20, v4

    const/4 v4, 0x0

    .line 150
    :goto_21
    invoke-direct {v1, v9, v0, v10, v4}, Lbg;-><init>(Ldl;Lxv;ZZ)V

    .line 151
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lay;

    invoke-direct {v0, v15, v9}, Lay;-><init>(Ljava/util/List;Ldl;)V

    .line 152
    invoke-virtual {v9, v0}, Ldl;->c(Ljava/lang/Runnable;)V

    move-object/from16 v1, p0

    move/from16 v0, v18

    move-object/from16 v4, v20

    const/4 v9, 0x0

    goto :goto_20

    :cond_2a
    move/from16 v18, v0

    move-object/from16 v20, v4

    new-instance v0, Ljava/util/HashMap;

    .line 153
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbg;

    .line 155
    invoke-virtual {v4}, Lbf;->c()Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v4, Lbg;->c:Ljava/lang/Object;

    .line 156
    invoke-virtual {v4, v7}, Lbg;->a(Ljava/lang/Object;)V

    iget-object v7, v4, Lbg;->d:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lbg;->a(Ljava/lang/Object;)V

    goto :goto_22

    .line 157
    :cond_2c
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbg;

    iget-object v7, v4, Lbf;->a:Ldl;

    .line 158
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v4}, Lbf;->b()V

    goto :goto_23

    :cond_2d
    nop

    .line 160
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, v6, Ldm;->a:Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    .line 162
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_36

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lbe;

    .line 164
    invoke-virtual {v14}, Lbf;->c()Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 165
    invoke-virtual {v14}, Lbf;->b()V

    move-object/from16 v28, v6

    move-object/from16 v27, v10

    goto :goto_25

    .line 166
    :cond_2e
    move-object/from16 v27, v10

    invoke-virtual {v14, v7}, Lbe;->a(Landroid/content/Context;)Lbw;

    move-result-object v10

    if-nez v10, :cond_2f

    .line 167
    invoke-virtual {v14}, Lbf;->b()V

    move-object/from16 v28, v6

    goto :goto_25

    :cond_2f
    iget-object v10, v10, Lbw;->b:Landroid/animation/Animator;

    if-nez v10, :cond_30

    .line 168
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v6

    goto :goto_25

    :cond_30
    iget-object v5, v14, Lbf;->a:Ldl;

    iget-object v2, v5, Ldl;->a:Lbr;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 169
    move-object/from16 v28, v6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x2

    invoke-static {v3}, Lcr;->R(I)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring Animator set on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as this Fragment was involved in a Transition."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_31
    invoke-virtual {v14}, Lbf;->b()V

    .line 163
    :goto_25
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v3, p4

    move-object/from16 v10, v27

    move-object/from16 v6, v28

    goto :goto_24

    .line 179
    :cond_32
    iget v3, v5, Ldl;->e:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_33

    const/16 v24, 0x1

    goto :goto_26

    .line 177
    :cond_33
    const/16 v24, 0x0

    .line 179
    :goto_26
    if-eqz v24, :cond_34

    .line 170
    invoke-interface {v15, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_34
    iget-object v2, v2, Lbr;->P:Landroid/view/View;

    .line 172
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Laz;

    .line 173
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v14

    invoke-direct/range {v21 .. v26}, Laz;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLdl;Lbe;)V

    invoke-virtual {v10, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {v10, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    const/4 v2, 0x2

    invoke-static {v2}, Lcr;->R(I)Z

    move-result v3

    if-eqz v3, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animator from operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    iget-object v2, v14, Lbf;->b:Lxv;

    new-instance v3, Lba;

    invoke-direct {v3, v10, v5}, Lba;-><init>(Landroid/animation/Animator;Ldl;)V

    .line 177
    invoke-virtual {v2, v3}, Lxv;->a(Lxu;)V

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v3, p4

    move-object/from16 v10, v27

    move-object/from16 v6, v28

    const/4 v11, 0x1

    goto/16 :goto_24

    .line 180
    :cond_36
    move-object/from16 v28, v6

    const/4 v6, 0x3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_3d

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 181
    check-cast v3, Lbe;

    iget-object v5, v3, Lbf;->a:Ldl;

    iget-object v10, v5, Ldl;->a:Lbr;

    if-eqz v1, :cond_38

    const/4 v5, 0x2

    invoke-static {v5}, Lcr;->R(I)Z

    move-result v14

    if-eqz v14, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring Animation set on "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_37
    invoke-virtual {v3}, Lbf;->b()V

    move/from16 v21, v0

    const/4 v0, 0x1

    goto/16 :goto_29

    :cond_38
    if-eqz v11, :cond_3a

    const/4 v5, 0x2

    invoke-static {v5}, Lcr;->R(I)Z

    move-result v14

    if-eqz v14, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring Animation set on "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_39
    invoke-virtual {v3}, Lbf;->b()V

    move/from16 v21, v0

    const/4 v0, 0x1

    goto :goto_29

    .line 186
    :cond_3a
    iget-object v10, v10, Lbr;->P:Landroid/view/View;

    .line 187
    invoke-virtual {v3, v7}, Lbe;->a(Landroid/content/Context;)Lbw;

    move-result-object v14

    invoke-static {v14}, Lez;->m(Ljava/lang/Object;)V

    iget-object v14, v14, Lbw;->a:Landroid/view/animation/Animation;

    .line 188
    invoke-static {v14}, Lez;->m(Ljava/lang/Object;)V

    iget v6, v5, Ldl;->e:I

    move/from16 v21, v0

    const/4 v0, 0x1

    if-eq v6, v0, :cond_3b

    .line 189
    invoke-virtual {v10, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    invoke-virtual {v3}, Lbf;->b()V

    goto :goto_28

    .line 191
    :cond_3b
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 192
    new-instance v6, Lbx;

    invoke-direct {v6, v14, v4, v10}, Lbx;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 193
    new-instance v14, Lbc;

    invoke-direct {v14, v5, v4, v10, v3}, Lbc;-><init>(Ldl;Landroid/view/ViewGroup;Landroid/view/View;Lbe;)V

    invoke-virtual {v6, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    invoke-virtual {v10, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x2

    invoke-static {v6}, Lcr;->R(I)Z

    move-result v14

    if-eqz v14, :cond_3c

    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Animation from operation "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " has started."

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_3c
    :goto_28
    iget-object v6, v3, Lbf;->b:Lxv;

    new-instance v14, Lbd;

    invoke-direct {v14, v10, v4, v3, v5}, Lbd;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lbe;Ldl;)V

    .line 196
    invoke-virtual {v6, v14}, Lxv;->a(Lxu;)V

    .line 183
    :goto_29
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v21

    const/4 v6, 0x3

    goto/16 :goto_27

    .line 197
    :cond_3d
    const/4 v0, 0x1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v1, :cond_3e

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 198
    check-cast v2, Ldl;

    .line 199
    invoke-static {v2}, Ldm;->f(Ldl;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 200
    :cond_3e
    invoke-interface {v15}, Ljava/util/List;->clear()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed executing operations from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    move-object/from16 v6, v28

    const/4 v1, 0x0

    iput-boolean v1, v6, Ldm;->d:Z

    goto :goto_2b

    .line 128
    :cond_40
    move/from16 v18, v0

    move-object/from16 v20, v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    :goto_2b
    monitor-exit v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v3, p4

    move/from16 v0, v18

    move-object/from16 v4, v20

    goto/16 :goto_18

    .line 125
    :catchall_0
    move-exception v0

    .line 202
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 209
    :catchall_1
    move-exception v0

    .line 125
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 202
    :cond_41
    move/from16 v0, p3

    :goto_2c
    move/from16 v1, p4

    if-ge v0, v1, :cond_44

    .line 203
    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    .line 204
    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 205
    iget v5, v3, Lau;->c:I

    if-ltz v5, :cond_42

    .line 206
    const/4 v5, -0x1

    iput v5, v3, Lau;->c:I

    goto :goto_2d

    .line 205
    :cond_42
    const/4 v5, -0x1

    goto :goto_2d

    .line 204
    :cond_43
    const/4 v5, -0x1

    .line 206
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_44
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_4
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2005 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_15
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private final aj(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    iget-boolean v3, v3, Lau;->s:Z

    if-nez v3, :cond_4

    if-eq v2, v1, :cond_1

    .line 6
    invoke-direct {p0, p1, p2, v2, v1}, Lcr;->ai(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    iget-boolean v3, v3, Lau;->s:Z

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcr;->ai(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    .line 9
    :cond_4
    nop

    .line 10
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_5
    if-eq v2, v0, :cond_6

    .line 11
    invoke-direct {p0, p1, p2, v2, v0}, Lcr;->ai(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    return-void

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final ak(Lbr;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcr;->ab(Lbr;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lbr;->n()I

    move-result v1

    invoke-virtual {p1}, Lbr;->o()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lbr;->p()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lbr;->q()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 3
    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    nop

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr;

    .line 6
    invoke-virtual {p1}, Lbr;->W()Z

    move-result p1

    invoke-virtual {v0, p1}, Lbr;->T(Z)V

    :cond_1
    return-void
.end method

.method private final al()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 2
    iget-boolean v3, v2, Lbr;->Q:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcr;->u:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcr;->C:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v2, Lbr;->Q:Z

    .line 4
    invoke-virtual {v1}, Lcx;->d()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method final A()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcr;->a:Lcy;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcy;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    .line 3
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcy;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    iget-object v5, v5, Lcx;->c:Lbr;

    .line 6
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lbr;->E:I

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mContainerId=#"

    .line 9
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lbr;->F:I

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mTag="

    .line 11
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->G:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lbr;->h:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " mWho="

    .line 13
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->m:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mBackStackNesting="

    .line 14
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lbr;->z:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 15
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAdded="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->s:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mRemoving="

    .line 16
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->t:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mFromLayout="

    .line 17
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->v:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mInLayout="

    .line 18
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->w:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHidden="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->H:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mDetached="

    .line 20
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->I:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mMenuVisible="

    .line 21
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->M:Z

    const/4 v6, 0x1

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mHasMenu="

    .line 22
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 23
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->J:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mUserVisibleHint="

    .line 24
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lbr;->R:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v5, Lbr;->A:Lcr;

    if-eqz v6, :cond_0

    .line 25
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->A:Lcr;

    .line 26
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v6, v5, Lbr;->B:Lcc;

    if-eqz v6, :cond_1

    .line 27
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->B:Lcc;

    .line 28
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, v5, Lbr;->D:Lbr;

    if-eqz v6, :cond_2

    .line 29
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->D:Lbr;

    .line 30
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, v5, Lbr;->n:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 31
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->n:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v6, v5, Lbr;->i:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 32
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->i:Landroid/os/Bundle;

    .line 33
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v6, v5, Lbr;->j:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    .line 34
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->j:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v6, v5, Lbr;->k:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    .line 36
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->k:Landroid/os/Bundle;

    .line 37
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    nop

    .line 38
    invoke-virtual {v5, v4}, Lbr;->w(Z)Lbr;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 39
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mTarget="

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " mTargetRequestCode="

    .line 40
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lbr;->q:I

    .line 41
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 42
    :cond_7
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lbr;->W()Z

    move-result v6

    .line 42
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 38
    invoke-virtual {v5}, Lbr;->n()I

    move-result v6

    if-eqz v6, :cond_8

    .line 43
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lbr;->n()I

    move-result v6

    .line 43
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 38
    :cond_8
    invoke-virtual {v5}, Lbr;->o()I

    move-result v6

    if-eqz v6, :cond_9

    .line 44
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lbr;->o()I

    move-result v6

    .line 44
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 38
    :cond_9
    invoke-virtual {v5}, Lbr;->p()I

    move-result v6

    if-eqz v6, :cond_a

    .line 45
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lbr;->p()I

    move-result v6

    .line 46
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 38
    :cond_a
    invoke-virtual {v5}, Lbr;->q()I

    move-result v6

    if-eqz v6, :cond_b

    .line 47
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lbr;->q()I

    move-result v6

    .line 47
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v6, v5, Lbr;->O:Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    .line 48
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->O:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v6, v5, Lbr;->P:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 49
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lbr;->P:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-object v6, v5, Lbr;->S:Lbo;

    .line 38
    invoke-virtual {v5}, Lbr;->r()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 50
    invoke-static {v5}, Laam;->a(Lzq;)Laam;

    move-result-object v6

    invoke-virtual {v6, v2, p3}, Laam;->c(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 51
    :cond_e
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lbr;->C:Lcr;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v5, Lbr;->C:Lcr;

    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {v5, v6, p2, p3, p4}, Lcr;->B(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "null"

    .line 54
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object p2, v1, Lcy;->a:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_11

    .line 56
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_11

    iget-object v2, v1, Lcy;->a:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    .line 58
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 59
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 61
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Lbr;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_11
    iget-object p2, p0, Lcr;->v:Ljava/util/ArrayList;

    if-eqz p2, :cond_12

    .line 63
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 64
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p2, :cond_12

    iget-object v1, p0, Lcr;->v:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    .line 66
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 67
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 69
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lbr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_12
    iget-object p2, p0, Lcr;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_13

    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 72
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_13

    iget-object v1, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    .line 74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 75
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 77
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lau;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0, p3}, Lau;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 80
    :cond_13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Back Stack Index: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcr;->t:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_14

    .line 83
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v4, p4, :cond_14

    iget-object v0, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp;

    .line 85
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    .line 86
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 88
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 90
    :cond_14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 92
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 94
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcr;->j:Lcc;

    .line 95
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 97
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcr;->k:Lby;

    .line 98
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcr;->l:Lbr;

    if-eqz p2, :cond_15

    .line 99
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 100
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcr;->l:Lbr;

    .line 101
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    :cond_15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 103
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcr;->i:I

    .line 104
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 105
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcr;->p:Z

    .line 106
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 107
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcr;->q:Z

    .line 108
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 109
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcr;->r:Z

    .line 110
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lcr;->o:Z

    if-eqz p2, :cond_16

    .line 111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 112
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcr;->o:Z

    .line 113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_16
    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method final C(Lcp;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcr;->j:Lcc;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcr;->r:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcr;->ad()V

    :cond_2
    iget-object v0, p0, Lcr;->t:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcr;->j:Lcc;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 4
    monitor-exit v0

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    iget-object p2, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcr;->t:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcr;->j:Lcc;

    iget-object p2, p2, Lcc;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcr;->G:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcr;->j:Lcc;

    iget-object p2, p2, Lcc;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcr;->G:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-virtual {p0}, Lcr;->M()V

    .line 11
    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 5
    :catchall_0
    move-exception p2

    .line 11
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    .line 2
    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method final D(Lcp;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcr;->j:Lcc;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcr;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcr;->ah(Z)V

    iget-object p2, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object v0, p0, Lcr;->E:Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1, p2, v0}, Lcp;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcr;->u:Z

    :try_start_0
    iget-object p1, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object p2, p0, Lcr;->E:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0, p1, p2}, Lcr;->aj(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lcr;->ae()V

    .line 6
    invoke-virtual {p0}, Lcr;->M()V

    .line 7
    invoke-direct {p0}, Lcr;->af()V

    iget-object p1, p0, Lcr;->a:Lcy;

    .line 8
    invoke-virtual {p1}, Lcy;->h()V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-direct {p0}, Lcr;->ae()V

    .line 5
    throw p1
.end method

.method final E(Lbr;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    iget-boolean v0, p1, Lbr;->H:Z

    if-nez v0, :cond_1

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lbr;->H:Z

    .line 4
    iget-boolean v1, p1, Lbr;->T:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lbr;->T:Z

    .line 5
    invoke-direct {p0, p1}, Lcr;->ak(Lbr;)V

    :cond_1
    return-void
.end method

.method final F(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcr;->j:Lcc;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    iget p2, p0, Lcr;->i:I

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    return-void

    .line 1
    :cond_3
    :goto_1
    iput p1, p0, Lcr;->i:I

    iget-object p1, p0, Lcr;->a:Lcy;

    iget-object p2, p1, Lcy;->a:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Lbr;

    iget-object v4, p1, Lcy;->b:Ljava/util/HashMap;

    .line 3
    iget-object v3, v3, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcx;

    if-eqz v3, :cond_4

    .line 4
    invoke-virtual {v3}, Lcx;->d()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object p2, p1, Lcy;->b:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Lcx;->d()V

    iget-object v2, v0, Lcx;->c:Lbr;

    .line 7
    iget-boolean v3, v2, Lbr;->t:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lbr;->Y()Z

    move-result v3

    if-nez v3, :cond_6

    .line 8
    iget-boolean v2, v2, Lbr;->u:Z

    .line 9
    invoke-virtual {p1, v0}, Lcy;->j(Lcx;)V

    goto :goto_3

    .line 10
    :cond_7
    invoke-direct {p0}, Lcr;->al()V

    iget-boolean p1, p0, Lcr;->o:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcr;->j:Lcc;

    if-eqz p1, :cond_8

    iget p2, p0, Lcr;->i:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    check-cast p1, Lbu;

    iget-object p1, p1, Lbu;->a:Lbv;

    .line 11
    invoke-virtual {p1}, Lbv;->d()V

    iput-boolean v1, p0, Lcr;->o:Z

    :cond_8
    return-void
.end method

.method final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr;->j:Lcc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->p:Z

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v1}, Lcr;->G()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final H(Lbr;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lbr;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p1}, Lbr;->Y()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    iget-boolean v2, p1, Lbr;->I:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcr;->a:Lcy;

    .line 4
    invoke-virtual {v0, p1}, Lcy;->k(Lbr;)V

    .line 5
    invoke-static {p1}, Lcr;->V(Lbr;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcr;->o:Z

    .line 6
    :cond_3
    iput-boolean v1, p1, Lbr;->t:Z

    .line 7
    invoke-direct {p0, p1}, Lcr;->ak(Lbr;)V

    return-void
.end method

.method final I(Landroid/os/Parcelable;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lcs;

    iget-object v2, v1, Lcs;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcr;->a:Lcy;

    iget-object v4, v3, Lcy;->c:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 4
    check-cast v7, Lcv;

    iget-object v8, v3, Lcy;->c:Ljava/util/HashMap;

    .line 5
    iget-object v9, v7, Lcv;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcr;->a:Lcy;

    iget-object v2, v2, Lcy;->b:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcs;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    const-string v7, "): "

    const/4 v8, 0x2

    if-ge v4, v3, :cond_7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcr;->a:Lcy;

    .line 8
    invoke-virtual {v10, v9, v6}, Lcy;->c(Ljava/lang/String;Lcv;)Lcv;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v9, v0, Lcr;->s:Lct;

    iget-object v10, v6, Lcv;->b:Ljava/lang/String;

    iget-object v9, v9, Lct;->b:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbr;

    if-eqz v9, :cond_4

    invoke-static {v8}, Lcr;->R(I)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v10, Lcx;

    iget-object v11, v0, Lcr;->g:Lcg;

    iget-object v12, v0, Lcr;->a:Lcy;

    .line 11
    invoke-direct {v10, v11, v12, v9, v6}, Lcx;-><init>(Lcg;Lcy;Lbr;Lcv;)V

    goto :goto_2

    .line 17
    :cond_4
    new-instance v10, Lcx;

    iget-object v12, v0, Lcr;->g:Lcg;

    iget-object v13, v0, Lcr;->a:Lcy;

    iget-object v9, v0, Lcr;->j:Lcc;

    iget-object v9, v9, Lcc;->c:Landroid/content/Context;

    .line 12
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcr;->e()Lcb;

    move-result-object v15

    move-object v11, v10

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcx;-><init>(Lcg;Lcy;Ljava/lang/ClassLoader;Lcb;Lcv;)V

    .line 11
    :goto_2
    iget-object v6, v10, Lcx;->c:Lbr;

    .line 14
    iput-object v0, v6, Lbr;->A:Lcr;

    invoke-static {v8}, Lcr;->R(I)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSaveState: active ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v6, v0, Lcr;->j:Lcc;

    iget-object v6, v6, Lcc;->c:Landroid/content/Context;

    .line 16
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcx;->e(Ljava/lang/ClassLoader;)V

    iget-object v6, v0, Lcr;->a:Lcy;

    .line 17
    invoke-virtual {v6, v10}, Lcy;->i(Lcx;)V

    iget v6, v0, Lcr;->i:I

    iput v6, v10, Lcx;->d:I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 13
    :cond_7
    iget-object v2, v0, Lcr;->s:Lct;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lct;->b:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr;

    iget-object v9, v0, Lcr;->a:Lcy;

    .line 20
    iget-object v10, v3, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcy;->l(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v8}, Lcr;->R(I)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarding retained Fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " that was not found in the set of active Fragments "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcs;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v9, v0, Lcr;->s:Lct;

    .line 22
    invoke-virtual {v9, v3}, Lct;->d(Lbr;)V

    .line 23
    iput-object v0, v3, Lbr;->A:Lcr;

    new-instance v9, Lcx;

    iget-object v10, v0, Lcr;->g:Lcg;

    iget-object v11, v0, Lcr;->a:Lcy;

    invoke-direct {v9, v10, v11, v3}, Lcx;-><init>(Lcg;Lcy;Lbr;)V

    iput v4, v9, Lcx;->d:I

    .line 24
    invoke-virtual {v9}, Lcx;->d()V

    .line 25
    iput-boolean v4, v3, Lbr;->t:Z

    .line 26
    invoke-virtual {v9}, Lcx;->d()V

    goto :goto_3

    :cond_a
    iget-object v2, v0, Lcr;->a:Lcy;

    iget-object v3, v1, Lcs;->c:Ljava/util/ArrayList;

    iget-object v9, v2, Lcy;->a:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_d

    .line 28
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v9}, Lcy;->a(Ljava/lang/String;)Lbr;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 67
    invoke-static {v8}, Lcr;->R(I)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreSaveState: added ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    :cond_b
    invoke-virtual {v2, v10}, Lcy;->g(Lbr;)V

    goto :goto_4

    .line 29
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_d
    iget-object v2, v1, Lcs;->d:[Lav;

    if-eqz v2, :cond_14

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcr;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_5
    iget-object v3, v1, Lcs;->d:[Lav;

    .line 33
    array-length v6, v3

    if-ge v2, v6, :cond_15

    .line 34
    aget-object v3, v3, v2

    new-instance v6, Lau;

    .line 35
    invoke-direct {v6, v0}, Lau;-><init>(Lcr;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    iget-object v11, v3, Lav;->a:[I

    .line 36
    array-length v11, v11

    if-ge v9, v11, :cond_10

    new-instance v11, Lcz;

    invoke-direct {v11}, Lcz;-><init>()V

    add-int/lit8 v12, v9, 0x1

    iget-object v13, v3, Lav;->a:[I

    .line 37
    aget v9, v13, v9

    iput v9, v11, Lcz;->a:I

    invoke-static {v8}, Lcr;->R(I)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Instantiate "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " op #"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " base fragment #"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lav;->a:[I

    aget v13, v13, v12

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    :cond_e
    invoke-static {}, Lzm;->values()[Lzm;

    move-result-object v9

    iget-object v13, v3, Lav;->c:[I

    aget v13, v13, v10

    aget-object v9, v9, v13

    iput-object v9, v11, Lcz;->h:Lzm;

    .line 40
    invoke-static {}, Lzm;->values()[Lzm;

    move-result-object v9

    iget-object v13, v3, Lav;->d:[I

    aget v13, v13, v10

    aget-object v9, v9, v13

    iput-object v9, v11, Lcz;->i:Lzm;

    iget-object v9, v3, Lav;->a:[I

    add-int/lit8 v13, v12, 0x1

    .line 41
    aget v12, v9, v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    goto :goto_7

    .line 46
    :cond_f
    const/4 v12, 0x0

    .line 41
    :goto_7
    iput-boolean v12, v11, Lcz;->c:Z

    add-int/lit8 v12, v13, 0x1

    .line 42
    aget v13, v9, v13

    iput v13, v11, Lcz;->d:I

    add-int/lit8 v14, v12, 0x1

    .line 43
    aget v12, v9, v12

    iput v12, v11, Lcz;->e:I

    add-int/lit8 v15, v14, 0x1

    .line 44
    aget v14, v9, v14

    iput v14, v11, Lcz;->f:I

    add-int/lit8 v16, v15, 0x1

    .line 45
    aget v9, v9, v15

    iput v9, v11, Lcz;->g:I

    iput v13, v6, Lau;->e:I

    iput v12, v6, Lau;->f:I

    iput v14, v6, Lau;->g:I

    iput v9, v6, Lau;->h:I

    .line 46
    invoke-virtual {v6, v11}, Lda;->i(Lcz;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto/16 :goto_6

    :cond_10
    iget v9, v3, Lav;->e:I

    iput v9, v6, Lau;->i:I

    iget-object v9, v3, Lav;->f:Ljava/lang/String;

    iput-object v9, v6, Lau;->l:Ljava/lang/String;

    iput-boolean v4, v6, Lau;->j:Z

    iget v9, v3, Lav;->h:I

    iput v9, v6, Lau;->m:I

    iget-object v9, v3, Lav;->i:Ljava/lang/CharSequence;

    iput-object v9, v6, Lau;->n:Ljava/lang/CharSequence;

    iget v9, v3, Lav;->j:I

    iput v9, v6, Lau;->o:I

    iget-object v9, v3, Lav;->k:Ljava/lang/CharSequence;

    iput-object v9, v6, Lau;->p:Ljava/lang/CharSequence;

    iget-object v9, v3, Lav;->l:Ljava/util/ArrayList;

    iput-object v9, v6, Lau;->q:Ljava/util/ArrayList;

    iget-object v9, v3, Lav;->m:Ljava/util/ArrayList;

    iput-object v9, v6, Lau;->r:Ljava/util/ArrayList;

    iget-boolean v9, v3, Lav;->n:Z

    iput-boolean v9, v6, Lau;->s:Z

    iget v9, v3, Lav;->g:I

    iput v9, v6, Lau;->c:I

    const/4 v9, 0x0

    :goto_8
    iget-object v10, v3, Lav;->b:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    iget-object v10, v3, Lav;->b:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_11

    iget-object v11, v6, Lau;->d:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcz;

    invoke-virtual {v0, v10}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object v10

    iput-object v10, v11, Lcz;->b:Lbr;

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    nop

    .line 50
    invoke-virtual {v6, v4}, Lau;->a(I)V

    invoke-static {v8}, Lcr;->R(I)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: back stack #"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (index "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lau;->c:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v3, Lde;

    invoke-direct {v3}, Lde;-><init>()V

    new-instance v9, Ljava/io/PrintWriter;

    .line 53
    invoke-direct {v9, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 54
    const-string v3, "  "

    invoke-virtual {v6, v3, v9, v5}, Lau;->e(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 55
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    :cond_13
    iget-object v3, v0, Lcr;->b:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 66
    :cond_14
    iput-object v6, v0, Lcr;->b:Ljava/util/ArrayList;

    .line 56
    :cond_15
    iget-object v2, v0, Lcr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Lcs;->e:I

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lcs;->f:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 58
    invoke-virtual {v0, v2}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object v2

    iput-object v2, v0, Lcr;->m:Lbr;

    .line 59
    invoke-virtual {v0, v2}, Lcr;->u(Lbr;)V

    :cond_16
    iget-object v2, v1, Lcs;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    .line 60
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    iget-object v4, v0, Lcr;->w:Ljava/util/Map;

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcs;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lax;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    iget-object v2, v1, Lcs;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 62
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_18

    iget-object v3, v1, Lcs;->j:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Lcr;->j:Lcc;

    iget-object v4, v4, Lcc;->c:Landroid/content/Context;

    .line 64
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v4, v0, Lcr;->x:Ljava/util/Map;

    .line 65
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_18
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Lcs;->k:Ljava/util/ArrayList;

    .line 66
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcr;->n:Ljava/util/ArrayDeque;

    return-void
.end method

.method final J(Lbr;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcr;->ab(Lbr;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lbz;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lbz;

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lbz;->a:Z

    :cond_0
    return-void
.end method

.method final K(Lbr;Lzm;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lbr;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbr;->B:Lcc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbr;->A:Lcr;

    if-ne v0, p0, :cond_1

    .line 2
    :cond_0
    iput-object p2, p1, Lbr;->X:Lzm;

    return-void

    .line 1
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final L(Lbr;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p1, Lbr;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbr;->B:Lcc;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbr;->A:Lcr;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcr;->m:Lbr;

    iput-object p1, p0, Lcr;->m:Lbr;

    .line 2
    invoke-virtual {p0, v0}, Lcr;->u(Lbr;)V

    iget-object p1, p0, Lcr;->m:Lbr;

    .line 3
    invoke-virtual {p0, p1}, Lcr;->u(Lbr;)V

    return-void
.end method

.method public final M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->t:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcr;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcr;->e:Ltl;

    iput-boolean v2, v1, Ltl;->a:Z

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcr;->e:Ltl;

    iget-object v1, p0, Lcr;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcr;->l:Lbr;

    .line 5
    invoke-virtual {p0, v1}, Lcr;->S(Lbr;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Ltl;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final N(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcr;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lbr;->H:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v2, p1}, Lcr;->N(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final O(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcr;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbr;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcr;->W(Lbr;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lbr;->H:Z

    if-nez v5, :cond_2

    iget-object v5, v4, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v5, p1, p2}, Lcr;->O(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 4
    :cond_1
    nop

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    nop

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcr;->v:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    :goto_2
    iget-object p1, p0, Lcr;->v:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lcr;->v:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr;

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lcr;->v:Ljava/util/ArrayList;

    return v3
.end method

.method final P(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcr;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lbr;->H:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v2, p1}, Lcr;->P(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final Q(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcr;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcr;->W(Lbr;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lbr;->H:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v2, p1}, Lcr;->Q(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method final S(Lbr;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lbr;->A:Lcr;

    iget-object v2, v1, Lcr;->m:Lbr;

    invoke-virtual {p1, v2}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcr;->l:Lbr;

    .line 2
    invoke-virtual {p0, p1}, Lcr;->S(Lbr;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final T()Z
    .locals 1

    iget-boolean v0, p0, Lcr;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcr;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final U()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcr;->Z(Z)V

    .line 2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcr;->ah(Z)V

    iget-object v2, p0, Lcr;->m:Lbr;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lbr;->z()Lcr;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcr;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object v3, p0, Lcr;->E:Ljava/util/ArrayList;

    const/4 v4, -0x1

    .line 5
    invoke-virtual {p0, v2, v3, v4, v0}, Lcr;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcr;->u:Z

    :try_start_0
    iget-object v1, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->E:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0, v1, v2}, Lcr;->aj(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Lcr;->ae()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcr;->ae()V

    .line 8
    throw v0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcr;->M()V

    .line 10
    invoke-direct {p0}, Lcr;->af()V

    iget-object v1, p0, Lcr;->a:Lcy;

    .line 11
    invoke-virtual {v1}, Lcy;->h()V

    move v1, v0

    .line 4
    :goto_1
    return v1
.end method

.method final X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, -0x1

    goto :goto_4

    .line 11
    :cond_0
    if-gez p3, :cond_2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    goto :goto_4

    :cond_1
    iget-object p3, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    .line 4
    iget v3, v3, Lau;->c:I

    if-ne p3, v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_4
    :goto_1
    if-gez v0, :cond_5

    move p3, v0

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_7

    :goto_2
    if-lez v0, :cond_6

    add-int/lit8 p4, v0, -0x1

    iget-object v3, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lau;

    .line 6
    iget v3, v3, Lau;->c:I

    if-ne p3, v3, :cond_6

    move v0, p4

    goto :goto_2

    :cond_6
    nop

    .line 1
    move p3, v0

    goto :goto_4

    .line 6
    :cond_7
    iget-object p3, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v2

    if-ne v0, p3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 p3, v0, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p3, -0x1

    .line 1
    :goto_4
    if-gez p3, :cond_a

    return v1

    :cond_a
    iget-object p4, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/2addr p4, v2

    :goto_5
    const/4 v0, 0x1

    if-lt p4, p3, :cond_b

    iget-object v1, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_5

    :cond_b
    return v0
.end method

.method public final Z(Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcr;->ah(Z)V

    :goto_0
    iget-object p1, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object v0, p0, Lcr;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Lcr;->t:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_2

    .line 14
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v5, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcp;

    invoke-interface {v5, p1, v0}, Lcp;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcr;->j:Lcc;

    iget-object p1, p1, Lcc;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcr;->G:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcr;->u:Z

    :try_start_3
    iget-object p1, p0, Lcr;->D:Ljava/util/ArrayList;

    iget-object v0, p0, Lcr;->E:Ljava/util/ArrayList;

    .line 8
    invoke-direct {p0, p1, v0}, Lcr;->aj(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    invoke-direct {p0}, Lcr;->ae()V

    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 9
    invoke-direct {p0}, Lcr;->ae()V

    .line 15
    throw p1

    .line 12
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcr;->M()V

    .line 13
    invoke-direct {p0}, Lcr;->af()V

    iget-object p1, p0, Lcr;->a:Lcy;

    .line 14
    invoke-virtual {p1}, Lcy;->h()V

    return-void

    .line 7
    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v0, p0, Lcr;->t:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcr;->j:Lcc;

    iget-object v0, v0, Lcc;->d:Landroid/os/Handler;

    .line 15
    iget-object v2, p0, Lcr;->G:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    throw p1

    .line 9
    :catchall_2
    move-exception p1

    .line 7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method final a()Landroid/os/Parcelable;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcr;->ac()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldm;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcr;->ag()V

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr;->Z(Z)V

    iput-boolean v0, p0, Lcr;->p:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    iget-object v1, p0, Lcr;->a:Lcy;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcy;->b:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Lcy;->b:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcx;

    if-eqz v3, :cond_1

    iget-object v7, v3, Lcx;->c:Lbr;

    new-instance v8, Lcv;

    .line 7
    invoke-direct {v8, v7}, Lcv;-><init>(Lbr;)V

    iget-object v9, v3, Lcx;->c:Lbr;

    .line 8
    iget v10, v9, Lbr;->h:I

    if-ltz v10, :cond_c

    iget-object v10, v8, Lcv;->m:Landroid/os/Bundle;

    if-nez v10, :cond_c

    new-instance v9, Landroid/os/Bundle;

    .line 10
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v3, Lcx;->c:Lbr;

    .line 11
    invoke-virtual {v10, v9}, Lbr;->g(Landroid/os/Bundle;)V

    iget-object v11, v10, Lbr;->aa:Laew;

    .line 12
    invoke-virtual {v11, v9}, Laew;->c(Landroid/os/Bundle;)V

    iget-object v10, v10, Lbr;->C:Lcr;

    .line 13
    invoke-virtual {v10}, Lcr;->a()Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "android:support:fragments"

    .line 14
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget-object v10, v3, Lcx;->a:Lcg;

    iget-object v11, v3, Lcx;->c:Lbr;

    .line 15
    invoke-virtual {v10, v11, v9, v4}, Lcg;->j(Lbr;Landroid/os/Bundle;Z)V

    .line 16
    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v9

    :goto_2
    iget-object v4, v3, Lcx;->c:Lbr;

    .line 17
    iget-object v4, v4, Lbr;->P:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v3}, Lcx;->f()V

    :cond_4
    iget-object v4, v3, Lcx;->c:Lbr;

    .line 19
    iget-object v4, v4, Lbr;->j:Landroid/util/SparseArray;

    if-eqz v4, :cond_6

    if-nez v6, :cond_5

    new-instance v4, Landroid/os/Bundle;

    .line 20
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    :cond_5
    const-string v4, "android:view_state"

    iget-object v9, v3, Lcx;->c:Lbr;

    .line 21
    iget-object v9, v9, Lbr;->j:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_6
    iget-object v4, v3, Lcx;->c:Lbr;

    .line 22
    iget-object v4, v4, Lbr;->k:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    if-nez v6, :cond_7

    new-instance v4, Landroid/os/Bundle;

    .line 23
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    :cond_7
    const-string v4, "android:view_registry_state"

    iget-object v9, v3, Lcx;->c:Lbr;

    .line 24
    iget-object v9, v9, Lbr;->k:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v4, v3, Lcx;->c:Lbr;

    .line 25
    iget-boolean v4, v4, Lbr;->R:Z

    if-nez v4, :cond_a

    if-nez v6, :cond_9

    new-instance v4, Landroid/os/Bundle;

    .line 26
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    :cond_9
    const-string v4, "android:user_visible_hint"

    iget-object v9, v3, Lcx;->c:Lbr;

    .line 27
    iget-boolean v9, v9, Lbr;->R:Z

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iput-object v6, v8, Lcv;->m:Landroid/os/Bundle;

    iget-object v4, v3, Lcx;->c:Lbr;

    .line 28
    iget-object v4, v4, Lbr;->p:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, v8, Lcv;->m:Landroid/os/Bundle;

    if-nez v4, :cond_b

    new-instance v4, Landroid/os/Bundle;

    .line 29
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v8, Lcv;->m:Landroid/os/Bundle;

    :cond_b
    iget-object v4, v8, Lcv;->m:Landroid/os/Bundle;

    const-string v6, "android:target_state"

    iget-object v9, v3, Lcx;->c:Lbr;

    .line 30
    iget-object v9, v9, Lbr;->p:Ljava/lang/String;

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcx;->c:Lbr;

    .line 31
    iget v4, v4, Lbr;->q:I

    if-eqz v4, :cond_d

    iget-object v6, v8, Lcv;->m:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    .line 32
    invoke-virtual {v6, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 9
    :cond_c
    iget-object v4, v9, Lbr;->i:Landroid/os/Bundle;

    iput-object v4, v8, Lcv;->m:Landroid/os/Bundle;

    .line 32
    :cond_d
    :goto_3
    iget-object v4, v3, Lcx;->b:Lcy;

    iget-object v3, v3, Lcx;->c:Lbr;

    .line 33
    iget-object v3, v3, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v4, v3, v8}, Lcy;->c(Ljava/lang/String;Lcv;)Lcv;

    .line 34
    iget-object v3, v7, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcr;->R(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 9
    :cond_e
    iget-object v0, p0, Lcr;->a:Lcy;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcy;->c:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v6

    :cond_f
    iget-object v0, p0, Lcr;->a:Lcy;

    iget-object v3, v0, Lcy;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v7, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 39
    monitor-exit v3

    move-object v7, v6

    goto :goto_5

    .line 56
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbr;

    .line 42
    iget-object v9, v8, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcr;->R(I)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 44
    :cond_12
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_5
    iget-object v0, p0, Lcr;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-array v6, v0, [Lav;

    :goto_6
    if-ge v4, v0, :cond_14

    new-instance v3, Lav;

    iget-object v8, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lau;

    invoke-direct {v3, v8}, Lav;-><init>(Lau;)V

    aput-object v3, v6, v4

    invoke-static {v5}, Lcr;->R(I)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcr;->b:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_14
    goto :goto_7

    .line 56
    :cond_15
    nop

    .line 49
    :goto_7
    new-instance v0, Lcs;

    .line 50
    invoke-direct {v0}, Lcs;-><init>()V

    iput-object v1, v0, Lcs;->a:Ljava/util/ArrayList;

    iput-object v2, v0, Lcs;->b:Ljava/util/ArrayList;

    iput-object v7, v0, Lcs;->c:Ljava/util/ArrayList;

    iput-object v6, v0, Lcs;->d:[Lav;

    iget-object v1, p0, Lcr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Lcs;->e:I

    iget-object v1, p0, Lcr;->m:Lbr;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lbr;->m:Ljava/lang/String;

    iput-object v1, v0, Lcs;->f:Ljava/lang/String;

    :cond_16
    iget-object v1, v0, Lcs;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->w:Ljava/util/Map;

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcs;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->w:Ljava/util/Map;

    .line 53
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcs;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->x:Ljava/util/Map;

    .line 54
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcs;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->x:Ljava/util/Map;

    .line 55
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcr;->n:Ljava/util/ArrayDeque;

    .line 56
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcs;->k:Ljava/util/ArrayList;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method final aa()Lr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbr;->A:Lcr;

    invoke-virtual {v0}, Lcr;->aa()Lr;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcr;->H:Lr;

    return-object v0
.end method

.method final b(Ljava/lang/String;)Lbr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0, p1}, Lcy;->a(Ljava/lang/String;)Lbr;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lbr;
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    iget-object v1, v0, Lcy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_0

    iget v3, v2, Lbr;->E:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcy;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 4
    iget v1, v2, Lbr;->E:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 2
    :goto_1
    return-object v2
.end method

.method public final d(Ljava/lang/String;)Lbr;
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    iget-object v1, v0, Lcy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcy;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lbr;->G:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcy;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcx;->c:Lbr;

    .line 5
    iget-object v1, v2, Lbr;->G:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 3
    :goto_1
    return-object v2
.end method

.method public final e()Lcb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcr;->l:Lbr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbr;->A:Lcr;

    invoke-virtual {v0}, Lcr;->e()Lcb;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcr;->y:Lcb;

    return-object v0
.end method

.method final f(Lbr;)Lcx;
    .locals 3

    .line 1
    iget-object v0, p1, Lbr;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v0}, Lza;->a(Lbr;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcr;->g(Lbr;)Lcx;

    move-result-object v0

    .line 5
    iput-object p0, p1, Lbr;->A:Lcr;

    iget-object v1, p0, Lcr;->a:Lcy;

    .line 6
    invoke-virtual {v1, v0}, Lcy;->i(Lcx;)V

    .line 7
    iget-boolean v1, p1, Lbr;->I:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcr;->a:Lcy;

    .line 8
    invoke-virtual {v1, p1}, Lcy;->g(Lbr;)V

    .line 9
    const/4 v1, 0x0

    iput-boolean v1, p1, Lbr;->t:Z

    .line 10
    iget-object v2, p1, Lbr;->P:Landroid/view/View;

    if-nez v2, :cond_2

    .line 11
    iput-boolean v1, p1, Lbr;->T:Z

    .line 12
    :cond_2
    invoke-static {p1}, Lcr;->V(Lbr;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcr;->o:Z

    :cond_3
    return-object v0
.end method

.method final g(Lbr;)Lcx;
    .locals 3

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    iget-object v1, p1, Lbr;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->d(Ljava/lang/String;)Lcx;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcx;

    iget-object v1, p0, Lcr;->g:Lcg;

    iget-object v2, p0, Lcr;->a:Lcy;

    invoke-direct {v0, v1, v2, p1}, Lcx;-><init>(Lcg;Lcy;Lbr;)V

    iget-object p1, p0, Lcr;->j:Lcc;

    iget-object p1, p1, Lcc;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcx;->e(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcr;->i:I

    iput p1, v0, Lcx;->d:I

    return-object v0
.end method

.method public final h()Lda;
    .locals 1

    .line 1
    new-instance v0, Lau;

    invoke-direct {v0, p0}, Lau;-><init>(Lcr;)V

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lcu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcr;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final k(Lcc;Lby;Lbr;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcr;->j:Lcc;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcr;->j:Lcc;

    iput-object p2, p0, Lcr;->k:Lby;

    iput-object p3, p0, Lcr;->l:Lbr;

    if-eqz p3, :cond_0

    new-instance p2, Lck;

    invoke-direct {p2}, Lck;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcr;->j(Lcu;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Lcu;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcr;->j(Lcu;)V

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p0, Lcr;->l:Lbr;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcr;->M()V

    .line 6
    :cond_2
    instance-of p2, p1, Lto;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lbu;

    iget-object p2, p2, Lbu;->a:Lbv;

    iget-object p2, p2, Ltk;->h:Ltn;

    iput-object p2, p0, Lcr;->d:Ltn;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    .line 17
    :cond_3
    move-object v0, p1

    .line 6
    :goto_1
    iget-object v1, p0, Lcr;->e:Ltl;

    .line 7
    invoke-interface {v0}, Lzq;->C()Lzn;

    move-result-object v0

    iget-object v2, v0, Lzn;->a:Lzm;

    .line 8
    sget-object v3, Lzm;->a:Lzm;

    if-eq v2, v3, :cond_4

    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 9
    invoke-direct {v2, p2, v0, v1}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Ltn;Lzn;Ltl;)V

    invoke-virtual {v1, v2}, Ltl;->a(Ltd;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Lbr;->A:Lcr;

    iget-object p1, p1, Lcr;->s:Lct;

    iget-object v0, p1, Lct;->c:Ljava/util/HashMap;

    iget-object v1, p3, Lbr;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    if-nez v0, :cond_5

    new-instance v0, Lct;

    iget-boolean v1, p1, Lct;->e:Z

    .line 11
    invoke-direct {v0, v1}, Lct;-><init>(Z)V

    iget-object p1, p1, Lct;->c:Ljava/util/HashMap;

    iget-object v1, p3, Lbr;->m:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 27
    :cond_5
    nop

    .line 12
    :goto_2
    iput-object v0, p0, Lcr;->s:Lct;

    goto :goto_3

    .line 13
    :cond_6
    instance-of v0, p1, Laak;

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {p1}, Laak;->ai()Laed;

    move-result-object p1

    new-instance v0, Laaj;

    sget-object v1, Lct;->a:Laag;

    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, p1, v1, v2}, Laaj;-><init>(Laed;Laag;[B)V

    const-class p1, Lct;

    .line 16
    invoke-virtual {v0, p1}, Laaj;->a(Ljava/lang/Class;)Laaf;

    move-result-object p1

    check-cast p1, Lct;

    iput-object p1, p0, Lcr;->s:Lct;

    goto :goto_3

    :cond_7
    new-instance p1, Lct;

    .line 17
    invoke-direct {p1, p2}, Lct;-><init>(Z)V

    iput-object p1, p0, Lcr;->s:Lct;

    .line 12
    :goto_3
    iget-object p1, p0, Lcr;->s:Lct;

    invoke-virtual {p0}, Lcr;->T()Z

    move-result v0

    iput-boolean v0, p1, Lct;->g:Z

    iget-object p1, p0, Lcr;->a:Lcy;

    iget-object v0, p0, Lcr;->s:Lct;

    iput-object v0, p1, Lcy;->d:Lct;

    iget-object p1, p0, Lcr;->j:Lcc;

    .line 18
    instance-of v0, p1, Laex;

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    .line 19
    invoke-interface {p1}, Laex;->D()Laev;

    move-result-object p1

    new-instance v0, Lch;

    invoke-direct {v0, p0}, Lch;-><init>(Lcr;)V

    .line 20
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Laev;->b(Ljava/lang/String;Laeu;)V

    .line 21
    invoke-virtual {p1, v1}, Laev;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcr;->I(Landroid/os/Parcelable;)V

    :cond_8
    iget-object p1, p0, Lcr;->j:Lcc;

    .line 24
    instance-of v0, p1, Ltz;

    if-eqz v0, :cond_a

    check-cast p1, Lbu;

    iget-object p1, p1, Lbu;->a:Lbv;

    iget-object p1, p1, Ltk;->j:Lty;

    if-eqz p3, :cond_9

    iget-object p3, p3, Lbr;->m:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 27
    :cond_9
    const-string p3, ""

    .line 24
    :goto_4
    const-string v0, "FragmentManager:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lud;

    invoke-direct {v0}, Lud;-><init>()V

    new-instance v1, Lcl;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcl;-><init>(Lcr;I)V

    const-string v2, "StartActivityForResult"

    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {p1, v2, v0, v1}, Lty;->a(Ljava/lang/String;Lub;Lts;)Ltt;

    move-result-object v0

    iput-object v0, p0, Lcr;->z:Ltt;

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    new-instance v1, Lcl;

    invoke-direct {v1, p0, p2}, Lcl;-><init>(Lcr;I)V

    const-string p2, "StartIntentSenderForResult"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2, v0, v1}, Lty;->a(Ljava/lang/String;Lub;Lts;)Ltt;

    move-result-object p2

    iput-object p2, p0, Lcr;->A:Ltt;

    new-instance p2, Luc;

    invoke-direct {p2}, Luc;-><init>()V

    new-instance v0, Lcm;

    invoke-direct {v0, p0}, Lcm;-><init>(Lcr;)V

    const-string v1, "RequestPermissions"

    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Lty;->a(Ljava/lang/String;Lub;Lts;)Ltt;

    move-result-object p1

    iput-object p1, p0, Lcr;->B:Ltt;

    :cond_a
    return-void

    .line 1
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final l(Lbr;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    iget-boolean v1, p1, Lbr;->I:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Lbr;->I:Z

    .line 4
    iget-boolean v1, p1, Lbr;->s:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcr;->a:Lcy;

    .line 5
    invoke-virtual {v1, p1}, Lcy;->g(Lbr;)V

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-static {p1}, Lcr;->V(Lbr;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcr;->o:Z

    :cond_2
    return-void
.end method

.method final m(Lbr;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    iget-boolean v1, p1, Lbr;->I:Z

    if-nez v1, :cond_3

    .line 3
    const/4 v1, 0x1

    iput-boolean v1, p1, Lbr;->I:Z

    .line 4
    iget-boolean v2, p1, Lbr;->s:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcr;->a:Lcy;

    .line 6
    invoke-virtual {v0, p1}, Lcy;->k(Lbr;)V

    .line 7
    invoke-static {p1}, Lcr;->V(Lbr;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcr;->o:Z

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcr;->ak(Lbr;)V

    :cond_3
    return-void
.end method

.method final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->p:Z

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method final o(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lbr;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 3
    invoke-virtual {v1, p1}, Lcr;->o(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->p:Z

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method final q()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcr;->r:Z

    invoke-virtual {p0, v0}, Lcr;->Z(Z)V

    .line 2
    invoke-direct {p0}, Lcr;->ag()V

    iget-object v1, p0, Lcr;->j:Lcc;

    .line 3
    instance-of v2, v1, Laak;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcr;->a:Lcy;

    iget-object v0, v0, Lcy;->d:Lct;

    iget-boolean v0, v0, Lct;->f:Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v1, Lcc;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    .line 3
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcr;->w:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lax;

    .line 6
    iget-object v1, v1, Lax;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcr;->a:Lcy;

    iget-object v3, v3, Lcy;->d:Lct;

    .line 7
    invoke-virtual {v3, v2}, Lct;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Lcr;->z(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcr;->j:Lcc;

    iput-object v0, p0, Lcr;->k:Lby;

    iput-object v0, p0, Lcr;->l:Lbr;

    iget-object v1, p0, Lcr;->d:Ltn;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcr;->e:Ltl;

    iget-object v1, v1, Ltl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltd;

    .line 10
    invoke-interface {v2}, Ltd;->b()V

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcr;->d:Ltn;

    :cond_4
    iget-object v0, p0, Lcr;->z:Ltt;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Ltt;->a()V

    iget-object v0, p0, Lcr;->A:Ltt;

    .line 12
    invoke-virtual {v0}, Ltt;->a()V

    iget-object v0, p0, Lcr;->B:Ltt;

    .line 13
    invoke-virtual {v0}, Ltt;->a()V

    :cond_5
    return-void
.end method

.method final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lbr;->onLowMemory()V

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 3
    invoke-virtual {v1}, Lcr;->r()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v1, p1}, Lcr;->s(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final t(Landroid/view/Menu;)V
    .locals 3

    .line 1
    iget v0, p0, Lcr;->i:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lbr;->H:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v1, p1}, Lcr;->t(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcr;->l:Lbr;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcr;->l:Lbr;

    .line 7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcr;->j:Lcc;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcr;->j:Lcc;

    .line 11
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    nop

    .line 13
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    nop

    .line 14
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lbr;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p1, Lbr;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbr;->A:Lcr;

    .line 2
    invoke-virtual {v0, p1}, Lcr;->S(Lbr;)Z

    move-result v0

    iget-object v1, p1, Lbr;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lbr;->r:Ljava/lang/Boolean;

    iget-object p1, p1, Lbr;->C:Lcr;

    .line 5
    invoke-virtual {p1}, Lcr;->M()V

    iget-object v0, p1, Lcr;->m:Lbr;

    invoke-virtual {p1, v0}, Lcr;->u(Lbr;)V

    :cond_1
    return-void
.end method

.method final v()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr;->a:Lcy;

    invoke-virtual {v0}, Lcy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v1, p1}, Lcr;->w(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final x()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->p:Z

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method final y()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->p:Z

    iput-boolean v0, p0, Lcr;->q:Z

    iget-object v1, p0, Lcr;->s:Lct;

    iput-boolean v0, v1, Lct;->g:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcr;->z(I)V

    return-void
.end method

.method public final z(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcr;->u:Z

    iget-object v2, p0, Lcr;->a:Lcy;

    iget-object v2, v2, Lcy;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcx;

    if-eqz v3, :cond_0

    iput p1, v3, Lcx;->d:I

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcr;->F(IZ)V

    .line 3
    invoke-direct {p0}, Lcr;->ac()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldm;

    .line 5
    invoke-virtual {v2}, Ldm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7
    :cond_2
    iput-boolean v1, p0, Lcr;->u:Z

    .line 6
    invoke-virtual {p0, v0}, Lcr;->Z(Z)V

    return-void

    .line 5
    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcr;->u:Z

    .line 7
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
