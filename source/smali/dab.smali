.class public Ldab;
.super Lcyp;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcyp;-><init>()V

    return-void
.end method

.method public static q(Ldag;)Ldab;
    .locals 1

    .line 1
    instance-of v0, p0, Ldab;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ldab;

    goto :goto_0

    :cond_0
    new-instance v0, Lczs;

    .line 3
    invoke-direct {v0, p0}, Lczs;-><init>(Ldag;)V

    move-object p0, v0

    .line 2
    :goto_0
    return-object p0
.end method
