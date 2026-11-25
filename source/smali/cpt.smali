.class public final Lcpt;
.super Lcqz;
.source "PG"


# static fields
.field public static final a:Lcpt;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcpt;

    invoke-direct {v0}, Lcpt;-><init>()V

    sput-object v0, Lcpt;->a:Lcpt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcse;->a:Lcqk;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcqz;-><init>(Lcqk;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcpt;->a:Lcpt;

    return-object v0
.end method
