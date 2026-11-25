.class final Lcnb;
.super Lcnd;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcnd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcng;
    .locals 2

    .line 1
    sget-object v0, Lcnh;->a:Lcni;

    .line 2
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcnr;->g(Ljava/lang/String;Lcni;Z)Lcng;

    move-result-object p1

    return-object p1
.end method
