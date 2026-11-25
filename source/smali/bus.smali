.class public final Lbus;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbus;


# instance fields
.field public final b:[Lbuv;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbus;

    const/4 v1, 0x0

    new-array v1, v1, [Lbuv;

    invoke-direct {v0, v1}, Lbus;-><init>([Lbuv;)V

    sput-object v0, Lbus;->a:Lbus;

    return-void
.end method

.method public constructor <init>([Lbuv;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbus;->b:[Lbuv;

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lbus;->c:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lbus;->c:[I

    .line 3
    aget-object v3, p1, v1

    iget v3, v3, Lbuv;->b:I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
