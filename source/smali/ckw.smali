.class public final enum Lckw;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lckw;

.field public static final enum b:Lckw;

.field public static final enum c:Lckw;

.field public static final enum d:Lckw;

.field public static final enum e:Lckw;

.field public static final enum f:Lckw;

.field public static final enum g:Lckw;

.field public static final enum h:Lckw;

.field public static final enum i:Lckw;

.field public static final enum j:Lckw;

.field public static final enum k:Lckw;

.field public static final enum l:Lckw;

.field public static final enum m:Lckw;

.field public static final enum n:Lckw;

.field public static final enum o:Lckw;

.field public static final enum p:Lckw;

.field public static final enum q:Lckw;

.field public static final enum r:Lckw;

.field public static final enum s:Lckw;

.field public static final enum t:Lckw;

.field public static final enum u:Lckw;

.field public static final enum v:Lckw;

.field private static final synthetic x:[Lckw;


# instance fields
.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lckw;

    const-string v1, "SENSOR_LOCATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lckw;->a:Lckw;

    new-instance v1, Lckw;

    .line 2
    const-string v4, "SENSOR_COMPASS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lckw;->b:Lckw;

    new-instance v4, Lckw;

    .line 3
    const-string v6, "SENSOR_SPEED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lckw;->c:Lckw;

    new-instance v6, Lckw;

    .line 4
    const-string v8, "SENSOR_RPM"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lckw;->d:Lckw;

    new-instance v8, Lckw;

    .line 5
    const-string v10, "SENSOR_ODOMETER"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lckw;->e:Lckw;

    new-instance v10, Lckw;

    .line 6
    const-string v12, "SENSOR_FUEL"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lckw;->f:Lckw;

    new-instance v12, Lckw;

    .line 7
    const-string v14, "SENSOR_PARKING_BRAKE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lckw;->g:Lckw;

    new-instance v14, Lckw;

    .line 8
    const-string v13, "SENSOR_GEAR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lckw;->h:Lckw;

    new-instance v13, Lckw;

    .line 9
    const-string v15, "SENSOR_OBDII_DIAGNOSTIC_CODE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lckw;->i:Lckw;

    new-instance v15, Lckw;

    .line 10
    const-string v11, "SENSOR_NIGHT_MODE"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lckw;->j:Lckw;

    new-instance v11, Lckw;

    .line 11
    const-string v9, "SENSOR_ENVIRONMENT_DATA"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lckw;->k:Lckw;

    new-instance v9, Lckw;

    .line 12
    const-string v7, "SENSOR_HVAC_DATA"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lckw;->l:Lckw;

    new-instance v7, Lckw;

    .line 13
    const-string v5, "SENSOR_DRIVING_STATUS_DATA"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lckw;->m:Lckw;

    new-instance v5, Lckw;

    .line 14
    const-string v3, "SENSOR_DEAD_RECKONING_DATA"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lckw;->n:Lckw;

    new-instance v3, Lckw;

    .line 15
    const-string v2, "SENSOR_PASSENGER_DATA"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lckw;->o:Lckw;

    new-instance v2, Lckw;

    .line 16
    const-string v7, "SENSOR_DOOR_DATA"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lckw;->p:Lckw;

    new-instance v7, Lckw;

    .line 17
    const-string v5, "SENSOR_LIGHT_DATA"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lckw;->q:Lckw;

    new-instance v5, Lckw;

    .line 18
    const-string v3, "SENSOR_TIRE_PRESSURE_DATA"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lckw;->r:Lckw;

    new-instance v3, Lckw;

    .line 19
    const-string v2, "SENSOR_ACCELEROMETER_DATA"

    move-object/from16 v21, v5

    const/16 v5, 0x13

    invoke-direct {v3, v2, v7, v5}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lckw;->s:Lckw;

    new-instance v2, Lckw;

    .line 20
    const-string v7, "SENSOR_GYROSCOPE_DATA"

    move-object/from16 v22, v3

    const/16 v3, 0x14

    invoke-direct {v2, v7, v5, v3}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lckw;->t:Lckw;

    new-instance v7, Lckw;

    .line 21
    const-string v5, "SENSOR_GPS_SATELLITE_DATA"

    move-object/from16 v23, v2

    const/16 v2, 0x15

    invoke-direct {v7, v5, v3, v2}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lckw;->u:Lckw;

    new-instance v5, Lckw;

    .line 22
    const-string v3, "SENSOR_TOLL_CARD"

    move-object/from16 v24, v7

    const/16 v7, 0x16

    invoke-direct {v5, v3, v2, v7}, Lckw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lckw;->v:Lckw;

    const/16 v3, 0x16

    new-array v3, v3, [Lckw;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    aput-object v5, v3, v2

    sput-object v3, Lckw;->x:[Lckw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lckw;->w:I

    return-void
.end method

.method public static values()[Lckw;
    .locals 1

    .line 1
    sget-object v0, Lckw;->x:[Lckw;

    invoke-virtual {v0}, [Lckw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckw;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lckw;->w:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lckw;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
