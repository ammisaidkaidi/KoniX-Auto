.class public final Lcdk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcdj;

.field public static final b:Lcdj;

.field public static final c:Lcdj;

.field private static final d:Lcoi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2f

    invoke-static {v0}, Lcoi;->b(C)Lcoi;

    move-result-object v0

    invoke-virtual {v0}, Lcoi;->a()Lcoi;

    move-result-object v0

    sput-object v0, Lcdk;->d:Lcoi;

    new-instance v0, Lcdi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcdi;-><init>(I)V

    sput-object v0, Lcdk;->a:Lcdj;

    new-instance v0, Lcdi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcdi;-><init>(I)V

    sput-object v0, Lcdk;->b:Lcdj;

    new-instance v0, Lcdi;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcdi;-><init>(I)V

    sput-object v0, Lcdk;->c:Lcdj;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lcdk;->d:Lcoi;

    invoke-virtual {v0, p0}, Lcoi;->e(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcgt;->b:Lcgt;

    .line 2
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lcrn;

    .line 3
    invoke-direct {v1, p0, v0}, Lcrn;-><init>(Ljava/util/List;Lcny;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcrp;

    .line 4
    invoke-direct {v1, p0, v0}, Lcrp;-><init>(Ljava/util/List;Lcny;)V

    .line 3
    :goto_0
    return-object v1
.end method

.method public static b(Lcdj;Ldeq;)V
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lcdj;->a(Ldeq;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p0, p1}, Lcdj;->b(Ldeq;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {v1}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcdj;->c(Ldeq;Ljava/lang/Long;)V

    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Lcdj;->c(Ldeq;Ljava/lang/Long;)V

    .line 6
    :goto_0
    invoke-interface {p0, p1}, Lcdj;->d(Ldeq;)V

    return-void
.end method
