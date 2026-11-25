.class final Lbwb;
.super Lbvz;
.source "PG"


# static fields
.field public static final a:Lbwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbwb;

    invoke-direct {v0}, Lbwb;-><init>()V

    sput-object v0, Lbwb;->a:Lbwb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lder;
    .locals 0

    .line 1
    check-cast p2, Landroid/os/health/TimerStat;

    .line 2
    invoke-static {p1, p2}, Lbvs;->j(Ljava/lang/String;Landroid/os/health/TimerStat;)Ldor;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lder;Lder;)Lder;
    .locals 0

    .line 1
    check-cast p1, Ldor;

    check-cast p2, Ldor;

    .line 2
    invoke-static {p1, p2}, Lbvs;->i(Ldor;Ldor;)Ldor;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lder;)Ljava/lang/String;
    .locals 2

    .line 1
    check-cast p1, Ldor;

    iget-object v0, p1, Ldor;->d:Ldom;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ldom;->d:Ldom;

    :cond_0
    iget v0, v0, Ldom;->a:I

    and-int/lit8 v0, v0, 0x2

    iget-object p1, p1, Ldor;->d:Ldom;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Ldom;->d:Ldom;

    :cond_1
    iget-object p1, p1, Ldom;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Ldom;->d:Ldom;

    :cond_3
    iget-wide v0, p1, Ldom;->b:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    return-object p1
.end method
