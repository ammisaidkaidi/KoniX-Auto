.class final Ldfz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z

.field static final b:J

.field static final c:Z

.field private static final d:Lsun/misc/Unsafe;

.field private static final e:Ljava/lang/Class;

.field private static final f:Z

.field private static final g:Z

.field private static final h:Ldfy;

.field private static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    invoke-static {}, Ldfz;->j()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Ldfz;->d:Lsun/misc/Unsafe;

    const-class v6, Llibcore/io/Memory;

    sput-object v6, Ldfz;->e:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 2
    invoke-static {v6}, Ldfz;->v(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Ldfz;->f:Z

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v7}, Ldfz;->v(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Ldfz;->g:Z

    const/4 v8, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    if-eqz v6, :cond_1

    new-instance v8, Ldfx;

    invoke-direct {v8, v5}, Ldfx;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    new-instance v8, Ldfw;

    invoke-direct {v8, v5}, Ldfw;-><init>(Lsun/misc/Unsafe;)V

    .line 3
    :cond_2
    :goto_0
    sput-object v8, Ldfz;->h:Ldfy;

    const-string v5, "getLong"

    const-string v6, "objectFieldOffset"

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object v8, v8, Ldfy;->a:Lsun/misc/Unsafe;

    if-eqz v8, :cond_4

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/reflect/Field;

    aput-object v12, v11, v10

    .line 4
    invoke-virtual {v8, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    .line 5
    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    invoke-static {}, Ldfz;->i()Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :catchall_0
    move-exception v8

    .line 7
    invoke-static {v8}, Ldfz;->l(Ljava/lang/Throwable;)V

    .line 3
    :cond_4
    :goto_1
    sget-object v8, Ldfz;->h:Ldfy;

    if-nez v8, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 32
    :cond_5
    iget-object v8, v8, Ldfy;->a:Lsun/misc/Unsafe;

    if-nez v8, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/reflect/Field;

    aput-object v12, v11, v10

    .line 8
    invoke-virtual {v8, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v6, v10

    const-string v11, "arrayBaseOffset"

    .line 9
    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v6, v10

    const-string v11, "arrayIndexScale"

    .line 10
    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v6, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v9

    const-string v11, "getInt"

    .line 11
    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    const-string v12, "putInt"

    .line 12
    invoke-virtual {v8, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    .line 13
    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v5, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v9

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v7

    const-string v11, "putLong"

    .line 14
    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v5, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v9

    const-string v11, "getObject"

    .line 15
    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v7

    const-string v6, "putObject"

    .line 16
    invoke-virtual {v8, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    goto :goto_2

    .line 6
    :catchall_1
    move-exception v5

    .line 17
    invoke-static {v5}, Ldfz;->l(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    .line 3
    :goto_2
    sput-boolean v5, Ldfz;->a:Z

    const-class v5, [B

    .line 18
    invoke-static {v5}, Ldfz;->z(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Ldfz;->b:J

    .line 19
    invoke-static {v4}, Ldfz;->z(Ljava/lang/Class;)I

    .line 20
    invoke-static {v4}, Ldfz;->B(Ljava/lang/Class;)V

    .line 21
    invoke-static {v3}, Ldfz;->z(Ljava/lang/Class;)I

    .line 22
    invoke-static {v3}, Ldfz;->B(Ljava/lang/Class;)V

    .line 23
    invoke-static {v2}, Ldfz;->z(Ljava/lang/Class;)I

    .line 24
    invoke-static {v2}, Ldfz;->B(Ljava/lang/Class;)V

    .line 25
    invoke-static {v1}, Ldfz;->z(Ljava/lang/Class;)I

    .line 26
    invoke-static {v1}, Ldfz;->B(Ljava/lang/Class;)V

    .line 27
    invoke-static {v0}, Ldfz;->z(Ljava/lang/Class;)I

    .line 28
    invoke-static {v0}, Ldfz;->B(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ldfz;->z(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ldfz;->B(Ljava/lang/Class;)V

    .line 31
    invoke-static {}, Ldfz;->i()Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_8

    sget-object v3, Ldfz;->h:Ldfy;

    if-nez v3, :cond_7

    goto :goto_3

    .line 33
    :cond_7
    nop

    .line 32
    invoke-virtual {v3, v0}, Ldfy;->m(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    goto :goto_3

    :cond_8
    nop

    .line 31
    :goto_3
    sput-wide v1, Ldfz;->i:J

    .line 33
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    sput-boolean v9, Ldfz;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static B(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Ldfz;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0}, Ldfy;->r(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method static a(J)B
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1}, Ldfy;->a(J)B

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static c(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->k(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static e(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    sget-wide v1, Ldfz;->i:J

    invoke-virtual {v0, p0, v1, v2}, Ldfy;->l(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static f(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ldfz;->d:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    return-object p0

    .line 1
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static h(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Ldfz;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    .line 2
    const-string v1, "address"

    invoke-static {v0, v1}, Ldfz;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method static j()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ldfv;

    invoke-direct {v0}, Ldfv;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static k(J[BJJ)V
    .locals 8

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Ldfy;->d(J[BJJ)V

    return-void
.end method

.method public static l(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Ldfz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static m(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldfy;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static n([BJB)V
    .locals 3

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    sget-wide v1, Ldfz;->b:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Ldfy;->f(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static o(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p0, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p2

    const/16 v2, 0xff

    shl-int v3, v2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p2, v3

    and-int/2addr p3, v2

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    .line 2
    invoke-static {p0, v0, v1, p1}, Ldfz;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static p(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p0, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p2

    const/16 v2, 0xff

    shl-int v3, v2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p2, v3

    and-int/2addr p3, v2

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    .line 2
    invoke-static {p0, v0, v1, p1}, Ldfz;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method static q(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ldfy;->g(Ljava/lang/Object;JD)V

    return-void
.end method

.method static r(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldfy;->h(Ljava/lang/Object;JF)V

    return-void
.end method

.method static s(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldfy;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method static t(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ldfy;->p(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static u(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldfy;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static v(Ljava/lang/Class;)Z
    .locals 9

    .line 1
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ldfz;->e:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "peekLong"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeLong"

    .line 2
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeInt"

    .line 3
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "peekInt"

    .line 4
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    .line 5
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-string v7, "peekByte"

    .line 6
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v0, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-string v8, "pokeByteArray"

    .line 7
    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    aput-object v0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    const-string p0, "peekByteArray"

    .line 8
    invoke-virtual {v2, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception p0

    return v1
.end method

.method static w(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0, p1, p2}, Ldfy;->i(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/Object;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static y(Ljava/lang/Object;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static z(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Ldfz;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ldfz;->h:Ldfy;

    invoke-virtual {v0, p0}, Ldfy;->j(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
