.class public final enum Ldgd;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldgd;

.field public static final enum b:Ldgd;

.field public static final enum c:Ldgd;

.field public static final enum d:Ldgd;

.field public static final enum e:Ldgd;

.field public static final enum f:Ldgd;

.field public static final enum g:Ldgd;

.field public static final enum h:Ldgd;

.field public static final enum i:Ldgd;

.field private static final synthetic j:[Ldgd;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ldgd;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldgd;->a:Ldgd;

    new-instance v1, Ldgd;

    .line 2
    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldgd;->b:Ldgd;

    new-instance v3, Ldgd;

    .line 3
    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldgd;->c:Ldgd;

    new-instance v5, Ldgd;

    .line 4
    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldgd;->d:Ldgd;

    new-instance v7, Ldgd;

    .line 5
    const-string v9, "BOOLEAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldgd;->e:Ldgd;

    new-instance v9, Ldgd;

    .line 6
    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldgd;->f:Ldgd;

    new-instance v11, Ldgd;

    .line 7
    sget-object v13, Ldcl;->b:Ldcl;

    const-string v13, "BYTE_STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldgd;->g:Ldgd;

    new-instance v13, Ldgd;

    .line 8
    const-string v15, "ENUM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldgd;->h:Ldgd;

    new-instance v15, Ldgd;

    .line 9
    const-string v14, "MESSAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ldgd;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ldgd;->i:Ldgd;

    const/16 v14, 0x9

    new-array v14, v14, [Ldgd;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Ldgd;->j:[Ldgd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldgd;
    .locals 1

    .line 1
    sget-object v0, Ldgd;->j:[Ldgd;

    invoke-virtual {v0}, [Ldgd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldgd;

    return-object v0
.end method
