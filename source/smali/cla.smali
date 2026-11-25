.class public final enum Lcla;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lcla;

.field public static final enum b:Lcla;

.field public static final enum c:Lcla;

.field private static final synthetic e:[Lcla;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcla;

    const-string v1, "USER_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcla;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcla;->a:Lcla;

    new-instance v1, Lcla;

    .line 2
    const-string v3, "AUTO_LAUNCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcla;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcla;->b:Lcla;

    new-instance v3, Lcla;

    .line 3
    const-string v5, "AUTOMATIC_RESTART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcla;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcla;->c:Lcla;

    const/4 v5, 0x3

    new-array v5, v5, [Lcla;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcla;->e:[Lcla;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcla;->d:I

    return-void
.end method

.method public static b(I)Lcla;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcla;->c:Lcla;

    return-object p0

    :pswitch_1
    sget-object p0, Lcla;->b:Lcla;

    return-object p0

    :pswitch_2
    sget-object p0, Lcla;->a:Lcla;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()Lddo;
    .locals 1

    sget-object v0, Lckg;->k:Lddo;

    return-object v0
.end method

.method public static values()[Lcla;
    .locals 1

    .line 1
    sget-object v0, Lcla;->e:[Lcla;

    invoke-virtual {v0}, [Lcla;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcla;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcla;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcla;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
