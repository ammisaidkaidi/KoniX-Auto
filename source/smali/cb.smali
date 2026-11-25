.class public Lcb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lvi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    sput-object v0, Lcb;->a:Lvi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Lcb;->a:Lvi;

    invoke-virtual {v0, p0}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi;

    if-nez v1, :cond_0

    new-instance v1, Lvi;

    .line 2
    invoke-direct {v1}, Lvi;-><init>()V

    .line 3
    invoke-virtual {v0, p0, v1}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-virtual {v1, p1, p0}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lbr;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
