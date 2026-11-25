.class final Lcnw;
.super Lcnv;
.source "PG"


# static fields
.field static final a:Lcnw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcnw;

    invoke-direct {v0}, Lcnw;-><init>()V

    sput-object v0, Lcnw;->a:Lcnw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcnv;-><init>()V

    return-void
.end method
