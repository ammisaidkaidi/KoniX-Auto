.class public final Ldim;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldil;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.apps.auto.aareceiver"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    const-string v1, "45355406"

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcgo;->a(Ljava/lang/String;J)Lcgj;

    move-result-object v1

    sput-object v1, Ldim;->a:Lcgj;

    .line 2
    const-string v1, "45355405"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v0

    sput-object v0, Ldim;->b:Lcgj;

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
    sget-object v0, Ldim;->a:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldim;->b:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
