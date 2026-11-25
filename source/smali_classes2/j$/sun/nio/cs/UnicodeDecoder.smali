.class abstract Lj$/sun/nio/cs/UnicodeDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UnicodeDecoder.java"


# instance fields
.field private currentByteOrder:I

.field private defaultByteOrder:I

.field private final expectedByteOrder:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    .line 52
    iput p2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    iput p2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    return-void
.end method

.method private decode(II)C
    .locals 2

    .line 61
    iget v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    :goto_0
    int-to-char p1, p1

    return p1

    :cond_0
    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    goto :goto_0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 76
    iget v4, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const v5, 0xfffe

    const/4 v6, 0x2

    if-nez v4, :cond_2

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v3

    int-to-char v4, v4

    const v7, 0xfeff

    if-ne v4, v7, :cond_0

    .line 79
    iput v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    .line 83
    iput v6, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    goto :goto_1

    .line 87
    :cond_1
    iget v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    iput v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    .line 92
    :cond_2
    invoke-direct {p0, v1, v3}, Lj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v1

    if-ne v1, v5, :cond_3

    .line 96
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p2

    .line 100
    :cond_3
    :try_start_1
    invoke-static {v1}, Lj$/lang/DesugarCharacter;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v6, :cond_4

    .line 103
    sget-object p2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v2, v3}, Lj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v2

    .line 105
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 p2, 0x4

    .line 106
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-ge v3, v6, :cond_6

    .line 108
    sget-object p2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x4

    .line 110
    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 111
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_0

    .line 115
    :cond_7
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_9

    .line 119
    sget-object p2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x2

    .line 121
    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_0

    .line 124
    :cond_a
    sget-object p2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 128
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method protected implReset()V
    .locals 1

    .line 132
    iget v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    iput v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    return-void
.end method
