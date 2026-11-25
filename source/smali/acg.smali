.class public final Lacg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lacg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    .line 139
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v2, v1, Lacg;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v5

    move-object v9, v8

    move-object v11, v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_18

    .line 1
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 9
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 4
    :sswitch_0
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v7, v3

    goto :goto_1

    :sswitch_1
    sget-object v4, Lbiz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbiz;

    move-object v11, v3

    goto :goto_1

    :sswitch_2
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    move-object v10, v3

    goto :goto_1

    .line 7
    :sswitch_3
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 8
    :sswitch_4
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    .line 9
    :goto_1
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lbiz;)V

    return-object v0

    .line 11
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 12
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 16
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 14
    :pswitch_2
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_3

    .line 15
    :pswitch_3
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v4, v3

    .line 16
    :goto_3
    goto :goto_2

    .line 17
    :cond_1
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 18
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 19
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v6, -0x1

    .line 20
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v8

    packed-switch v8, :pswitch_data_2

    .line 25
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 22
    :pswitch_5
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_5

    .line 23
    :pswitch_6
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v4, v3

    goto :goto_5

    .line 24
    :pswitch_7
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 25
    :goto_5
    goto :goto_4

    .line 26
    :cond_2
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbjb;

    invoke-direct {v0, v5, v4, v6, v7}, Lbjb;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    .line 27
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v6, v5

    const/4 v3, 0x0

    .line 28
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_3

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Lio;->x(I)I

    move-result v8

    packed-switch v8, :pswitch_data_3

    .line 34
    invoke-static {v0, v7}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 30
    :pswitch_9
    invoke-static {v0, v7}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :pswitch_a
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-static {v0, v7, v5}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    goto :goto_7

    .line 32
    :pswitch_b
    invoke-static {v0, v7}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    .line 33
    :pswitch_c
    invoke-static {v0, v7}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    .line 34
    :goto_7
    goto :goto_6

    .line 35
    :cond_3
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbiz;

    invoke-direct {v0, v4, v3, v5, v6}, Lbiz;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    .line 36
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v5

    move-object v10, v7

    move-object v11, v10

    move-object v13, v11

    move-object/from16 v16, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 37
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 53
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 42
    :pswitch_e
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_a

    .line 43
    :pswitch_f
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_a

    .line 39
    :pswitch_10
    invoke-static {v0, v3}, Lio;->z(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v16, v5

    goto :goto_9

    :cond_4
    const/4 v4, 0x4

    .line 40
    invoke-static {v0, v3, v4}, Lio;->R(Landroid/os/Parcel;II)V

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    .line 39
    :goto_9
    goto :goto_a

    .line 44
    :pswitch_11
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v15, v3

    goto :goto_a

    .line 45
    :pswitch_12
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v14, v3

    goto :goto_a

    .line 46
    :pswitch_13
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 47
    :pswitch_14
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v12, v3

    goto :goto_a

    .line 48
    :pswitch_15
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 49
    :pswitch_16
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 50
    :pswitch_17
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_a

    .line 51
    :pswitch_18
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    goto :goto_a

    .line 52
    :pswitch_19
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    .line 53
    :goto_a
    goto :goto_8

    .line 54
    :cond_5
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbiw;

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lbiw;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;ZI)V

    return-object v0

    .line 55
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    const/4 v13, 0x1

    .line 56
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_6

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_5

    .line 66
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_1b
    sget-object v4, Lbol;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-static {v0, v3, v4}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbol;

    move-object v14, v3

    goto :goto_c

    .line 59
    :pswitch_1c
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_c

    .line 60
    :pswitch_1d
    invoke-static {v0, v3}, Lio;->Q(Landroid/os/Parcel;I)[[B

    move-result-object v3

    move-object v12, v3

    goto :goto_c

    .line 61
    :pswitch_1e
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object v11, v3

    goto :goto_c

    .line 62
    :pswitch_1f
    invoke-static {v0, v3}, Lio;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_c

    .line 63
    :pswitch_20
    invoke-static {v0, v3}, Lio;->N(Landroid/os/Parcel;I)[I

    move-result-object v3

    move-object v9, v3

    goto :goto_c

    .line 64
    :pswitch_21
    invoke-static {v0, v3}, Lio;->M(Landroid/os/Parcel;I)[B

    move-result-object v3

    move-object v8, v3

    goto :goto_c

    :pswitch_22
    sget-object v4, Lbiw;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lbiw;

    move-object v7, v3

    .line 66
    :goto_c
    goto :goto_b

    .line 67
    :cond_6
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbin;

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Lbin;-><init>(Lbiw;[B[I[Ljava/lang/String;[I[[BZ[Lbol;)V

    return-object v0

    .line 68
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    .line 69
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_7

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Lio;->x(I)I

    move-result v7

    packed-switch v7, :pswitch_data_6

    .line 74
    invoke-static {v0, v6}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 71
    :pswitch_24
    invoke-static {v0, v6}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_e

    .line 72
    :pswitch_25
    invoke-static {v0, v6}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_e

    .line 73
    :pswitch_26
    invoke-static {v0, v6}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    .line 74
    :goto_e
    goto :goto_d

    .line 75
    :cond_7
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbim;

    invoke-direct {v0, v5, v4, v3}, Lbim;-><init>(Ljava/lang/String;II)V

    return-object v0

    .line 76
    :pswitch_27
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 77
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_8

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_7

    .line 80
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_28
    sget-object v4, Lbim;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-static {v0, v3, v4}, Lio;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_f

    .line 81
    :cond_8
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbid;

    .line 82
    invoke-direct {v0, v5}, Lbid;-><init>(Ljava/util/List;)V

    return-object v0

    .line 83
    :pswitch_29
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    .line 84
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v6

    packed-switch v6, :pswitch_data_8

    .line 88
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 86
    :pswitch_2a
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_11

    .line 87
    :pswitch_2b
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v4, v3

    .line 88
    :goto_11
    goto :goto_10

    .line 89
    :cond_9
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lbia;

    invoke-direct {v0, v4, v5}, Lbia;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 90
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v6, 0x0

    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v18, v15

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-wide/from16 v16, v6

    const/4 v9, 0x0

    .line 91
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_a

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_9

    .line 105
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 93
    :pswitch_2d
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_13

    .line 94
    :pswitch_2e
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_13

    :pswitch_2f
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    invoke-static {v0, v3, v4}, Lio;->H(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_13

    .line 96
    :pswitch_30
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_13

    .line 97
    :pswitch_31
    invoke-static {v0, v3}, Lio;->B(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_13

    .line 98
    :pswitch_32
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_13

    :pswitch_33
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    invoke-static {v0, v3, v4}, Lio;->E(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v14, v3

    goto :goto_13

    .line 100
    :pswitch_34
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_13

    .line 101
    :pswitch_35
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_13

    .line 102
    :pswitch_36
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_13

    .line 103
    :pswitch_37
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_13

    .line 104
    :pswitch_38
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    .line 105
    :goto_13
    goto :goto_12

    .line 106
    :cond_a
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 107
    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 108
    :pswitch_39
    invoke-static/range {p1 .. p1}, Lio;->A(Landroid/os/Parcel;)I

    move-result v2

    move-object v8, v5

    move-object v9, v8

    move-object v12, v9

    move-object v13, v12

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 109
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_c

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_a

    .line 120
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 114
    :pswitch_3a
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_16

    .line 115
    :pswitch_3b
    invoke-static {v0, v3}, Lio;->G(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_16

    .line 116
    :pswitch_3c
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v11, v3

    goto :goto_16

    .line 117
    :pswitch_3d
    invoke-static {v0, v3}, Lio;->L(Landroid/os/Parcel;I)Z

    move-result v3

    move v10, v3

    goto :goto_16

    .line 111
    :pswitch_3e
    invoke-static {v0, v3}, Lio;->z(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_b

    move-object v9, v5

    goto :goto_15

    :cond_b
    const/16 v4, 0x8

    .line 112
    invoke-static {v0, v3, v4}, Lio;->R(Landroid/os/Parcel;II)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v9, v3

    .line 111
    :goto_15
    goto :goto_16

    .line 118
    :pswitch_3f
    invoke-static {v0, v3}, Lio;->F(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_16

    .line 119
    :pswitch_40
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v3

    move v7, v3

    .line 120
    :goto_16
    goto :goto_14

    .line 121
    :cond_c
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/TokenData;

    .line 122
    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/auth/TokenData;-><init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/List;Ljava/lang/String;)V

    return-object v0

    :pswitch_41
    new-instance v2, Lbcn;

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 124
    invoke-direct {v2, v5, v6}, Lbcn;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 125
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, v2, Lbcn;->b:Landroid/bluetooth/BluetoothDevice;

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lbcn;->c:Ljava/lang/String;

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v2, Lbcn;->d:Ljava/lang/String;

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Lbcq;->a(I)Lbcq;

    move-result-object v5

    iput-object v5, v2, Lbcn;->e:Lbcq;

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_17

    .line 130
    :cond_d
    const/4 v3, 0x0

    .line 129
    :goto_17
    iput-boolean v3, v2, Lbcn;->f:Z

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbcn;->g(Ljava/lang/String;)Lcly;

    move-result-object v0

    iput-object v0, v2, Lbcn;->g:Lcly;

    return-object v2

    :pswitch_42
    new-instance v2, Ladv;

    .line 131
    invoke-direct {v2, v0}, Ladv;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_43
    new-instance v2, Lads;

    .line 132
    invoke-direct {v2, v0}, Lads;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_44
    new-instance v2, Ladc;

    .line 133
    invoke-direct {v2, v0}, Ladc;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_45
    new-instance v2, Lacn;

    .line 134
    invoke-direct {v2, v0}, Lacn;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_46
    new-instance v2, Lacl;

    .line 135
    invoke-direct {v2, v0}, Lacl;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_47
    new-instance v2, Lacj;

    .line 136
    invoke-direct {v2, v0}, Lacj;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_48
    new-instance v2, Lua;

    .line 137
    invoke-direct {v2, v0}, Lua;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_49
    new-instance v2, Lach;

    .line 138
    invoke-direct {v2, v0}, Lach;-><init>(Landroid/os/Parcel;)V

    return-object v2

    .line 140
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_e

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lio;->x(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 147
    invoke-static {v0, v3}, Lio;->K(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 142
    :sswitch_5
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_19

    .line 143
    :sswitch_6
    invoke-static {v0, v3}, Lio;->C(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object v11, v3

    goto :goto_19

    .line 144
    :sswitch_7
    invoke-static {v0, v3}, Lio;->y(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_19

    :sswitch_8
    sget-object v5, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    invoke-static {v0, v3, v5}, Lio;->O(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/CursorWindow;

    move-object v9, v3

    goto :goto_19

    .line 146
    :sswitch_9
    invoke-static {v0, v3}, Lio;->P(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 147
    :goto_19
    goto :goto_18

    .line 148
    :cond_e
    invoke-static {v0, v2}, Lio;->I(Landroid/os/Parcel;I)V

    .line 149
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    .line 150
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    const/4 v2, 0x0

    :goto_1a
    iget-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    .line 151
    array-length v5, v3

    if-ge v2, v5, :cond_f

    iget-object v5, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    .line 152
    aget-object v3, v3, v2

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_f
    iget-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    .line 153
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    .line 154
    array-length v5, v3

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    .line 155
    aput v2, v5, v4

    .line 156
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    .line 157
    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    sub-int v3, v2, v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_10
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_39
        :pswitch_2c
        :pswitch_29
        :pswitch_27
        :pswitch_23
        :pswitch_1a
        :pswitch_d
        :pswitch_8
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 21
    iget v0, p0, Lacg;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/common/data/DataHolder;

    return-object p1

    .line 1
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1

    .line 2
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p1

    .line 3
    :pswitch_2
    new-array p1, p1, [Lbjb;

    return-object p1

    .line 4
    :pswitch_3
    new-array p1, p1, [Lbiz;

    return-object p1

    .line 5
    :pswitch_4
    new-array p1, p1, [Lbiw;

    return-object p1

    .line 6
    :pswitch_5
    new-array p1, p1, [Lbin;

    return-object p1

    .line 7
    :pswitch_6
    new-array p1, p1, [Lbim;

    return-object p1

    .line 8
    :pswitch_7
    new-array p1, p1, [Lbid;

    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Lbia;

    return-object p1

    .line 10
    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1

    .line 11
    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/auth/TokenData;

    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Lbcn;

    return-object p1

    .line 13
    :pswitch_c
    new-array p1, p1, [Ladv;

    return-object p1

    .line 14
    :pswitch_d
    new-array p1, p1, [Lads;

    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Ladc;

    return-object p1

    .line 16
    :pswitch_f
    new-array p1, p1, [Lacn;

    return-object p1

    .line 17
    :pswitch_10
    new-array p1, p1, [Lacl;

    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Lacj;

    return-object p1

    .line 19
    :pswitch_12
    new-array p1, p1, [Lua;

    return-object p1

    .line 20
    :pswitch_13
    new-array p1, p1, [Lach;

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
