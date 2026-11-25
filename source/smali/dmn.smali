.class public final Ldmn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldmm;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    invoke-virtual {v0}, Lceg;->b()Lceg;

    move-result-object v0

    .line 2
    const-string v1, "UsePackageConfig__enable_auto_subpackage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmn;->a:Lcei;

    .line 3
    const-string v1, "UsePackageConfig__enable_experiment_injection"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 4
    const-string v1, "UsePackageConfig__enable_logging_config"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v0

    sput-object v0, Ldmn;->b:Lcei;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Ldmn;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldmn;->b:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
