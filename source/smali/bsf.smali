.class public final Lbsf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbse;


# static fields
.field public static final a:I

.field public static final b:Ljava/util/Map;

.field public static final c:Lbta;


# instance fields
.field public final d:Landroid/util/LruCache;

.field public final e:Landroid/util/LruCache;

.field public final f:Lbsz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ldbz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbsf;->a:I

    new-instance v0, Lcqi;

    .line 2
    invoke-direct {v0}, Lcqi;-><init>()V

    .line 3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_VARINT"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_FIXED64"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_LENGTH_DELIMITED"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_START_GROUP"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_END_GROUP"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_FIXED32"

    invoke-virtual {v0, v1, v2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcqi;->c()Lcqk;

    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbsf;->b:Ljava/util/Map;

    new-instance v0, Lbta;

    invoke-direct {v0}, Lbta;-><init>()V

    sput-object v0, Lbsf;->c:Lbta;

    return-void
.end method

.method public constructor <init>(Lbsz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsi;

    invoke-direct {v0}, Lbsi;-><init>()V

    iput-object v0, p0, Lbsf;->d:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    .line 2
    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lbsf;->e:Landroid/util/LruCache;

    iput-object p1, p0, Lbsf;->f:Lbsz;

    return-void
.end method

.method public static a(Ldqd;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    iget-object p0, p0, Ldqd;->b:Lddp;

    invoke-interface {p0}, Lddp;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(II)Z
    .locals 1

    sget v0, Lbsf;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lbsa;Ldqd;Lbtg;Lcoc;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_9

    iget-object v3, p1, Ldqd;->b:Lddp;

    invoke-interface {v3}, Lddp;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p1, Ldqd;->b:Lddp;

    .line 2
    invoke-interface {v3, v1}, Lddp;->e(I)I

    move-result v3

    invoke-static {v3}, Ldgm;->a(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 3
    :cond_0
    invoke-static {v3}, Lr;->f(I)Ldgl;

    move-result-object v4

    iget v5, v4, Ldgl;->a:I

    if-ne v5, v2, :cond_3

    .line 5
    sget-object v5, Lbsp;->a:Lbsp;

    iget v6, v4, Ldgl;->a:I

    if-ne v6, v2, :cond_2

    iget-object v4, v4, Ldgl;->b:Ljava/lang/Object;

    .line 6
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ldgi;->b(I)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_1

    .line 18
    :cond_2
    nop

    .line 7
    :goto_1
    invoke-virtual {v5, v2, p0}, Lbsp;->a(ILbsa;)Lbsn;

    move-result-object v2

    goto :goto_2

    .line 4
    :cond_3
    sget-object v2, Lbsp;->a:Lbsp;

    new-instance v5, Lbsw;

    invoke-direct {v5, v2, v4, p0}, Lbsw;-><init>(Lbsp;Ldgl;Lbsa;)V

    move-object v2, v5

    .line 8
    :goto_2
    invoke-interface {v2}, Lbsn;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 9
    invoke-static {}, Ldlk;->c()Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    .line 10
    invoke-virtual {p2, p0}, Lbtg;->b(I)Lddf;

    move-result-object p0

    iget-boolean p1, p0, Lddf;->c:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lddf;->k()V

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_4
    iget-object p1, p0, Lddf;->b:Lddk;

    .line 12
    check-cast p1, Ldgn;

    sget-object v1, Ldgn;->m:Ldgn;

    add-int/lit8 v1, v3, -0x1

    iput v1, p1, Ldgn;->i:I

    iget v1, p1, Ldgn;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p1, Ldgn;->a:I

    .line 13
    invoke-static {v3}, Lr;->f(I)Ldgl;

    move-result-object p1

    iget-boolean v1, p0, Lddf;->c:Z

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Lddf;->k()V

    iput-boolean v0, p0, Lddf;->c:Z

    :cond_5
    iget-object v1, p0, Lddf;->b:Lddk;

    .line 15
    check-cast v1, Ldgn;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Ldgn;->j:Ldgl;

    iget p1, v1, Ldgn;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v1, Ldgn;->a:I

    invoke-virtual {p3}, Lcoc;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p3}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lddf;->A(J)V

    .line 18
    :cond_6
    invoke-virtual {p2, p0}, Lbtg;->a(Lddf;)V

    :cond_7
    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4
    :cond_9
    return v2
.end method

.method public static d(Ldqc;)Ldqd;
    .locals 1

    .line 1
    iget-object p0, p0, Ldqc;->c:Ldem;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 2
    const v0, -0x79209ddf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldqd;

    return-object p0
.end method

.method public static e(Ldqg;)Ldqd;
    .locals 1

    .line 1
    iget-object p0, p0, Ldqg;->a:Ldem;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 2
    const v0, -0x79209ddf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldqd;

    return-object p0
.end method
