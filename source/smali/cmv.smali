.class final Lcmv;
.super Lcyp;
.source "PG"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcyp;-><init>()V

    iput p1, p0, Lcmv;->a:I

    return-void
.end method


# virtual methods
.method protected final d(Ldag;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcyp;->d(Ldag;)Z

    move-result p1

    return p1
.end method
