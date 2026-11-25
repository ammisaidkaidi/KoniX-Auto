.class public final enum Lcky;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lcky;

.field public static final enum b:Lcky;

.field public static final enum c:Lcky;

.field public static final enum d:Lcky;

.field public static final enum e:Lcky;

.field public static final enum f:Lcky;

.field public static final enum g:Lcky;

.field public static final enum h:Lcky;

.field public static final enum i:Lcky;

.field private static final synthetic k:[Lcky;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcky;

    const-string v1, "VIDEO_800x480"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcky;->a:Lcky;

    new-instance v1, Lcky;

    .line 2
    const-string v4, "VIDEO_1280x720"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcky;->b:Lcky;

    new-instance v4, Lcky;

    .line 3
    const-string v6, "VIDEO_1920x1080"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcky;->c:Lcky;

    new-instance v6, Lcky;

    .line 4
    const-string v8, "VIDEO_2560x1440"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcky;->d:Lcky;

    new-instance v8, Lcky;

    .line 5
    const-string v10, "VIDEO_3840x2160"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcky;->e:Lcky;

    new-instance v10, Lcky;

    .line 6
    const-string v12, "VIDEO_720x1280"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcky;->f:Lcky;

    new-instance v12, Lcky;

    .line 7
    const-string v14, "VIDEO_1080x1920"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcky;->g:Lcky;

    new-instance v14, Lcky;

    .line 8
    const-string v13, "VIDEO_1440x2560"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcky;->h:Lcky;

    new-instance v13, Lcky;

    .line 9
    const-string v15, "VIDEO_2160x3840"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcky;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcky;->i:Lcky;

    new-array v9, v9, [Lcky;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v13, v9, v11

    sput-object v9, Lcky;->k:[Lcky;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcky;->j:I

    return-void
.end method

.method public static b(I)Lcky;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcky;->i:Lcky;

    return-object p0

    :pswitch_1
    sget-object p0, Lcky;->h:Lcky;

    return-object p0

    :pswitch_2
    sget-object p0, Lcky;->g:Lcky;

    return-object p0

    :pswitch_3
    sget-object p0, Lcky;->f:Lcky;

    return-object p0

    :pswitch_4
    sget-object p0, Lcky;->e:Lcky;

    return-object p0

    :pswitch_5
    sget-object p0, Lcky;->d:Lcky;

    return-object p0

    :pswitch_6
    sget-object p0, Lcky;->c:Lcky;

    return-object p0

    :pswitch_7
    sget-object p0, Lcky;->b:Lcky;

    return-object p0

    :pswitch_8
    sget-object p0, Lcky;->a:Lcky;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static c()Lddo;
    .locals 1

    sget-object v0, Lckg;->g:Lddo;

    return-object v0
.end method

.method public static values()[Lcky;
    .locals 1

    .line 1
    sget-object v0, Lcky;->k:[Lcky;

    invoke-virtual {v0}, [Lcky;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcky;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcky;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcky;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
