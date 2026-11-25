.class public final Lcsz;
.super Lcsv;
.source "PG"


# static fields
.field public static final b:Lcsy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcsy;

    invoke-direct {v0}, Lcsy;-><init>()V

    sput-object v0, Lcsz;->b:Lcsy;

    return-void
.end method

.method public constructor <init>(Lcuc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcsv;-><init>(Lcuc;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Lcsz;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "injected class name is empty"

    invoke-static {v0, v1}, Lhf;->v(ZLjava/lang/String;)V

    new-instance v0, Lcsz;

    .line 2
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcva;->d(Ljava/lang/String;)Lcuc;

    move-result-object p0

    invoke-direct {v0, p0}, Lcsz;-><init>(Lcuc;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/logging/Level;)Lctq;
    .locals 0

    invoke-virtual {p0, p1}, Lcsz;->f(Ljava/util/logging/Level;)Lcsx;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/logging/Level;)Lcsx;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcsv;->e(Ljava/util/logging/Level;)Z

    move-result v0

    iget-object v1, p0, Lcsv;->a:Lcuc;

    invoke-virtual {v1}, Lcuc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcva;->n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_0

    sget-object p1, Lcsz;->b:Lcsy;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcsw;

    invoke-direct {v0, p0, p1}, Lcsw;-><init>(Lcsz;Ljava/util/logging/Level;)V

    return-object v0
.end method
