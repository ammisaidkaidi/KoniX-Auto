.class public final enum Ldgc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldgc;

.field public static final enum b:Ldgc;

.field public static final enum c:Ldgc;

.field public static final enum d:Ldgc;

.field public static final enum e:Ldgc;

.field public static final enum f:Ldgc;

.field public static final enum g:Ldgc;

.field public static final enum h:Ldgc;

.field public static final enum i:Ldgc;

.field public static final enum j:Ldgc;

.field public static final enum k:Ldgc;

.field public static final enum l:Ldgc;

.field public static final enum m:Ldgc;

.field public static final enum n:Ldgc;

.field public static final enum o:Ldgc;

.field public static final enum p:Ldgc;

.field public static final enum q:Ldgc;

.field public static final enum r:Ldgc;

.field private static final synthetic u:[Ldgc;


# instance fields
.field public final s:Ldgd;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Ldgc;

    sget-object v1, Ldgd;->d:Ldgd;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v0, Ldgc;->a:Ldgc;

    new-instance v1, Ldgc;

    sget-object v2, Ldgd;->c:Ldgd;

    .line 2
    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v1, Ldgc;->b:Ldgc;

    new-instance v2, Ldgc;

    sget-object v5, Ldgd;->b:Ldgd;

    .line 3
    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v2, Ldgc;->c:Ldgc;

    new-instance v5, Ldgc;

    sget-object v7, Ldgd;->b:Ldgd;

    .line 4
    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v5, Ldgc;->d:Ldgc;

    new-instance v7, Ldgc;

    sget-object v9, Ldgd;->a:Ldgd;

    .line 5
    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v7, Ldgc;->e:Ldgc;

    new-instance v9, Ldgc;

    sget-object v11, Ldgd;->b:Ldgd;

    .line 6
    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v9, Ldgc;->f:Ldgc;

    new-instance v11, Ldgc;

    sget-object v13, Ldgd;->a:Ldgd;

    .line 7
    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v11, Ldgc;->g:Ldgc;

    new-instance v13, Ldgc;

    sget-object v14, Ldgd;->e:Ldgd;

    .line 8
    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v13, Ldgc;->h:Ldgc;

    new-instance v14, Ldgc;

    sget-object v15, Ldgd;->f:Ldgd;

    .line 9
    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v14, Ldgc;->i:Ldgc;

    new-instance v12, Ldgc;

    sget-object v15, Ldgd;->i:Ldgd;

    .line 10
    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v12, Ldgc;->j:Ldgc;

    new-instance v4, Ldgc;

    sget-object v15, Ldgd;->i:Ldgd;

    .line 11
    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v4, Ldgc;->k:Ldgc;

    new-instance v6, Ldgc;

    sget-object v15, Ldgd;->g:Ldgd;

    .line 12
    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v6, Ldgc;->l:Ldgc;

    new-instance v10, Ldgc;

    sget-object v15, Ldgd;->a:Ldgd;

    .line 13
    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v10, Ldgc;->m:Ldgc;

    new-instance v3, Ldgc;

    sget-object v15, Ldgd;->h:Ldgd;

    .line 14
    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v3, Ldgc;->n:Ldgc;

    new-instance v6, Ldgc;

    sget-object v8, Ldgd;->a:Ldgd;

    .line 15
    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v6, Ldgc;->o:Ldgc;

    new-instance v3, Ldgc;

    sget-object v8, Ldgd;->b:Ldgd;

    .line 16
    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v3, Ldgc;->p:Ldgc;

    new-instance v6, Ldgc;

    sget-object v8, Ldgd;->a:Ldgd;

    .line 17
    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v6, Ldgc;->q:Ldgc;

    new-instance v8, Ldgc;

    sget-object v15, Ldgd;->b:Ldgd;

    .line 18
    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Ldgc;-><init>(Ljava/lang/String;ILdgd;I)V

    sput-object v8, Ldgc;->r:Ldgc;

    const/16 v10, 0x12

    new-array v10, v10, [Ldgc;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Ldgc;->u:[Ldgc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILdgd;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ldgc;->s:Ldgd;

    iput p4, p0, Ldgc;->t:I

    return-void
.end method

.method public static values()[Ldgc;
    .locals 1

    .line 1
    sget-object v0, Ldgc;->u:[Ldgc;

    invoke-virtual {v0}, [Ldgc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldgc;

    return-object v0
.end method
