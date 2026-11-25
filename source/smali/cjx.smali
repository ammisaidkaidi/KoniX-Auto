.class public final Lcjx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public final d:Lcmo;


# direct methods
.method public constructor <init>(Lcmo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcjx;->b:I

    iput v0, p0, Lcjx;->c:I

    iput-object p1, p0, Lcjx;->d:Lcmo;

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lcjx;->a:[B

    return-void
.end method
