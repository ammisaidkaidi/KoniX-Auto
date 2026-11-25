.class public final Lbqg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lcqw;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs"

    const-string v1, "https://tac.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs"

    invoke-static {v0, v1}, Lcqw;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lbqg;->b:Lcqw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs"

    if-nez v0, :cond_0

    iput-object v1, p0, Lbqg;->a:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lbqg;->b:Lcqw;

    .line 2
    invoke-virtual {v0, v1}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-object v1, p0, Lbqg;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Invalid URL provided for Heterodyne: https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs; falling back to known valid URL: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "HeterodyneServiceUrl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
