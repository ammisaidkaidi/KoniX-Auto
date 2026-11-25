.class public final Laeh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laff;
.implements Lafe;


# static fields
.field static final a:Ljava/util/TreeMap;


# instance fields
.field final b:[J

.field final c:[D

.field final d:[Ljava/lang/String;

.field final e:[[B

.field final f:I

.field g:I

.field private volatile h:Ljava/lang/String;

.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Laeh;->a:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laeh;->f:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Laeh;->i:[I

    new-array v0, p1, [J

    iput-object v0, p0, Laeh;->b:[J

    new-array v0, p1, [D

    iput-object v0, p0, Laeh;->c:[D

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Laeh;->d:[Ljava/lang/String;

    new-array p1, p1, [[B

    iput-object p1, p0, Laeh;->e:[[B

    return-void
.end method

.method public static a(Ljava/lang/String;I)Laeh;
    .locals 3

    .line 1
    sget-object v0, Laeh;->a:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laeh;

    .line 5
    invoke-virtual {v1, p0, p1}, Laeh;->h(Ljava/lang/String;I)V

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Laeh;

    invoke-direct {v0, p1}, Laeh;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0, p1}, Laeh;->h(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laeh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I[B)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Laeh;->i:[I

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput v0, p1, v1

    iget-object p1, p0, Laeh;->b:[J

    .line 2
    aput-wide p2, p1, v1

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Laeh;->i:[I

    const/4 v0, 0x1

    aput v0, p1, v0

    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Laeh;->i:[I

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput v0, p1, v1

    iget-object p1, p0, Laeh;->d:[Ljava/lang/String;

    .line 2
    aput-object p2, p1, v1

    return-void
.end method

.method public final g(Lafe;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Laeh;->g:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Laeh;->i:[I

    aget v2, v2, v1

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Laeh;->e:[[B

    .line 2
    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lafe;->c(I[B)V

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Laeh;->d:[Ljava/lang/String;

    .line 3
    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lafe;->f(ILjava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Laeh;->c:[D

    .line 4
    aget-wide v3, v2, v1

    move-object v2, p1

    check-cast v2, Lafm;

    iget-object v2, v2, Lafm;->a:Landroid/database/sqlite/SQLiteProgram;

    .line 5
    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Laeh;->b:[J

    .line 6
    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lafe;->d(IJ)V

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_4
    nop

    .line 7
    invoke-interface {p1, v1}, Lafe;->e(I)V

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final h(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laeh;->h:Ljava/lang/String;

    iput p2, p0, Laeh;->g:I

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Laeh;->a:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Laeh;->f:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
