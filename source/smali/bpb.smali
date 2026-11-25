.class public final Lbpb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field public final b:Ljava/lang/String;

.field final c:J

.field final d:Z

.field final e:D

.field final f:Ljava/lang/String;

.field final g:[B

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvp;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lvp;-><init>(I)V

    sput-object v0, Lbpb;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpb;->b:Ljava/lang/String;

    iput-wide p2, p0, Lbpb;->c:J

    iput-boolean p4, p0, Lbpb;->d:Z

    iput-wide p5, p0, Lbpb;->e:D

    iput-object p7, p0, Lbpb;->f:Ljava/lang/String;

    iput-object p8, p0, Lbpb;->g:[B

    iput p9, p0, Lbpb;->h:I

    iput p10, p0, Lbpb;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 11

    .line 1
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lbpb;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-void
.end method

.method private static f(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()D
    .locals 2

    .line 1
    iget v0, p0, Lbpb;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lbpb;->e:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a double type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget v0, p0, Lbpb;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lbpb;->c:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a long type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lbpb;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbpb;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a String type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lbpb;

    iget-object v0, p0, Lbpb;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lbpb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lbpb;->h:I

    .line 3
    iget v4, p1, Lbpb;->h:I

    invoke-static {v0, v4}, Lbpb;->f(II)I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lbpb;->h:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbpb;->g:[B

    .line 4
    iget-object v4, p1, Lbpb;->g:[B

    if-ne v0, v4, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 12
    :pswitch_0
    iget-object v0, p0, Lbpb;->f:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lbpb;->f:Ljava/lang/String;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_3
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    iget-wide v0, p0, Lbpb;->e:D

    .line 10
    iget-wide v2, p1, Lbpb;->e:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lbpb;->d:Z

    .line 11
    iget-boolean p1, p1, Lbpb;->d:Z

    if-ne v0, p1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    .line 7
    :pswitch_3
    iget-wide v4, p0, Lbpb;->c:J

    .line 12
    iget-wide v6, p1, Lbpb;->c:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_7

    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 4
    :cond_9
    if-nez v0, :cond_a

    const/4 v0, -0x1

    goto :goto_1

    :cond_a
    if-nez v4, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    :goto_0
    iget-object v0, p0, Lbpb;->g:[B

    .line 5
    array-length v0, v0

    iget-object v1, p1, Lbpb;->g:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_d

    iget-object v0, p0, Lbpb;->g:[B

    .line 6
    aget-byte v0, v0, v3

    iget-object v1, p1, Lbpb;->g:[B

    aget-byte v1, v1, v3

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lbpb;->g:[B

    .line 7
    array-length v0, v0

    iget-object p1, p1, Lbpb;->g:[B

    array-length p1, p1

    invoke-static {v0, p1}, Lbpb;->f(II)I

    move-result v0

    .line 2
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Lbpb;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbpb;->d:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a boolean type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()[B
    .locals 2

    .line 1
    iget v0, p0, Lbpb;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbpb;->g:[B

    .line 2
    invoke-static {v0}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a bytes type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lbpb;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lbpb;

    iget-object v0, p0, Lbpb;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lbpb;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lbpb;->h:I

    iget v2, p1, Lbpb;->h:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Lbpb;->i:I

    iget v3, p1, Lbpb;->i:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbpb;->g:[B

    .line 4
    iget-object p1, p1, Lbpb;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lbpb;->f:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lbpb;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-wide v3, p0, Lbpb;->e:D

    .line 6
    iget-wide v5, p1, Lbpb;->e:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_2
    iget-boolean v0, p0, Lbpb;->d:Z

    .line 7
    iget-boolean p1, p1, Lbpb;->d:Z

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 4
    :pswitch_3
    iget-wide v3, p0, Lbpb;->c:J

    .line 8
    iget-wide v5, p1, Lbpb;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v1

    .line 3
    :cond_4
    :goto_0
    return v1

    .line 7
    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "Flag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbpb;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbpb;->h:I

    const-string v3, "\'"

    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbpb;->g:[B

    .line 6
    invoke-static {v2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v4, 0x3

    .line 7
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20
    :pswitch_0
    nop

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbpb;->f:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    iget-wide v2, p0, Lbpb;->e:D

    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lbpb;->d:Z

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    iget-wide v2, p0, Lbpb;->c:J

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    nop

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbpb;->h:I

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbpb;->i:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
