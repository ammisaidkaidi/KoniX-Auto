.class public Lcqz;
.super Lcqq;
.source "PG"

# interfaces
.implements Lcrq;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:Lcqw;

.field public transient d:Lcqz;

.field public transient e:Lcqw;


# direct methods
.method public constructor <init>(Lcqk;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcqq;-><init>(Lcqk;I)V

    .line 2
    const/4 p1, 0x0

    invoke-static {p1}, Lcqz;->c(Ljava/util/Comparator;)Lcqw;

    move-result-object p1

    iput-object p1, p0, Lcqz;->a:Lcqw;

    return-void
.end method

.method private static c(Ljava/util/Comparator;)Lcqw;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    sget-object p0, Lcsf;->a:Lcsf;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcrh;->B(Ljava/util/Comparator;)Lcsg;

    move-result-object p0

    .line 1
    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_5

    .line 5
    invoke-static {}, Lcqk;->e()Lcqi;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    if-lez v7, :cond_3

    .line 20
    if-nez v0, :cond_0

    new-instance v8, Lcqu;

    .line 8
    invoke-direct {v8}, Lcqu;-><init>()V

    goto :goto_1

    .line 13
    :cond_0
    new-instance v8, Lcrf;

    .line 9
    invoke-direct {v8, v0}, Lcrf;-><init>(Ljava/util/Comparator;)V

    .line 8
    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcqu;->h(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v8}, Lcqu;->f()Lcqw;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Lcqw;->size()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 13
    invoke-virtual {v2, v6, v8}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Duplicate key-value pairs exist for key "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Lcqi;->c()Lcqk;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    sget-object v1, Lcqp;->a:Lcsj;

    invoke-virtual {v1, p0, p1}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcqp;->b:Lcsj;

    :try_start_1
    iget-object p1, p1, Lcsj;->a:Ljava/lang/reflect/Field;

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    sget-object p1, Lcqy;->a:Lcsj;

    invoke-static {v0}, Lcqz;->c(Ljava/util/Comparator;)Lcqw;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 17
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1

    .line 4
    :cond_5
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid key count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcqz;->a:Lcqw;

    .line 2
    instance-of v1, v0, Lcrh;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcrh;

    iget-object v0, v0, Lcrh;->a:Ljava/util/Comparator;

    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcrq;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcse;

    iget v0, v0, Lcse;->c:I

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Lcrq;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcqk;

    .line 6
    invoke-virtual {v0}, Lcqk;->k()Lcqw;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcqw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcqz;->b:Lcqk;

    invoke-virtual {v0, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcqw;

    iget-object v0, p0, Lcqz;->a:Lcqw;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 2
    const-string v0, "Both parameters are null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
