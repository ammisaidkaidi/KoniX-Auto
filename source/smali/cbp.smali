.class public final Lcbp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ldny;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcbp;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbp;->b:Landroid/content/Context;

    iput-object p2, p0, Lcbp;->c:Ldny;

    return-void
.end method
