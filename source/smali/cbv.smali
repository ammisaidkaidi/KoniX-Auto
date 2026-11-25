.class public final Lcbv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcbv;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcbv;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcbv;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final a(F)Lcbu;
    .locals 2

    .line 1
    new-instance v0, Lcbu;

    iget-object v1, p0, Lcbv;->a:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Random;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcbu;-><init>(Ljava/util/Random;F)V

    return-object v0
.end method
