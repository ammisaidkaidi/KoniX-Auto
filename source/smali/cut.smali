.class final Lcut;
.super Ljava/util/AbstractSet;
.source "PG"


# instance fields
.field final synthetic a:Lcuv;


# direct methods
.method public constructor <init>(Lcuv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcut;->a:Lcuv;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcus;

    invoke-direct {v0, p0}, Lcus;-><init>(Lcut;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcut;->a:Lcuv;

    iget v0, v0, Lcuv;->b:I

    return v0
.end method
