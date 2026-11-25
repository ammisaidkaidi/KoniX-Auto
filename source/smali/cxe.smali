.class public Lcxe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Lcxe;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lcwz;

    .line 2
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base64()"

    invoke-direct {v1, v3, v2}, Lcwz;-><init>(Ljava/lang/String;[C)V

    new-instance v2, Lcxd;

    .line 3
    invoke-direct {v2, v1, v0}, Lcxd;-><init>(Lcwz;Ljava/lang/Character;)V

    iget-object v1, v1, Lcwz;->b:[C

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x40

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lex;->l(Z)V

    new-instance v1, Lcwz;

    .line 5
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v6, "base64Url()"

    invoke-direct {v1, v6, v5}, Lcwz;-><init>(Ljava/lang/String;[C)V

    new-instance v5, Lcxd;

    .line 6
    invoke-direct {v5, v1, v0}, Lcxd;-><init>(Lcwz;Ljava/lang/Character;)V

    iget-object v1, v1, Lcwz;->b:[C

    array-length v1, v1

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-static {v2}, Lex;->l(Z)V

    new-instance v1, Lcxd;

    .line 8
    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v1, v2, v3, v0}, Lcxd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v1, Lcxd;

    .line 9
    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v1, v2, v3, v0}, Lcxd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcxa;

    new-instance v1, Lcwz;

    .line 10
    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, Lcwz;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lcxa;-><init>(Lcwz;)V

    sput-object v0, Lcxe;->d:Lcxe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
