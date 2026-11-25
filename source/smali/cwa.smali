.class public final Lcwa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final b:Lcwa;


# instance fields
.field public final c:Lcvy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbup;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbup;-><init>(I)V

    sput-object v0, Lcwa;->a:Ljava/util/Comparator;

    new-instance v0, Lcwa;

    new-instance v1, Lcvy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcvy;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcwa;-><init>(Lcvy;)V

    sput-object v0, Lcwa;->b:Lcwa;

    return-void
.end method

.method public constructor <init>(Lcvy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwa;->c:Lcvy;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcwa;->c:Lcvy;

    invoke-virtual {v0}, Lcvy;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcwa;

    if-eqz v0, :cond_0

    check-cast p1, Lcwa;

    iget-object p1, p1, Lcwa;->c:Lcvy;

    iget-object v0, p0, Lcwa;->c:Lcvy;

    invoke-virtual {p1, v0}, Lcvy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcwa;->c:Lcvy;

    invoke-virtual {v0}, Lcvy;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcwa;->c:Lcvy;

    invoke-virtual {v0}, Lcvy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
