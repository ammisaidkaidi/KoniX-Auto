.class public final Ldmb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldma;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;

.field public static final c:Lcei;

.field public static final d:Lcei;

.field public static final e:Lcei;

.field public static final f:Lcei;

.field public static final g:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    const-string v1, "gms:phenotype:"

    invoke-virtual {v0, v1}, Lceg;->c(Ljava/lang/String;)Lceg;

    move-result-object v0

    invoke-virtual {v0}, Lceg;->a()Lceg;

    move-result-object v0

    .line 2
    const-string v1, "clear_reset_blacklist"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lceg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v1, "configurator:auth_token_service"

    const-string v2, "oauth2:https://www.googleapis.com/auth/experimentsandconfigs"

    invoke-virtual {v0, v1, v2}, Lceg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "configurator:service_url"

    const-string v2, "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs"

    invoke-virtual {v0, v1, v2}, Lceg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v1, "debug_allow_http"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->a:Lcei;

    .line 6
    const-string v1, "debug_clear_heterodyne_tag"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->b:Lcei;

    .line 7
    const-string v1, "PhenotypeFeature__enable_broadcast_logging"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 8
    const-string v1, "PhenotypeFeature__enable_committed_version_logging"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 9
    const-string v1, "enableDebugService"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 10
    const-string v1, "enable_flag_deltas"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->c:Lcei;

    .line 11
    const-string v1, "enable_verbose_syncer_logging"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->d:Lcei;

    .line 12
    const-string v1, "gcm_subscription_smear_ms"

    const-wide/32 v4, 0xa4cb800

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 13
    const-string v1, "interval_flex_seconds"

    const-wide/16 v4, 0x708

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 14
    const-string v1, "phenotype_api_wait_ms"

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 15
    const-string v1, "PhenotypeFeature__process_stable_write_timeout_milliseconds"

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 16
    const-string v1, "retry_after_max_seconds"

    const-wide/32 v4, 0x15180

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 17
    const-string v1, "retry_after_min_seconds"

    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 18
    const-string v1, "PhenotypeFeature__return_server_token_when_overrides_present"

    invoke-virtual {v0, v1, v3}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->e:Lcei;

    .line 19
    const-string v1, "sync_retry_delay_seconds"

    const-wide/16 v4, 0xe10

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 20
    const-string v1, "PhenotypeFeature__trace_module_operations"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->f:Lcei;

    .line 21
    const-string v1, "vacuum_change_count_mod"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v1

    sput-object v1, Ldmb;->g:Lcei;

    :try_start_0
    const-string v1, "whitelisted_apps_for_flag_overrides"

    const/16 v4, 0x1f

    new-array v4, v4, [B

    const/16 v5, 0xa

    aput-byte v5, v4, v2

    const/16 v6, 0x1d

    aput-byte v6, v4, v3

    const/4 v3, 0x2

    const/16 v7, 0x63

    aput-byte v7, v4, v3

    const/4 v3, 0x3

    const/16 v7, 0x6f

    aput-byte v7, v4, v3

    const/4 v3, 0x4

    const/16 v8, 0x6d

    aput-byte v8, v4, v3

    const/4 v3, 0x5

    const/16 v9, 0x2e

    aput-byte v9, v4, v3

    const/4 v3, 0x6

    const/16 v10, 0x67

    aput-byte v10, v4, v3

    const/4 v3, 0x7

    aput-byte v7, v4, v3

    const/16 v3, 0x8

    aput-byte v7, v4, v3

    const/16 v3, 0x9

    aput-byte v10, v4, v3

    const/16 v3, 0x6c

    aput-byte v3, v4, v5

    const/16 v5, 0xb

    const/16 v11, 0x65

    aput-byte v11, v4, v5

    const/16 v5, 0xc

    aput-byte v9, v4, v5

    const/16 v5, 0xd

    const/16 v12, 0x61

    aput-byte v12, v4, v5

    const/16 v5, 0xe

    const/16 v13, 0x6e

    aput-byte v13, v4, v5

    const/16 v5, 0xf

    const/16 v13, 0x64

    aput-byte v13, v4, v5

    const/16 v5, 0x10

    const/16 v14, 0x72

    aput-byte v14, v4, v5

    const/16 v5, 0x11

    aput-byte v7, v4, v5

    const/16 v5, 0x12

    const/16 v7, 0x69

    aput-byte v7, v4, v5

    const/16 v5, 0x13

    aput-byte v13, v4, v5

    const/16 v5, 0x14

    aput-byte v9, v4, v5

    const/16 v5, 0x15

    const/16 v7, 0x70

    aput-byte v7, v4, v5

    const/16 v5, 0x16

    aput-byte v3, v4, v5

    const/16 v3, 0x17

    aput-byte v12, v4, v3

    const/16 v3, 0x18

    const/16 v5, 0x79

    aput-byte v5, v4, v3

    const/16 v3, 0x19

    aput-byte v9, v4, v3

    const/16 v3, 0x1a

    aput-byte v10, v4, v3

    const/16 v3, 0x1b

    aput-byte v12, v4, v3

    const/16 v3, 0x1c

    aput-byte v8, v4, v3

    aput-byte v11, v4, v6

    const/16 v3, 0x1e

    const/16 v5, 0x73

    aput-byte v5, v4, v3

    .line 22
    sget-object v3, Ldgp;->b:Ldgp;

    .line 23
    invoke-static {v3, v4}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v3

    check-cast v3, Ldgp;

    sget-object v4, Lbpu;->g:Lbpu;

    .line 24
    invoke-virtual {v0, v1, v3, v4}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    nop

    .line 26
    const-string v1, "PhenotypeFeature__write_process_stable_snapshot"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    return-void

    .line 24
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 25
    const-string v1, "Could not parse proto flag \"whitelisted_apps_for_flag_overrides\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    sget-object v0, Ldmb;->g:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldmb;->a:Lcei;

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
    sget-object v0, Ldmb;->b:Lcei;

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
    sget-object v0, Ldmb;->c:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Ldmb;->d:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Ldmb;->e:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Ldmb;->f:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
