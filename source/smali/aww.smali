.class final Laww;
.super Ljava/io/FilterInputStream;
.source "PG"


# instance fields
.field private final a:[B

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laww;->b:J

    iput-object p2, p0, Laww;->a:[B

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 6

    .line 1
    iget-object v0, p0, Laww;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v1, p0, Laww;->a:[B

    iget-wide v2, p0, Laww;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Laww;->b:J

    .line 2
    array-length v4, v1

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-int v3, v2

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 6

    .line 3
    iget-object v0, p0, Laww;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 4
    aget-byte v0, p1, p2

    iget-object v1, p0, Laww;->a:[B

    iget-wide v2, p0, Laww;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Laww;->b:J

    array-length v4, v1

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-int v3, v2

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method
