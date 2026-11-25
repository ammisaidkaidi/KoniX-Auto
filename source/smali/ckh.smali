.class public final enum Lckh;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lckh;

.field public static final enum b:Lckh;

.field private static final synthetic d:[Lckh;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lckh;

    const-string v1, "NAV_FOCUS_NATIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lckh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lckh;->a:Lckh;

    new-instance v1, Lckh;

    .line 2
    const-string v4, "NAV_FOCUS_PROJECTED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lckh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lckh;->b:Lckh;

    new-array v4, v5, [Lckh;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lckh;->d:[Lckh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lckh;->c:I

    return-void
.end method

.method public static b(I)Lckh;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lckh;->b:Lckh;

    return-object p0

    :pswitch_1
    sget-object p0, Lckh;->a:Lckh;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lckh;
    .locals 1

    .line 1
    sget-object v0, Lckh;->d:[Lckh;

    invoke-virtual {v0}, [Lckh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckh;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lckh;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lckh;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
