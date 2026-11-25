.class public final Lbhf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhf;->a:Ldny;

    iput-object p2, p0, Lbhf;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbhf;->b()Lcbv;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcbv;
    .locals 3

    .line 1
    iget-object v0, p0, Lbhf;->b:Ldny;

    new-instance v1, Lcbv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcbv;-><init>(Ldny;[B)V

    return-object v1
.end method
