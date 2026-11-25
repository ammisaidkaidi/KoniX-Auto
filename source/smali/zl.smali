.class public final enum Lzl;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lzl;

.field public static final enum ON_ANY:Lzl;

.field public static final enum ON_CREATE:Lzl;

.field public static final enum ON_DESTROY:Lzl;

.field public static final enum ON_PAUSE:Lzl;

.field public static final enum ON_RESUME:Lzl;

.field public static final enum ON_START:Lzl;

.field public static final enum ON_STOP:Lzl;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lzl;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzl;->ON_CREATE:Lzl;

    new-instance v1, Lzl;

    .line 2
    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzl;->ON_START:Lzl;

    new-instance v3, Lzl;

    .line 3
    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzl;->ON_RESUME:Lzl;

    new-instance v5, Lzl;

    .line 4
    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzl;->ON_PAUSE:Lzl;

    new-instance v7, Lzl;

    .line 5
    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzl;->ON_STOP:Lzl;

    new-instance v9, Lzl;

    .line 6
    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzl;->ON_DESTROY:Lzl;

    new-instance v11, Lzl;

    .line 7
    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lzl;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lzl;->ON_ANY:Lzl;

    const/4 v13, 0x7

    new-array v13, v13, [Lzl;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lzl;->$VALUES:[Lzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lzm;)Lzl;
    .locals 1

    .line 1
    sget-object v0, Lzm;->a:Lzm;

    invoke-virtual {p0}, Lzm;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lzl;->ON_PAUSE:Lzl;

    return-object p0

    :pswitch_1
    sget-object p0, Lzl;->ON_STOP:Lzl;

    return-object p0

    :pswitch_2
    sget-object p0, Lzl;->ON_DESTROY:Lzl;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lzm;)Lzl;
    .locals 1

    .line 1
    sget-object v0, Lzm;->a:Lzm;

    invoke-virtual {p0}, Lzm;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lzl;->ON_RESUME:Lzl;

    return-object p0

    :pswitch_1
    sget-object p0, Lzl;->ON_START:Lzl;

    return-object p0

    :pswitch_2
    sget-object p0, Lzl;->ON_CREATE:Lzl;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lzl;
    .locals 1

    .line 1
    sget-object v0, Lzl;->$VALUES:[Lzl;

    invoke-virtual {v0}, [Lzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzl;

    return-object v0
.end method


# virtual methods
.method public final c()Lzm;
    .locals 3

    .line 1
    sget-object v0, Lzm;->a:Lzm;

    invoke-virtual {p0}, Lzl;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lzm;->a:Lzm;

    return-object v0

    :pswitch_1
    sget-object v0, Lzm;->e:Lzm;

    return-object v0

    :pswitch_2
    sget-object v0, Lzm;->d:Lzm;

    return-object v0

    :pswitch_3
    sget-object v0, Lzm;->c:Lzm;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
