.class public final Lcqt;
.super Lcow;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcqt;

.field public static final b:Lcqt;


# instance fields
.field private final transient c:Lcqh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcqt;

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcqt;-><init>(Lcqh;)V

    sput-object v0, Lcqt;->a:Lcqt;

    new-instance v0, Lcqt;

    .line 2
    sget-object v1, Lcrv;->a:Lcrv;

    invoke-static {v1}, Lcqh;->q(Ljava/lang/Object;)Lcqh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcqt;-><init>(Lcqh;)V

    sput-object v0, Lcqt;->b:Lcqt;

    return-void
.end method

.method public constructor <init>(Lcqh;)V
    .locals 0

    invoke-direct {p0}, Lcow;-><init>()V

    iput-object p1, p0, Lcqt;->c:Lcqh;

    return-void
.end method

.method public static a()Lcqr;
    .locals 1

    .line 1
    new-instance v0, Lcqr;

    invoke-direct {v0}, Lcqr;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcqt;->c:Lcqh;

    invoke-virtual {v0}, Lcqh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcsf;->a:Lcsf;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcsg;

    iget-object v1, p0, Lcqt;->c:Lcqh;

    invoke-static {}, Lcrv;->a()Lcrt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcsg;-><init>(Lcqh;Ljava/util/Comparator;)V

    .line 2
    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcqs;

    iget-object v1, p0, Lcqt;->c:Lcqh;

    invoke-direct {v0, v1}, Lcqs;-><init>(Lcqh;)V

    return-object v0
.end method
