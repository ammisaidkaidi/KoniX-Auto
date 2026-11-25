.class public final Ldmh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldmg;


# static fields
.field public static final a:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    const-string v1, "gms:phenotype:"

    invoke-virtual {v0, v1}, Lceg;->c(Ljava/lang/String;)Lceg;

    move-result-object v0

    .line 2
    const-string v1, "disable_gcm_interaction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 3
    const-string v1, "enable_gcm_push"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 4
    const-string v1, "enable_sync_after"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v0

    sput-object v0, Ldmh;->a:Lcei;

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
    sget-object v0, Ldmh;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
