.class public final Lcvr;
.super Lcvd;
.source "PG"


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Lcun;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lctt;

    sget-object v2, Lctd;->a:Lctt;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lctw;->a:Lctt;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcvr;->a:Ljava/util/Set;

    .line 4
    invoke-static {v0}, Lcuq;->a(Ljava/util/Set;)Lcun;

    move-result-object v0

    sput-object v0, Lcvr;->b:Lcun;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcvd;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v0, ""

    invoke-static {v0, p1}, Lcvs;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcvr;->c:Ljava/lang/String;

    iput-object p2, p0, Lcvr;->d:Ljava/util/logging/Level;

    return-void
.end method

.method public static e(Lcub;Ljava/lang/String;ZLjava/util/logging/Level;)V
    .locals 17

    .line 3
    move-object/from16 v0, p1

    sget-object v1, Lcuf;->a:Lcuf;

    invoke-interface/range {p0 .. p0}, Lcub;->i()Lcug;

    move-result-object v2

    invoke-virtual {v2}, Lcug;->b()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcux;->c:Lcux;

    goto :goto_0

    .line 58
    :cond_0
    const/16 v4, 0x1c

    if-gt v3, v4, :cond_1

    new-instance v3, Lcuv;

    .line 2
    invoke-direct {v3, v1, v2}, Lcuv;-><init>(Lcug;Lcug;)V

    move-object v1, v3

    goto :goto_0

    .line 51
    :cond_1
    new-instance v3, Lcuw;

    .line 1
    invoke-direct {v3, v1, v2}, Lcuw;-><init>(Lcug;Lcug;)V

    move-object v1, v3

    .line 3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcub;->l()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    if-nez p2, :cond_3

    if-lt v2, v3, :cond_3

    sget-object v4, Lcvr;->a:Ljava/util/Set;

    .line 4
    move-object/from16 v5, p0

    invoke-static {v5, v1, v4}, Lcvb;->b(Lcub;Lcux;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    invoke-static/range {p0 .. p0}, Lcvb;->a(Lcub;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 3
    :cond_3
    move-object/from16 v5, p0

    .line 4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_4

    .line 6
    invoke-interface/range {p0 .. p0}, Lcub;->f()Lcti;

    move-result-object v6

    invoke-static {v6, v4}, Lcue;->d(Lcti;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-ge v2, v3, :cond_5

    invoke-interface/range {p0 .. p0}, Lcub;->j()Lcvc;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 56
    const-string v1, "(REDACTED) "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcub;->j()Lcvc;

    move-result-object v1

    iget-object v1, v1, Lcvc;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 62
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcub;->j()Lcvc;

    move-result-object v2

    if-eqz v2, :cond_26

    new-instance v2, Lcwi;

    invoke-interface/range {p0 .. p0}, Lcub;->j()Lcvc;

    move-result-object v3

    .line 8
    invoke-interface/range {p0 .. p0}, Lcub;->w()[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v2, v3, v6, v4}, Lcwi;-><init>(Lcvc;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Lcwi;->c()Ljava/lang/String;

    move-result-object v3

    .line 9
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcwl;->b(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_2
    if-ltz v7, :cond_23

    add-int/lit8 v12, v7, 0x1

    move v13, v12

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const-string v11, "unterminated parameter"

    if-ge v13, v15, :cond_22

    add-int/lit8 v15, v13, 0x1

    .line 10
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v6, v13, -0x30

    int-to-char v6, v6

    const/16 v8, 0xa

    if-ge v6, v8, :cond_7

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v6

    const v6, 0xf4240

    if-ge v14, v6, :cond_6

    move v13, v15

    const/4 v6, 0x0

    goto :goto_3

    .line 53
    :cond_6
    nop

    .line 40
    const-string v0, "index too large"

    invoke-static {v0, v3, v7, v15}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 10
    :cond_7
    const/16 v6, 0x24

    if-ne v13, v6, :cond_b

    add-int/lit8 v6, v15, -0x1

    sub-int/2addr v6, v12

    if-eqz v6, :cond_a

    .line 11
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-eq v6, v8, :cond_9

    .line 42
    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v15, v6, :cond_8

    .line 43
    add-int/lit8 v6, v15, 0x1

    .line 12
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move v10, v14

    move v12, v15

    move v15, v6

    goto :goto_4

    .line 43
    :cond_8
    invoke-static {v11, v3, v7}, Lcwk;->c(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 42
    :cond_9
    const-string v0, "index has leading zero"

    invoke-static {v0, v3, v7, v15}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 41
    :cond_a
    const-string v0, "missing index"

    invoke-static {v0, v3, v7, v15}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 26
    :cond_b
    const/16 v6, 0x3c

    if-ne v13, v6, :cond_e

    const/4 v6, -0x1

    if-eq v10, v6, :cond_d

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v15, v6, :cond_c

    .line 45
    add-int/lit8 v6, v15, 0x1

    .line 13
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move v12, v15

    move v15, v6

    goto :goto_4

    .line 45
    :cond_c
    invoke-static {v11, v3, v7}, Lcwk;->c(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 44
    :cond_d
    const-string v0, "invalid relative parameter"

    invoke-static {v0, v3, v7, v15}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 13
    :cond_e
    add-int/lit8 v6, v9, 0x1

    move v10, v9

    move v9, v6

    .line 12
    :goto_4
    const/4 v6, -0x1

    add-int/2addr v15, v6

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v15, v6, :cond_21

    .line 14
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit8 v6, v6, -0x21

    add-int/lit8 v6, v6, -0x41

    int-to-char v6, v6

    const/16 v8, 0x1a

    if-ge v6, v8, :cond_20

    add-int/lit8 v6, v15, 0x1

    .line 15
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    and-int/lit8 v11, v8, 0x20

    if-nez v11, :cond_f

    const/4 v13, 0x1

    goto :goto_6

    .line 26
    :cond_f
    const/4 v13, 0x0

    .line 16
    :goto_6
    invoke-static {v3, v12, v15, v13}, Lcty;->b(Ljava/lang/String;IIZ)Lcty;

    move-result-object v12

    .line 17
    invoke-static {v8}, Lctx;->a(C)I

    move-result v13

    sget-object v14, Lctx;->k:[Lctx;

    .line 18
    aget-object v13, v14, v13

    const/4 v14, 0x0

    if-eqz v11, :cond_10

    goto :goto_7

    .line 26
    :cond_10
    if-eqz v13, :cond_11

    iget v11, v13, Lctx;->n:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_12

    :cond_11
    move-object v13, v14

    .line 18
    :cond_12
    :goto_7
    if-eqz v13, :cond_14

    iget v8, v13, Lctx;->n:I

    iget-object v11, v13, Lctx;->m:Lctz;

    iget-boolean v11, v11, Lctz;->f:Z

    .line 19
    invoke-virtual {v12, v8, v11}, Lcty;->e(IZ)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 20
    invoke-static {v10, v13, v12}, Lcwf;->b(ILctx;Lcty;)Lcwf;

    move-result-object v8

    goto :goto_a

    .line 46
    :cond_13
    const-string v0, "invalid format specifier"

    invoke-static {v0, v3, v7, v6}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 29
    :cond_14
    const/16 v11, 0x74

    const/16 v13, 0xa0

    const-string v14, "invalid format specification"

    if-eq v8, v11, :cond_19

    const/16 v11, 0x54

    if-ne v8, v11, :cond_15

    goto :goto_9

    .line 24
    :cond_15
    const/16 v11, 0x68

    if-eq v8, v11, :cond_17

    const/16 v11, 0x48

    if-ne v8, v11, :cond_16

    goto :goto_8

    .line 52
    :cond_16
    nop

    .line 51
    invoke-static {v14, v3, v7, v6}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 25
    :cond_17
    :goto_8
    const/4 v8, 0x0

    invoke-virtual {v12, v13, v8}, Lcty;->e(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    new-instance v8, Lcwg;

    .line 26
    invoke-direct {v8, v12, v10}, Lcwg;-><init>(Lcty;I)V

    goto :goto_a

    .line 2
    :cond_18
    nop

    .line 50
    invoke-static {v14, v3, v7, v6}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 21
    :cond_19
    :goto_9
    const/4 v8, 0x0

    invoke-virtual {v12, v13, v8}, Lcty;->e(IZ)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 47
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_1e

    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v13, Lcwb;->F:Ljava/util/Map;

    .line 23
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcwb;

    if-eqz v11, :cond_1d

    .line 49
    new-instance v6, Lcwc;

    .line 24
    invoke-direct {v6, v12, v10, v11}, Lcwc;-><init>(Lcty;ILcwb;)V

    move/from16 v16, v8

    move-object v8, v6

    move/from16 v6, v16

    .line 20
    :goto_a
    iget v11, v8, Lcwd;->a:I

    const/16 v12, 0x20

    if-ge v11, v12, :cond_1a

    iget v12, v2, Lcwi;->a:I

    const/4 v13, 0x1

    shl-int/2addr v13, v11

    or-int/2addr v12, v13

    iput v12, v2, Lcwi;->a:I

    :cond_1a
    iget v12, v2, Lcwi;->b:I

    .line 27
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v2, Lcwi;->b:I

    invoke-virtual {v2}, Lcwi;->b()Lcwj;

    move-result-object v11

    iget-object v12, v2, Lcwi;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcwi;->c()Ljava/lang/String;

    move-result-object v13

    iget v14, v2, Lcwi;->e:I

    .line 28
    invoke-virtual {v11, v12, v13, v14, v7}, Lcwj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v7, v2, Lcwi;->c:[Ljava/lang/Object;

    iget v11, v8, Lcwd;->a:I

    array-length v12, v7

    if-ge v11, v12, :cond_1c

    .line 30
    aget-object v7, v7, v11

    if-eqz v7, :cond_1b

    .line 32
    invoke-virtual {v8, v2, v7}, Lcwd;->a(Lcwe;Ljava/lang/Object;)V

    goto :goto_b

    .line 9
    :cond_1b
    iget-object v7, v2, Lcwi;->d:Ljava/lang/StringBuilder;

    .line 31
    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1c
    iget-object v7, v2, Lcwi;->d:Ljava/lang/StringBuilder;

    .line 29
    const-string v8, "[ERROR: MISSING LOG ARGUMENT]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_b
    iput v6, v2, Lcwi;->e:I

    .line 9
    invoke-static {v3, v6}, Lcwl;->b(Ljava/lang/String;I)I

    move-result v7

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 49
    :cond_1d
    const-string v0, "illegal date/time conversion"

    invoke-static {v0, v3, v6}, Lcwk;->a(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 48
    :cond_1e
    const-string v0, "truncated format specifier"

    invoke-static {v0, v3, v7}, Lcwk;->a(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 47
    :cond_1f
    invoke-static {v14, v3, v7, v6}, Lcwk;->b(Ljava/lang/String;Ljava/lang/String;II)Lcwk;

    move-result-object v0

    throw v0

    .line 26
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 40
    :cond_21
    nop

    .line 52
    invoke-static {v11, v3, v7}, Lcwk;->c(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 50
    :cond_22
    nop

    .line 53
    invoke-static {v11, v3, v7}, Lcwk;->c(Ljava/lang/String;Ljava/lang/String;I)Lcwk;

    move-result-object v0

    throw v0

    .line 13
    :cond_23
    iget v3, v2, Lcwi;->a:I

    add-int/lit8 v6, v3, 0x1

    and-int/2addr v6, v3

    if-nez v6, :cond_25

    iget v6, v2, Lcwi;->b:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_24

    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    .line 36
    :cond_24
    invoke-virtual {v2}, Lcwi;->b()Lcwj;

    move-result-object v3

    iget-object v6, v2, Lcwi;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcwi;->c()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcwi;->e:I

    invoke-virtual {v2}, Lcwi;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 37
    invoke-virtual {v3, v6, v7, v8, v9}, Lcwj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v3, v2, Lcwi;->d:Ljava/lang/StringBuilder;

    .line 38
    invoke-interface/range {p0 .. p0}, Lcub;->w()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    iget v2, v2, Lcwi;->b:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    if-le v6, v2, :cond_27

    .line 39
    const-string v2, " [ERROR: UNUSED LOG ARGUMENTS]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 13
    :cond_25
    const/4 v0, -0x1

    xor-int/2addr v0, v3

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "unreferenced arguments [first missing index=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcwk;

    .line 35
    invoke-direct {v1, v0}, Lcwk;-><init>(Ljava/lang/String;)V

    .line 36
    throw v1

    .line 54
    :cond_26
    invoke-interface/range {p0 .. p0}, Lcub;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcue;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_27
    :goto_c
    sget-object v2, Lcvr;->b:Lcun;

    .line 55
    invoke-static {v1, v2, v4}, Lcvb;->c(Lcux;Lcun;Ljava/lang/StringBuilder;)V

    .line 57
    :goto_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-interface/range {p0 .. p0}, Lcub;->i()Lcug;

    move-result-object v2

    .line 59
    sget-object v3, Lctd;->a:Lctt;

    invoke-virtual {v2, v3}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface/range {p0 .. p0}, Lcub;->l()Ljava/util/logging/Level;

    move-result-object v3

    .line 60
    invoke-static {v3}, Lcvs;->d(Ljava/util/logging/Level;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 61
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 62
    :pswitch_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 61
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c(Lcub;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcvr;->c:Ljava/lang/String;

    iget-object v1, p0, Lcvr;->d:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcvr;->e(Lcub;Ljava/lang/String;ZLjava/util/logging/Level;)V

    return-void
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcvs;->d(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lcvr;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
