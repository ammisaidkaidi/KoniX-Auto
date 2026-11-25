.class public final Lcwx;
.super Lcws;
.source "PG"


# instance fields
.field public b:J

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcws;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcwx;->b:J

    iput-wide v0, p0, Lcwx;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcwx;->d:I

    return-void
.end method

.method public static h(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static i(J)J
    .locals 2

    .line 1
    const-wide v0, -0x783c846eeebdac2bL

    mul-long p0, p0, v0

    const/16 v0, 0x1f

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static j(J)J
    .locals 2

    .line 1
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long p0, p0, v0

    const/16 v0, 0x21

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, -0x783c846eeebdac2bL

    mul-long p0, p0, v0

    return-wide p0
.end method


# virtual methods
.method protected final g(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iget-wide v4, p0, Lcwx;->b:J

    .line 3
    invoke-static {v0, v1}, Lcwx;->i(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcwx;->b:J

    .line 4
    const/16 p1, 0x1b

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iget-wide v4, p0, Lcwx;->c:J

    add-long/2addr v0, v4

    const-wide/16 v6, 0x5

    mul-long v0, v0, v6

    const-wide/32 v8, 0x52dce729

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcwx;->b:J

    .line 5
    invoke-static {v2, v3}, Lcwx;->j(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcwx;->c:J

    .line 6
    const/16 p1, 0x1f

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcwx;->b:J

    add-long/2addr v0, v2

    mul-long v0, v0, v6

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcwx;->c:J

    iget p1, p0, Lcwx;->d:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcwx;->d:I

    return-void
.end method
