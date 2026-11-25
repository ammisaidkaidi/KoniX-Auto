.class final Lccf;
.super Lcci;
.source "PG"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Ldpy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcci;-><init>(Ldpy;)V

    iput-boolean p2, p0, Lccf;->a:Z

    return-void
.end method

.method private final f(Ljava/lang/Long;)Ldpy;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccf;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcci;->e(Ljava/lang/Long;)Ldpy;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcci;->d()Ldpy;

    move-result-object p1

    .line 1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccf;->f(Ljava/lang/Long;)Ldpy;

    move-result-object p1

    .line 2
    sget-object v0, Ldpy;->d:Ldpy;

    invoke-virtual {p1, v0}, Lddk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    iget-wide v0, p1, Ldpy;->b:J

    return-wide v0
.end method

.method public final b(Ljava/lang/Long;)Ldpy;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccf;->f(Ljava/lang/Long;)Ldpy;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lccf;->a:Z

    return v0
.end method
