.class public final Lcll;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcll;->a:Ljava/lang/String;

    iput-object v0, p0, Lcll;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcll;->d:I

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcll;->c:[I

    return-void
.end method
