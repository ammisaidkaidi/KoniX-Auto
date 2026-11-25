.class public final Ldlm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldll;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;

.field public static final c:Lcgj;

.field public static final d:Lcgj;

.field public static final e:Lcgj;

.field public static final f:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.libraries.consentverifier"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    const-string v1, "CollectionBasisVerifierFeatures__enable_all_features"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->a:Lcgj;

    .line 2
    const-string v1, "CollectionBasisVerifierFeatures__enable_logging"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->b:Lcgj;

    .line 3
    const-string v1, "CollectionBasisVerifierFeatures__enable_using_log_verifier_result"

    invoke-virtual {v0, v1, v3}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->c:Lcgj;

    .line 4
    const-string v1, "CollectionBasisVerifierFeatures__failure_log_cooldown_period_ms"

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v0, v1, v3, v4}, Lcgo;->a(Ljava/lang/String;J)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->d:Lcgj;

    .line 5
    const-string v1, "CollectionBasisVerifierFeatures__max_stack_trace_size"

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Lcgo;->a(Ljava/lang/String;J)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->e:Lcgj;

    .line 6
    const-string v1, "CollectionBasisVerifierFeatures__min_app_version_code_to_log"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v3, v4}, Lcgo;->a(Ljava/lang/String;J)Lcgj;

    move-result-object v1

    sput-object v1, Ldlm;->f:Lcgj;

    .line 7
    const-string v1, "CollectionBasisVerifierFeatures__use_packed_proto"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    return-void
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
    sget-object v0, Ldlm;->d:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    sget-object v0, Ldlm;->e:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 1
    sget-object v0, Ldlm;->f:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-object v0, Ldlm;->a:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Ldlm;->b:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Ldlm;->c:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
