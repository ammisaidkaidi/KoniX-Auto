.class public final Lbgj;
.super Lcom/google/android/projection/protocol/VendorExtensionBase;
.source "PG"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    sput-object v0, Lbgj;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/VendorExtensionBase;-><init>()V

    iput-object p1, p0, Lbgj;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final getPackageWhitelist()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lbgj;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected final getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.projection.protocol.HotwordVendorExtension"

    return-object v0
.end method

.method protected final onMessage([B)I
    .locals 3

    .line 1
    iget-object v0, p0, Lbgj;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.projection.protocol.action.ACTION_HOTWORD_UPSTREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.projection.protocol.extra.EXTRA_HOTWORD_UPSTREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    array-length p1, p1

    return p1
.end method
