.class public abstract Lcva;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "cvk"

    sput-object v0, Lcva;->a:Ljava/lang/String;

    const-string v1, "com.google.common.flogger.backend.google.GooglePlatform"

    sput-object v1, Lcva;->b:Ljava/lang/String;

    const-string v2, "com.google.common.flogger.backend.system.DefaultPlatform"

    sput-object v2, Lcva;->c:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcva;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget-object v0, Lcwo;->a:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwo;

    iget v0, v0, Lcwo;->b:I

    return v0
.end method

.method public static b()J
    .locals 2

    .line 1
    sget-object v0, Lcuy;->a:Lcva;

    invoke-virtual {v0}, Lcva;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Ljava/lang/String;)Lcuc;
    .locals 1

    .line 1
    sget-object v0, Lcuy;->a:Lcva;

    invoke-virtual {v0, p0}, Lcva;->e(Ljava/lang/String;)Lcuc;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lcug;
    .locals 1

    .line 1
    invoke-static {}, Lcva;->i()Lcvs;

    move-result-object v0

    invoke-virtual {v0}, Lcvs;->a()Lcug;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcuz;
    .locals 1

    .line 1
    sget-object v0, Lcuy;->a:Lcva;

    invoke-virtual {v0}, Lcva;->h()Lcuz;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lcvs;
    .locals 1

    .line 1
    sget-object v0, Lcuy;->a:Lcva;

    invoke-virtual {v0}, Lcva;->j()Lcvs;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcwa;
    .locals 1

    .line 1
    invoke-static {}, Lcva;->i()Lcvs;

    move-result-object v0

    invoke-virtual {v0}, Lcvs;->b()Lcwa;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcuy;->a:Lcva;

    invoke-virtual {v0}, Lcva;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcva;->i()Lcvs;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcvs;->c(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic o()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcva;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected c()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract e(Ljava/lang/String;)Lcuc;
.end method

.method protected abstract h()Lcuz;
.end method

.method protected j()Lcvs;
    .locals 1

    .line 1
    sget-object v0, Lcvu;->a:Lcvs;

    return-object v0
.end method

.method protected abstract m()Ljava/lang/String;
.end method
