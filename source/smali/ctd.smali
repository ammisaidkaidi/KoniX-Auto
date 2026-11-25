.class public final Lctd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lctt;

.field public static final b:Lctt;

.field public static final c:Lctt;

.field public static final d:Lctt;

.field public static final e:Lctt;

.field public static final f:Lctt;

.field public static final g:Lctt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "cause"

    invoke-static {v1, v0}, Lctt;->c(Ljava/lang/String;Ljava/lang/Class;)Lctt;

    move-result-object v0

    sput-object v0, Lctd;->a:Lctt;

    const-class v0, Ljava/lang/Integer;

    .line 2
    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lctt;->c(Ljava/lang/String;Ljava/lang/Class;)Lctt;

    move-result-object v0

    sput-object v0, Lctd;->b:Lctt;

    const-class v0, Lctn;

    .line 3
    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lctt;->c(Ljava/lang/String;Ljava/lang/Class;)Lctt;

    move-result-object v0

    sput-object v0, Lctd;->c:Lctt;

    new-instance v0, Lctb;

    const-class v1, Ljava/lang/Object;

    .line 4
    invoke-direct {v0, v1}, Lctb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lctd;->d:Lctt;

    const-class v0, Ljava/lang/Boolean;

    .line 5
    const-string v1, "forced"

    invoke-static {v1, v0}, Lctt;->c(Ljava/lang/String;Ljava/lang/Class;)Lctt;

    move-result-object v0

    sput-object v0, Lctd;->e:Lctt;

    new-instance v0, Lctc;

    const-class v1, Lcwa;

    .line 6
    invoke-direct {v0, v1}, Lctc;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lctd;->f:Lctt;

    const-class v0, Lctv;

    .line 7
    const-string v1, "stack_size"

    invoke-static {v1, v0}, Lctt;->c(Ljava/lang/String;Ljava/lang/Class;)Lctt;

    move-result-object v0

    sput-object v0, Lctd;->g:Lctt;

    return-void
.end method
