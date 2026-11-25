.class final Luv;
.super Ljava/util/AbstractSet;
.source "PG"


# instance fields
.field final synthetic a:Lvb;


# direct methods
.method public constructor <init>(Lvb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luv;->a:Lvb;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Luy;

    iget-object v1, p0, Luv;->a:Lvb;

    invoke-direct {v0, v1}, Luy;-><init>(Lvb;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Luv;->a:Lvb;

    iget v0, v0, Lvb;->j:I

    return v0
.end method
