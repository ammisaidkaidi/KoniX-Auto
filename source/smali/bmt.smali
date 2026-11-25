.class public final Lbmt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbmt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lbmv;Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbmv;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget v1, p0, Lbmv;->b:I

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget v1, p0, Lbmv;->c:I

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbmv;->d:Ljava/lang/String;

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lbmv;->e:Landroid/os/IBinder;

    .line 6
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lio;->p(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lbmv;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 7
    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2}, Lio;->v(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lbmv;->g:Landroid/os/Bundle;

    .line 8
    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lio;->m(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lbmv;->h:Landroid/accounts/Account;

    .line 9
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lbmv;->i:[Lbjb;

    .line 10
    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2}, Lio;->v(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lbmv;->j:[Lbjb;

    .line 11
    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2}, Lio;->v(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbmv;->k:Z

    .line 12
    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lbmv;->l:I

    .line 13
    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lio;->k(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lbmv;->m:Z

    .line 14
    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-object p0, p0, Lbmv;->n:Ljava/lang/String;

    .line 15
    const/16 p2, 0xf

    invoke-static {p1, p2, p0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 16
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static b(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Lbmt;->a:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 186
    new-instance v2, Lchc;

    .line 198
    invoke-direct {v2, v0}, Lchc;-><init>(Landroid/os/Parcel;)V

    return-object v2

    .line 1
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lio;->x(I)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 7
    invoke-static {v0, v4}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Lbno;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {v0, v4, v3}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbno;

    goto :goto_1

    :pswitch_2
    sget-object v6, Lbiz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-static {v0, v4, v6}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lbiz;

    move-object v6, v4

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    move v5, v4

    .line 7
    :goto_1
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbqv;

    invoke-direct {v0, v5, v6, v3}, Lbqv;-><init>(ILbiz;Lbno;)V

    return-object v0

    .line 9
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 10
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 14
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_5
    sget-object v4, Lbnn;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbnn;

    move-object v6, v3

    goto :goto_3

    .line 13
    :pswitch_6
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v5, v3

    .line 14
    :goto_3
    goto :goto_2

    .line 15
    :cond_1
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbqu;

    invoke-direct {v0, v5, v6}, Lbqu;-><init>(ILbnn;)V

    return-object v0

    .line 16
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    .line 17
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lio;->x(I)I

    move-result v5

    packed-switch v5, :pswitch_data_3

    .line 21
    invoke-static {v0, v4}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 19
    :pswitch_8
    invoke-static {v0, v4}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 20
    :pswitch_9
    invoke-static {v0, v4}, Lio;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v4

    move-object v6, v4

    .line 21
    :goto_5
    goto :goto_4

    .line 22
    :cond_2
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbqs;

    invoke-direct {v0, v6, v3}, Lbqs;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 23
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    .line 24
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lio;->x(I)I

    move-result v7

    packed-switch v7, :pswitch_data_4

    .line 29
    invoke-static {v0, v4}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_b
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    invoke-static {v0, v4, v6}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v6, v4

    goto :goto_7

    .line 27
    :pswitch_c
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    .line 28
    :pswitch_d
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    move v5, v4

    .line 29
    :goto_7
    goto :goto_6

    .line 30
    :cond_3
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbqp;

    invoke-direct {v0, v5, v3, v6}, Lbqp;-><init>(IILandroid/content/Intent;)V

    return-object v0

    .line 31
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    .line 32
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lio;->x(I)I

    move-result v6

    packed-switch v6, :pswitch_data_5

    .line 36
    invoke-static {v0, v4}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 34
    :pswitch_f
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_9

    .line 35
    :pswitch_10
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    move v5, v4

    .line 36
    :goto_9
    goto :goto_8

    .line 37
    :cond_4
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lboq;

    invoke-direct {v0, v5, v3}, Lboq;-><init>(II)V

    return-object v0

    .line 38
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 39
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_6

    .line 42
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_12
    sget-object v4, Lboo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    invoke-static {v0, v3, v4}, Lio;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_a

    .line 43
    :cond_5
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbop;

    invoke-direct {v0, v6}, Lbop;-><init>(Ljava/util/List;)V

    return-object v0

    .line 44
    :pswitch_13
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    .line 45
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_6

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Lio;->x(I)I

    move-result v8

    packed-switch v8, :pswitch_data_7

    .line 51
    invoke-static {v0, v7}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 47
    :pswitch_14
    invoke-static {v0, v7}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_c

    :pswitch_15
    sget-object v4, Lbon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    invoke-static {v0, v7, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lbon;

    goto :goto_c

    .line 49
    :pswitch_16
    invoke-static {v0, v7}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 50
    :pswitch_17
    invoke-static {v0, v7}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 51
    :goto_c
    goto :goto_b

    .line 52
    :cond_6
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lboo;

    invoke-direct {v0, v6, v3, v4, v5}, Lboo;-><init>(Ljava/lang/String;Ljava/lang/String;Lbon;Z)V

    return-object v0

    .line 53
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v7, 0x0

    move-wide v11, v3

    move-object v10, v6

    move-object/from16 v16, v10

    move-object/from16 v17, v16

    move-wide v14, v7

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 54
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_7

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_8

    .line 65
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 58
    :pswitch_19
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_e

    .line 59
    :pswitch_1a
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_e

    .line 60
    :pswitch_1b
    invoke-static {v0, v3}, Lio;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_e

    .line 61
    :pswitch_1c
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_e

    .line 65
    :pswitch_1d
    const/16 v4, 0x8

    .line 56
    invoke-static {v0, v3, v4}, Lio;->J(Landroid/os/Parcel;II)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    move-wide v14, v3

    goto :goto_e

    .line 62
    :pswitch_1e
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_e

    .line 63
    :pswitch_1f
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_e

    .line 64
    :pswitch_20
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 65
    :goto_e
    goto :goto_d

    .line 66
    :cond_7
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbon;

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lbon;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v0

    .line 67
    :pswitch_21
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    .line 68
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_8

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_9

    .line 79
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 70
    :pswitch_22
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_10

    .line 71
    :pswitch_23
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v15, v3

    goto :goto_10

    .line 72
    :pswitch_24
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object v14, v3

    goto :goto_10

    .line 73
    :pswitch_25
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v13, v3

    goto :goto_10

    .line 74
    :pswitch_26
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v12, v3

    goto :goto_10

    .line 75
    :pswitch_27
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v11, v3

    goto :goto_10

    .line 76
    :pswitch_28
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v10, v3

    goto :goto_10

    .line 77
    :pswitch_29
    invoke-static {v0, v3}, Lio;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object v9, v3

    goto :goto_10

    .line 78
    :pswitch_2a
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 79
    :goto_10
    goto :goto_f

    .line 80
    :cond_8
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbol;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lbol;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I)V

    return-object v0

    .line 81
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 82
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_a

    .line 85
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 84
    :pswitch_2c
    invoke-static {v0, v3}, Lio;->M(Landroid/os/Parcel;I)[B

    move-result-object v6

    goto :goto_11

    .line 86
    :cond_9
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbok;

    invoke-direct {v0, v6}, Lbok;-><init>([B)V

    return-object v0

    .line 87
    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-wide v13, v3

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    const/4 v11, 0x0

    .line 88
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_a

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_b

    .line 96
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 90
    :pswitch_2e
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v13, v3

    goto :goto_13

    .line 91
    :pswitch_2f
    invoke-static {v0, v3}, Lio;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object v12, v3

    goto :goto_13

    .line 92
    :pswitch_30
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_13

    :pswitch_31
    sget-object v4, Lboi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    invoke-static {v0, v3, v4}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lboi;

    move-object v10, v3

    goto :goto_13

    .line 94
    :pswitch_32
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_13

    .line 95
    :pswitch_33
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 96
    :goto_13
    goto :goto_12

    .line 97
    :cond_a
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lboj;

    .line 98
    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lboj;-><init>(Ljava/lang/String;Ljava/lang/String;[Lboi;Z[BJ)V

    return-object v0

    .line 99
    :pswitch_34
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    .line 100
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_b

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lio;->x(I)I

    move-result v7

    packed-switch v7, :pswitch_data_c

    .line 105
    invoke-static {v0, v4}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 102
    :pswitch_35
    invoke-static {v0, v4}, Lio;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :pswitch_36
    sget-object v6, Lbon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    invoke-static {v0, v4, v6}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lbon;

    move-object v6, v4

    goto :goto_15

    .line 104
    :pswitch_37
    invoke-static {v0, v4}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    move v5, v4

    .line 105
    :goto_15
    goto :goto_14

    .line 106
    :cond_b
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lboi;

    .line 107
    invoke-direct {v0, v5, v6, v3}, Lboi;-><init>(I[Lbon;[Ljava/lang/String;)V

    return-object v0

    .line 108
    :pswitch_38
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 109
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_c

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_d

    .line 113
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_17

    :pswitch_39
    sget-object v4, Lbnm;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    invoke-static {v0, v3, v4}, Lio;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v6, v3

    goto :goto_17

    .line 112
    :pswitch_3a
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v5, v3

    .line 113
    :goto_17
    goto :goto_16

    .line 114
    :cond_c
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbnr;

    invoke-direct {v0, v5, v6}, Lbnr;-><init>(ILjava/util/List;)V

    return-object v0

    .line 115
    :pswitch_3b
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 116
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_d

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_e

    .line 123
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 118
    :pswitch_3c
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v11, v3

    goto :goto_19

    .line 119
    :pswitch_3d
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_19

    .line 120
    :pswitch_3e
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v9, v3

    goto :goto_19

    .line 121
    :pswitch_3f
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v8, v3

    goto :goto_19

    .line 122
    :pswitch_40
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v7, v3

    .line 123
    :goto_19
    goto :goto_18

    .line 124
    :cond_d
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbnq;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lbnq;-><init>(IZZII)V

    return-object v0

    .line 125
    :pswitch_41
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v9, v6

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 126
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_e

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_f

    .line 133
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 128
    :pswitch_42
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v12, v3

    goto :goto_1b

    .line 129
    :pswitch_43
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_1b

    :pswitch_44
    sget-object v4, Lbiz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbiz;

    move-object v10, v3

    goto :goto_1b

    .line 131
    :pswitch_45
    invoke-static {v0, v3}, Lio;->D(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v9, v3

    goto :goto_1b

    .line 132
    :pswitch_46
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    .line 133
    :goto_1b
    goto :goto_1a

    .line 134
    :cond_e
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbno;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lbno;-><init>(ILandroid/os/IBinder;Lbiz;ZZ)V

    return-object v0

    .line 135
    :pswitch_47
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v6

    const/4 v3, 0x0

    .line 136
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_f

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Lio;->x(I)I

    move-result v8

    packed-switch v8, :pswitch_data_10

    .line 142
    invoke-static {v0, v7}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_1d

    :pswitch_48
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 138
    invoke-static {v0, v7, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_1d

    .line 139
    :pswitch_49
    invoke-static {v0, v7}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_1d

    :pswitch_4a
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    invoke-static {v0, v7, v6}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    goto :goto_1d

    .line 141
    :pswitch_4b
    invoke-static {v0, v7}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v5

    .line 142
    :goto_1d
    goto :goto_1c

    .line 143
    :cond_f
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbnn;

    invoke-direct {v0, v5, v6, v3, v4}, Lbnn;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    .line 144
    :pswitch_4c
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const/4 v7, -0x1

    move-wide v12, v3

    move-wide v14, v12

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    .line 145
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_10

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_11

    .line 156
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 147
    :pswitch_4d
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_1f

    .line 148
    :pswitch_4e
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_1f

    .line 149
    :pswitch_4f
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_1f

    .line 150
    :pswitch_50
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_1f

    .line 151
    :pswitch_51
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_1f

    .line 152
    :pswitch_52
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_1f

    .line 153
    :pswitch_53
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v11, v3

    goto :goto_1f

    .line 154
    :pswitch_54
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_1f

    .line 155
    :pswitch_55
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    .line 156
    :goto_1f
    goto :goto_1e

    .line 157
    :cond_10
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbnm;

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Lbnm;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 158
    :pswitch_56
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v11, v6

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v21, v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 159
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_11

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_12

    .line 175
    :pswitch_57
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto/16 :goto_21

    .line 161
    :pswitch_58
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_21

    .line 162
    :pswitch_59
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v20, v3

    goto/16 :goto_21

    .line 163
    :pswitch_5a
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_21

    .line 164
    :pswitch_5b
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v18, v3

    goto :goto_21

    :pswitch_5c
    sget-object v4, Lbjb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    invoke-static {v0, v3, v4}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbjb;

    move-object/from16 v17, v3

    goto :goto_21

    :pswitch_5d
    sget-object v4, Lbjb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    invoke-static {v0, v3, v4}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbjb;

    move-object/from16 v16, v3

    goto :goto_21

    :pswitch_5e
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v15, v3

    goto :goto_21

    .line 168
    :pswitch_5f
    invoke-static {v0, v3}, Lio;->C(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object v14, v3

    goto :goto_21

    :pswitch_60
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    invoke-static {v0, v3, v4}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/common/api/Scope;

    move-object v13, v3

    goto :goto_21

    .line 170
    :pswitch_61
    invoke-static {v0, v3}, Lio;->D(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v12, v3

    goto :goto_21

    .line 171
    :pswitch_62
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_21

    .line 172
    :pswitch_63
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_21

    .line 173
    :pswitch_64
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_21

    .line 174
    :pswitch_65
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    .line 175
    :goto_21
    goto/16 :goto_20

    .line 176
    :cond_11
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbmv;

    .line 177
    move-object v7, v0

    invoke-direct/range {v7 .. v21}, Lbmv;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lbjb;[Lbjb;ZIZLjava/lang/String;)V

    return-object v0

    .line 178
    :pswitch_66
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v6

    move-object v4, v3

    .line 179
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_12

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Lio;->x(I)I

    move-result v8

    packed-switch v8, :pswitch_data_13

    .line 185
    invoke-static {v0, v7}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_23

    :pswitch_67
    sget-object v4, Lbms;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    invoke-static {v0, v7, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lbms;

    goto :goto_23

    .line 182
    :pswitch_68
    invoke-static {v0, v7}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_23

    :pswitch_69
    sget-object v3, Lbjb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 183
    invoke-static {v0, v7, v3}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbjb;

    goto :goto_23

    .line 184
    :pswitch_6a
    invoke-static {v0, v7}, Lio;->C(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v6

    .line 185
    :goto_23
    goto :goto_22

    .line 186
    :cond_12
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbmr;

    invoke-direct {v0, v6, v3, v5, v4}, Lbmr;-><init>(Landroid/os/Bundle;[Lbjb;ILbms;)V

    return-object v0

    .line 187
    :pswitch_6b
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v6

    move-object v11, v8

    move-object v13, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 188
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_13

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_14

    .line 196
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_25

    .line 190
    :pswitch_6c
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object v13, v3

    goto :goto_25

    .line 191
    :pswitch_6d
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v12, v3

    goto :goto_25

    .line 192
    :pswitch_6e
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object v11, v3

    goto :goto_25

    .line 193
    :pswitch_6f
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v10, v3

    goto :goto_25

    .line 194
    :pswitch_70
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v9, v3

    goto :goto_25

    :pswitch_71
    sget-object v4, Lbnq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbnq;

    move-object v8, v3

    .line 196
    :goto_25
    goto :goto_24

    .line 197
    :cond_13
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbms;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lbms;-><init>(Lbnq;ZZ[II[I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_66
        :pswitch_56
        :pswitch_4c
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_2d
        :pswitch_2b
        :pswitch_21
        :pswitch_18
        :pswitch_13
        :pswitch_11
        :pswitch_e
        :pswitch_a
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_12
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_2c
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_57
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 21
    iget v0, p0, Lbmt;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lchc;

    return-object p1

    .line 1
    :pswitch_0
    new-array p1, p1, [Lbqv;

    return-object p1

    .line 2
    :pswitch_1
    new-array p1, p1, [Lbqu;

    return-object p1

    .line 3
    :pswitch_2
    new-array p1, p1, [Lbqs;

    return-object p1

    .line 4
    :pswitch_3
    new-array p1, p1, [Lbqp;

    return-object p1

    .line 5
    :pswitch_4
    new-array p1, p1, [Lboq;

    return-object p1

    .line 6
    :pswitch_5
    new-array p1, p1, [Lbop;

    return-object p1

    .line 7
    :pswitch_6
    new-array p1, p1, [Lboo;

    return-object p1

    .line 8
    :pswitch_7
    new-array p1, p1, [Lbon;

    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Lbol;

    return-object p1

    .line 10
    :pswitch_9
    new-array p1, p1, [Lbok;

    return-object p1

    .line 11
    :pswitch_a
    new-array p1, p1, [Lboj;

    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Lboi;

    return-object p1

    .line 13
    :pswitch_c
    new-array p1, p1, [Lbnr;

    return-object p1

    .line 14
    :pswitch_d
    new-array p1, p1, [Lbnq;

    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Lbno;

    return-object p1

    .line 16
    :pswitch_f
    new-array p1, p1, [Lbnn;

    return-object p1

    .line 17
    :pswitch_10
    new-array p1, p1, [Lbnm;

    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Lbmv;

    return-object p1

    .line 19
    :pswitch_12
    new-array p1, p1, [Lbmr;

    return-object p1

    .line 20
    :pswitch_13
    new-array p1, p1, [Lbms;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
