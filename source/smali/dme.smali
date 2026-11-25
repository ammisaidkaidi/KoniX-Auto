.class public final Ldme;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldmd;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;

.field public static final c:Lcei;

.field public static final d:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    invoke-virtual {v0}, Lceg;->b()Lceg;

    move-result-object v0

    .line 2
    const-string v1, "Registration__baseline_cl_in_registration_common"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldme;->a:Lcei;

    .line 3
    const-string v1, "Registration__catch_declarative_registration_exceptions"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldme;->b:Lcei;

    .line 4
    const-string v1, "Registration__enable_baseline_cl"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 5
    const-string v1, "Registration__enable_delete_runtime_properties"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldme;->c:Lcei;

    .line 6
    const-string v1, "Registration__enable_heterodyne_info_in_manual"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldme;->d:Lcei;

    .line 7
    const-string v1, "Registration__enable_registration_info_tracking"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 8
    const-string v1, "Registration__remove_registration_on_downgrades"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 9
    const-string v1, "Registration__suppress_partial_registration_error"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

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
    sget-object v0, Ldme;->a:Lcei;

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
    sget-object v0, Ldme;->b:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Ldme;->c:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-object v0, Ldme;->d:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
