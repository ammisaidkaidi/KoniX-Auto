.class public final enum Lckc;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lckc;

.field public static final enum b:Lckc;

.field public static final enum c:Lckc;

.field public static final enum d:Lckc;

.field public static final enum e:Lckc;

.field public static final enum f:Lckc;

.field public static final enum g:Lckc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum h:Lckc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Lckc;

.field public static final enum j:Lckc;

.field public static final enum k:Lckc;

.field private static final synthetic m:[Lckc;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lckc;

    const-string v1, "EV_CONNECTOR_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lckc;->a:Lckc;

    new-instance v1, Lckc;

    .line 2
    const-string v3, "EV_CONNECTOR_TYPE_J1772"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lckc;->b:Lckc;

    new-instance v3, Lckc;

    .line 3
    const-string v5, "EV_CONNECTOR_TYPE_MENNEKES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lckc;->c:Lckc;

    new-instance v5, Lckc;

    .line 4
    const-string v7, "EV_CONNECTOR_TYPE_CHADEMO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lckc;->d:Lckc;

    new-instance v7, Lckc;

    .line 5
    const-string v9, "EV_CONNECTOR_TYPE_COMBO_1"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lckc;->e:Lckc;

    new-instance v9, Lckc;

    .line 6
    const-string v11, "EV_CONNECTOR_TYPE_COMBO_2"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lckc;->f:Lckc;

    new-instance v11, Lckc;

    .line 7
    const-string v13, "EV_CONNECTOR_TYPE_TESLA_ROADSTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lckc;->g:Lckc;

    new-instance v13, Lckc;

    .line 8
    const-string v15, "EV_CONNECTOR_TYPE_TESLA_HPWC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lckc;->h:Lckc;

    new-instance v15, Lckc;

    .line 9
    const-string v14, "EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lckc;->i:Lckc;

    new-instance v14, Lckc;

    .line 10
    const-string v12, "EV_CONNECTOR_TYPE_GBT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lckc;->j:Lckc;

    new-instance v12, Lckc;

    .line 11
    const-string v10, "EV_CONNECTOR_TYPE_OTHER"

    const/16 v8, 0xa

    const/16 v6, 0x65

    invoke-direct {v12, v10, v8, v6}, Lckc;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lckc;->k:Lckc;

    const/16 v6, 0xb

    new-array v6, v6, [Lckc;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    sput-object v6, Lckc;->m:[Lckc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lckc;->l:I

    return-void
.end method

.method public static b(I)Lckc;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    sget-object p0, Lckc;->k:Lckc;

    return-object p0

    :sswitch_1
    sget-object p0, Lckc;->j:Lckc;

    return-object p0

    :sswitch_2
    sget-object p0, Lckc;->i:Lckc;

    return-object p0

    :sswitch_3
    sget-object p0, Lckc;->h:Lckc;

    return-object p0

    :sswitch_4
    sget-object p0, Lckc;->g:Lckc;

    return-object p0

    :sswitch_5
    sget-object p0, Lckc;->f:Lckc;

    return-object p0

    :sswitch_6
    sget-object p0, Lckc;->e:Lckc;

    return-object p0

    :sswitch_7
    sget-object p0, Lckc;->d:Lckc;

    return-object p0

    :sswitch_8
    sget-object p0, Lckc;->c:Lckc;

    return-object p0

    :sswitch_9
    sget-object p0, Lckc;->b:Lckc;

    return-object p0

    :sswitch_a
    sget-object p0, Lckc;->a:Lckc;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public static values()[Lckc;
    .locals 1

    .line 1
    sget-object v0, Lckc;->m:[Lckc;

    invoke-virtual {v0}, [Lckc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckc;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lckc;->l:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lckc;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
