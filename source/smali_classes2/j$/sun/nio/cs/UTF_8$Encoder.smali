.class final Lj$/sun/nio/cs/UTF_8$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF_8.java"


# instance fields
.field private sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2

    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40400000    # 3.0f

    .line 431
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/UTF_8$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/UTF_8$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 10

    .line 458
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 460
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 462
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 463
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 464
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v2, v1

    sub-int v7, v5, v4

    .line 465
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v4

    :goto_0
    const/16 v7, 0x80

    if-ge v4, v6, :cond_0

    .line 468
    aget-char v8, v0, v1

    if-ge v8, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v1, 0x1

    .line 469
    aget-char v1, v0, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    move v4, v7

    move v1, v8

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_a

    .line 471
    aget-char v6, v0, v1

    if-ge v6, v7, :cond_2

    if-lt v4, v5, :cond_1

    .line 475
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v8, v4, 0x1

    int-to-byte v6, v6

    .line 476
    aput-byte v6, v3, v4

    :goto_2
    move v4, v8

    goto/16 :goto_3

    :cond_2
    const/16 v8, 0x800

    if-ge v6, v8, :cond_4

    sub-int v8, v5, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 480
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v6, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 481
    aput-byte v9, v3, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 482
    aput-byte v6, v3, v8

    goto/16 :goto_3

    .line 483
    :cond_4
    invoke-static {v6}, Lj$/lang/DesugarCharacter;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 485
    iget-object v8, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v8, :cond_5

    .line 486
    new-instance v8, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v8}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v8, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 487
    :cond_5
    iget-object v8, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8, v6, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v6

    if-gez v6, :cond_6

    .line 489
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 490
    iget-object p1, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {p1}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_6
    sub-int v8, v5, v4

    const/4 v9, 0x4

    if-ge v8, v9, :cond_7

    .line 493
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_7
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 494
    aput-byte v9, v3, v4

    add-int/lit8 v4, v8, 0x1

    shr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    .line 495
    aput-byte v9, v3, v8

    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    .line 496
    aput-byte v9, v3, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 497
    aput-byte v6, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    sub-int v8, v5, v4

    const/4 v9, 0x3

    if-ge v8, v9, :cond_9

    .line 502
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v6, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 503
    aput-byte v9, v3, v4

    add-int/lit8 v4, v8, 0x1

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v7

    int-to-byte v9, v9

    .line 504
    aput-byte v9, v3, v8

    add-int/lit8 v8, v4, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 505
    aput-byte v6, v3, v4

    goto/16 :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 509
    :cond_a
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 510
    sget-object p1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p1
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5

    .line 516
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 517
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 518
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 521
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-byte v1, v1

    .line 523
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x800

    if-ge v1, v3, :cond_3

    .line 526
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 527
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_2
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 528
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 529
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 530
    :cond_3
    invoke-static {v1}, Lj$/lang/DesugarCharacter;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 532
    iget-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v3, :cond_4

    .line 533
    new-instance v3, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v3}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 534
    :cond_4
    iget-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v1

    if-gez v1, :cond_5

    .line 536
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    .line 537
    iget-object p1, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {p1}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    .line 539
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_6

    .line 540
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_6
    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 541
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 542
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 543
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 544
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 548
    :cond_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    .line 549
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_8
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 550
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 551
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 552
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 556
    :cond_9
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    .line 557
    sget-object p1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p1
.end method

.method private static overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 0

    .line 450
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/CharBuffer;

    .line 451
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0
.end method

.method private static overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 0

    .line 445
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 446
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 0

    .line 435
    invoke-static {p1}, Lj$/lang/DesugarCharacter;->isSurrogate(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    .line 563
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    .line 566
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1
.end method

.method public isLegalReplacement([B)Z
    .locals 3

    .line 439
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    if-gez v0, :cond_1

    .line 440
    :cond_0
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
