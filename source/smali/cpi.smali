.class final Lcpi;
.super Ljava/util/AbstractMap;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field transient b:[I

.field transient c:[Ljava/lang/Object;

.field transient d:[Ljava/lang/Object;

.field public transient e:I

.field public transient f:I

.field private transient g:Ljava/lang/Object;

.field private transient h:Ljava/util/Set;

.field private transient i:Ljava/util/Set;

.field private transient j:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcpi;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcpi;->l(I)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcpi;->l(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v2, v3}, Lcpi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final s(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lez;->x(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lez;->z(Ljava/lang/Object;II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object p3

    .line 4
    invoke-virtual {p0}, Lcpi;->p()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 5
    invoke-static {p3, v1}, Lez;->v(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    invoke-static {v4, p1}, Lez;->r(II)I

    move-result v5

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 7
    invoke-static {v0, v6}, Lez;->v(Ljava/lang/Object;I)I

    move-result v7

    .line 8
    invoke-static {v0, v6, v2}, Lez;->z(Ljava/lang/Object;II)V

    invoke-static {v5, v7, p2}, Lez;->s(III)I

    move-result v2

    .line 9
    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcpi;->g:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p2}, Lcpi;->t(I)V

    return p2
.end method

.method private final t(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    iget v0, p0, Lcpi;->e:I

    rsub-int/lit8 p1, p1, 0x20

    const/16 v1, 0x1f

    invoke-static {v0, p1, v1}, Lez;->s(III)I

    move-result p1

    iput p1, p0, Lcpi;->e:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcpi;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcpi;->i()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcpi;->f:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcpi;->e:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcpi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcpi;->k()V

    .line 2
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcpi;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lhh;->u(II)I

    move-result v3

    iput v3, p0, Lcpi;->e:I

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcpi;->g:Ljava/lang/Object;

    iput v2, p0, Lcpi;->f:I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcpi;->f:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcpi;->f:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lez;->y(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcpi;->p()[I

    move-result-object v0

    iget v1, p0, Lcpi;->f:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcpi;->f:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcpi;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcpi;->f:I

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lew;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 3
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcpi;->o()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lez;->q(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcpi;->c()I

    move-result v2

    .line 2
    invoke-virtual {p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v3

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lez;->v(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-static {v0, v2}, Lez;->r(II)I

    move-result v0

    :cond_2
    add-int/2addr v3, v1

    .line 3
    invoke-virtual {p0}, Lcpi;->p()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v4, v2}, Lez;->r(II)I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 4
    invoke-virtual {p0, v3}, Lcpi;->e(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lew;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    and-int v3, v4, v2

    if-nez v3, :cond_2

    return v1
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcpd;

    invoke-direct {v0, p0}, Lcpd;-><init>(Lcpi;)V

    iput-object v0, p0, Lcpi;->i:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcpi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcpi;->a:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcpi;->c()I

    move-result v7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Lcpi;->p()[I

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    .line 4
    move-object v0, p1

    move v2, v7

    invoke-static/range {v0 .. v6}, Lez;->u(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcpi;->a:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {p0, p1, v7}, Lcpi;->m(II)V

    iget p1, p0, Lcpi;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcpi;->f:I

    .line 7
    invoke-virtual {p0}, Lcpi;->k()V

    return-object v1
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcpi;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method final i()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcpb;

    .line 3
    invoke-direct {v0, p0}, Lcpb;-><init>(Lcpi;)V

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final j()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcpi;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final k()V
    .locals 1

    iget v0, p0, Lcpi;->e:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcpi;->e:I

    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcpf;

    invoke-direct {v0, p0}, Lcpf;-><init>(Lcpi;)V

    iput-object v0, p0, Lcpi;->h:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final l(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    const-string v1, "Expected size must be >= 0"

    invoke-static {v0, v1}, Lex;->m(ZLjava/lang/Object;)V

    .line 2
    invoke-static {p1, v0}, Lhh;->u(II)I

    move-result p1

    iput p1, p0, Lcpi;->e:I

    return-void
.end method

.method final m(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcpi;->p()[I

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcpi;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_2

    .line 6
    aget-object v7, v2, v4

    .line 7
    aput-object v7, v2, p1

    .line 8
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 9
    aput-object v6, v2, v4

    .line 10
    aput-object v6, v3, v4

    .line 11
    aget v2, v1, v4

    aput v2, v1, p1

    .line 12
    aput v5, v1, v4

    .line 13
    invoke-static {v7}, Lez;->q(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 14
    invoke-static {v0, v2}, Lez;->v(Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_1

    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 15
    aget v0, v1, v3

    and-int v2, v0, p2

    if-eq v2, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1, p2}, Lez;->s(III)I

    move-result p1

    .line 16
    aput p1, v1, v3

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-static {v0, v2, p1}, Lez;->z(Ljava/lang/Object;II)V

    return-void

    :cond_2
    nop

    .line 18
    aput-object v6, v2, p1

    .line 19
    aput-object v6, v3, p1

    .line 20
    aput v5, v1, p1

    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method

.method final o()Z
    .locals 1

    iget-object v0, p0, Lcpi;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->b:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [I

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcpi;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcpi;->o()Z

    move-result v3

    const-string v4, "Arrays already allocated"

    invoke-static {v3, v4}, Lex;->s(ZLjava/lang/Object;)V

    iget v3, v0, Lcpi;->e:I

    .line 2
    invoke-static {v3}, Lez;->w(I)I

    move-result v4

    .line 3
    invoke-static {v4}, Lez;->x(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcpi;->g:Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 4
    invoke-direct {v0, v4}, Lcpi;->t(I)V

    .line 5
    new-array v4, v3, [I

    iput-object v4, v0, Lcpi;->b:[I

    .line 6
    new-array v4, v3, [Ljava/lang/Object;

    iput-object v4, v0, Lcpi;->c:[Ljava/lang/Object;

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcpi;->d:[Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcpi;->p()[I

    move-result-object v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v5

    iget v6, v0, Lcpi;->f:I

    add-int/lit8 v7, v6, 0x1

    .line 13
    invoke-static/range {p1 .. p1}, Lez;->q(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcpi;->c()I

    move-result v9

    and-int v10, v8, v9

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v10}, Lez;->v(Ljava/lang/Object;I)I

    move-result v11

    const/4 v14, 0x1

    if-nez v11, :cond_3

    if-le v7, v9, :cond_2

    invoke-static {v9}, Lez;->t(I)I

    move-result v3

    .line 15
    invoke-direct {v0, v9, v3, v8, v6}, Lcpi;->s(IIII)I

    move-result v9

    goto/16 :goto_3

    .line 16
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcpi;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v10, v7}, Lez;->z(Ljava/lang/Object;II)V

    goto :goto_3

    :cond_3
    invoke-static {v8, v9}, Lez;->r(II)I

    move-result v10

    const/4 v15, 0x0

    :goto_0
    add-int/lit8 v11, v11, -0x1

    .line 17
    aget v12, v3, v11

    invoke-static {v12, v9}, Lez;->r(II)I

    move-result v13

    if-ne v13, v10, :cond_5

    .line 18
    aget-object v13, v4, v11

    .line 19
    invoke-static {v1, v13}, Lew;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_1

    .line 36
    :cond_4
    aget-object v1, v5, v11

    .line 37
    aput-object v2, v5, v11

    return-object v1

    .line 19
    :cond_5
    :goto_1
    and-int v13, v12, v9

    add-int/2addr v15, v14

    if-nez v13, :cond_a

    const/16 v4, 0x9

    if-lt v15, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcpi;->c()I

    move-result v3

    new-instance v4, Ljava/util/LinkedHashMap;

    add-int/2addr v3, v14

    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcpi;->a()I

    move-result v3

    :goto_2
    if-ltz v3, :cond_6

    .line 22
    invoke-virtual {v0, v3}, Lcpi;->e(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcpi;->h(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcpi;->b(I)I

    move-result v3

    goto :goto_2

    :cond_6
    iput-object v4, v0, Lcpi;->g:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcpi;->b:[I

    iput-object v3, v0, Lcpi;->c:[Ljava/lang/Object;

    iput-object v3, v0, Lcpi;->d:[Ljava/lang/Object;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcpi;->k()V

    .line 24
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_7
    if-le v7, v9, :cond_8

    invoke-static {v9}, Lez;->t(I)I

    move-result v3

    .line 25
    invoke-direct {v0, v9, v3, v8, v6}, Lcpi;->s(IIII)I

    move-result v9

    goto :goto_3

    :cond_8
    invoke-static {v12, v7, v9}, Lez;->s(III)I

    move-result v4

    .line 26
    aput v4, v3, v11

    .line 27
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcpi;->p()[I

    move-result-object v3

    array-length v3, v3

    if-le v7, v3, :cond_9

    const v4, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v5, v3, 0x1

    .line 28
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v5, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_9

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcpi;->p()[I

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcpi;->b:[I

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcpi;->c:[Ljava/lang/Object;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcpi;->r()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcpi;->d:[Ljava/lang/Object;

    .line 32
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcpi;->p()[I

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v8, v11, v9}, Lez;->s(III)I

    move-result v4

    aput v4, v3, v6

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcpi;->q()[Ljava/lang/Object;

    move-result-object v3

    aput-object v1, v3, v6

    .line 34
    invoke-virtual {v0, v6, v2}, Lcpi;->n(ILjava/lang/Object;)V

    iput v7, v0, Lcpi;->f:I

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcpi;->k()V

    const/4 v12, 0x0

    return-object v12

    .line 26
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    move v11, v13

    goto/16 :goto_0
.end method

.method public final q()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final r()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->d:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcpi;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcpi;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpi;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcpi;->f:I

    :goto_0
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcpi;->j:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcph;

    invoke-direct {v0, p0}, Lcph;-><init>(Lcpi;)V

    iput-object v0, p0, Lcpi;->j:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
