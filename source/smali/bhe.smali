.class public final Lbhe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhe;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbhe;->b()Lbhd;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbhd;
    .locals 1

    .line 1
    iget-object v0, p0, Lbhe;->a:Ldny;

    check-cast v0, Lbru;

    invoke-virtual {v0}, Lbru;->b()Lcor;

    new-instance v0, Lbhd;

    invoke-direct {v0}, Lbhd;-><init>()V

    return-object v0
.end method
