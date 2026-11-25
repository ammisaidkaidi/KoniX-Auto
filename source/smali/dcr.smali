.class final Ldcr;
.super Ldcu;
.source "PG"


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldcu;-><init>()V

    if-ltz p2, :cond_1

    const/16 v0, 0x14

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Ldcr;->a:[B

    .line 3
    array-length p2, p2

    iput p2, p0, Ldcr;->b:I

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Ldcr;->g:Ljava/io/OutputStream;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 4
    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final aC(I)V
    .locals 2

    .line 1
    iget v0, p0, Ldcr;->b:I

    iget v1, p0, Ldcr;->c:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Ldcr;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ldge;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ldcr;->C(I)V

    return-void
.end method

.method public final B(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    .line 3
    invoke-virtual {p0, p2}, Ldcr;->g(I)V

    return-void
.end method

.method public final C(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    invoke-virtual {p0, p1}, Ldcr;->g(I)V

    return-void
.end method

.method public final D(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Ldcr;->h(J)V

    return-void
.end method

.method public final E(J)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Ldcr;->h(J)V

    return-void
.end method

.method public final F([BI)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Ldcr;->C(I)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ldcr;->k([BII)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ldcr;->k([BII)V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    aput-byte p1, v0, v1

    iget p1, p0, Ldcr;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldcr;->d:I

    return-void
.end method

.method final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v0, v2

    iget p1, p0, Ldcr;->d:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Ldcr;->d:I

    return-void
.end method

.method final e(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 2
    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 3
    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 4
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 7
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ldcr;->c:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v2

    iget p1, p0, Ldcr;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Ldcr;->d:I

    return-void
.end method

.method final f(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ldge;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ldcr;->g(I)V

    return-void
.end method

.method final g(I)V
    .locals 6

    .line 4
    sget-boolean v0, Ldcu;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ldcr;->c:I

    int-to-long v0, v0

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    iget-object v2, p0, Ldcr;->a:[B

    iget v3, p0, Ldcr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldcr;->c:I

    int-to-long v3, v3

    int-to-byte p1, p1

    invoke-static {v2, v3, v4, p1}, Ldfz;->n([BJB)V

    iget p1, p0, Ldcr;->c:I

    iget v2, p0, Ldcr;->d:I

    int-to-long v3, p1

    sub-long/2addr v3, v0

    long-to-int p1, v3

    add-int/2addr v2, p1

    iput v2, p0, Ldcr;->d:I

    return-void

    :cond_0
    iget-object v2, p0, Ldcr;->a:[B

    iget v3, p0, Ldcr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldcr;->c:I

    int-to-long v3, v3

    and-int/lit8 v5, p1, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 3
    invoke-static {v2, v3, v4, v5}, Ldfz;->n([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    int-to-byte p1, p1

    .line 2
    aput-byte p1, v0, v1

    iget p1, p0, Ldcr;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldcr;->d:I

    return-void

    :cond_2
    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1
    aput-byte v2, v0, v1

    iget v0, p0, Ldcr;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldcr;->d:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method final h(J)V
    .locals 11

    .line 4
    sget-boolean v0, Ldcu;->e:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Ldcr;->c:I

    int-to-long v6, v0

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Ldfz;->n([BJB)V

    iget p1, p0, Ldcr;->c:I

    iget p2, p0, Ldcr;->d:I

    int-to-long v0, p1

    sub-long/2addr v0, v6

    long-to-int p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Ldcr;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Ldcr;->a:[B

    iget v8, p0, Ldcr;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ldcr;->c:I

    int-to-long v8, v8

    long-to-int v10, p1

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 3
    invoke-static {v0, v8, v9, v10}, Ldfz;->n([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldcr;->c:I

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 2
    aput-byte p1, v0, v1

    iget p1, p0, Ldcr;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldcr;->d:I

    return-void

    :cond_2
    iget-object v0, p0, Ldcr;->a:[B

    iget v6, p0, Ldcr;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldcr;->c:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1
    aput-byte v7, v0, v6

    iget v0, p0, Ldcr;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldcr;->d:I

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldcr;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Ldcr;->a:[B

    iget v2, p0, Ldcr;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ldcr;->c:I

    return-void
.end method

.method public final j(B)V
    .locals 2

    .line 1
    iget v0, p0, Ldcr;->c:I

    iget v1, p0, Ldcr;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ldcr;->i()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ldcr;->c(B)V

    return-void
.end method

.method public final k([BII)V
    .locals 3

    .line 1
    iget v0, p0, Ldcr;->b:I

    iget v1, p0, Ldcr;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Ldcr;->a:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ldcr;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Ldcr;->c:I

    iget p1, p0, Ldcr;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ldcr;->d:I

    return-void

    :cond_0
    iget-object v2, p0, Ldcr;->a:[B

    .line 2
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Ldcr;->b:I

    iput v1, p0, Ldcr;->c:I

    iget v1, p0, Ldcr;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Ldcr;->d:I

    .line 3
    invoke-virtual {p0}, Ldcr;->i()V

    iget v0, p0, Ldcr;->b:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Ldcr;->a:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Ldcr;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldcr;->g:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    :goto_0
    iget p1, p0, Ldcr;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ldcr;->d:I

    return-void
.end method

.method public final l(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    .line 3
    invoke-virtual {p0, p2}, Ldcr;->c(B)V

    return-void
.end method

.method public final m(ILdcl;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldcr;->A(II)V

    .line 2
    invoke-virtual {p0, p2}, Ldcr;->n(Ldcl;)V

    return-void
.end method

.method public final n(Ldcl;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ldcl;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Ldcr;->C(I)V

    .line 2
    invoke-virtual {p1, p0}, Ldcl;->o(Ldce;)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    .line 3
    invoke-virtual {p0, p2}, Ldcr;->d(I)V

    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    invoke-virtual {p0, p1}, Ldcr;->d(I)V

    return-void
.end method

.method public final q(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Ldcr;->e(J)V

    return-void
.end method

.method public final r(J)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Ldcr;->e(J)V

    return-void
.end method

.method public final s(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ldcr;->aC(I)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldcr;->f(II)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Ldcr;->g(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Ldcr;->h(J)V

    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ldcr;->C(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Ldcr;->E(J)V

    return-void
.end method

.method public final u(ILder;Ldfg;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldcr;->A(II)V

    .line 2
    move-object p1, p2

    check-cast p1, Ldbv;

    invoke-virtual {p1}, Ldbv;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p3, p1}, Ldfg;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Ldbv;->f(I)V

    goto :goto_0

    .line 4
    :cond_0
    nop

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ldcr;->C(I)V

    iget-object p1, p0, Ldcr;->f:Ldcv;

    .line 4
    invoke-interface {p3, p2, p1}, Ldfg;->l(Ljava/lang/Object;Ldcv;)V

    return-void
.end method

.method public final v(Lder;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lder;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Ldcr;->C(I)V

    .line 2
    invoke-interface {p1, p0}, Lder;->aG(Ldcu;)V

    return-void
.end method

.method public final w(ILder;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ldcr;->A(II)V

    .line 2
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Ldcr;->B(II)V

    .line 3
    invoke-virtual {p0, v1, v2}, Ldcr;->A(II)V

    .line 4
    invoke-virtual {p0, p2}, Ldcr;->v(Lder;)V

    .line 5
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Ldcr;->A(II)V

    return-void
.end method

.method public final x(ILdcl;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ldcr;->A(II)V

    .line 2
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Ldcr;->B(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Ldcr;->m(ILdcl;)V

    .line 4
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Ldcr;->A(II)V

    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ldcr;->A(II)V

    .line 2
    invoke-virtual {p0, p2}, Ldcr;->z(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ldcr;->ad(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Ldcr;->b:I

    if-le v2, v3, :cond_0

    .line 11
    new-array v1, v0, [B

    .line 12
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Ldgb;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Ldcr;->C(I)V

    .line 14
    invoke-virtual {p0, v1, v2, v0}, Ldcr;->k([BII)V

    return-void

    :cond_0
    iget v0, p0, Ldcr;->c:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Ldcr;->i()V

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ldcr;->ad(I)I

    move-result v0

    iget v2, p0, Ldcr;->c:I
    :try_end_0
    .catch Ldga; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Ldcr;->c:I

    iget-object v3, p0, Ldcr;->a:[B

    iget v4, p0, Ldcr;->b:I

    sub-int/2addr v4, v1

    .line 4
    invoke-static {p1, v3, v1, v4}, Ldgb;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Ldcr;->c:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 5
    invoke-virtual {p0, v3}, Ldcr;->g(I)V

    iput v1, p0, Ldcr;->c:I

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1}, Ldgb;->b(Ljava/lang/CharSequence;)I

    move-result v3

    .line 7
    invoke-virtual {p0, v3}, Ldcr;->g(I)V

    iget-object v0, p0, Ldcr;->a:[B

    iget v1, p0, Ldcr;->c:I

    .line 8
    invoke-static {p1, v0, v1, v3}, Ldgb;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Ldcr;->c:I

    .line 5
    :goto_0
    iget v0, p0, Ldcr;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Ldcr;->d:I
    :try_end_1
    .catch Ldga; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    new-instance v1, Ldct;

    .line 9
    invoke-direct {v1, v0}, Ldct;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :catch_1
    move-exception v0

    iget v1, p0, Ldcr;->d:I

    iget v3, p0, Ldcr;->c:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Ldcr;->d:I

    iput v2, p0, Ldcr;->c:I

    .line 10
    throw v0
    :try_end_2
    .catch Ldga; {:try_start_2 .. :try_end_2} :catch_2

    .line 8
    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {p0, p1, v0}, Ldcu;->al(Ljava/lang/String;Ldga;)V

    return-void
.end method
