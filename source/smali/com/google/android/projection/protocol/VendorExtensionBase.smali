.class public abstract Lcom/google/android/projection/protocol/VendorExtensionBase;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclk;


# instance fields
.field private mNativeVendorExtensionBase:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/projection/protocol/VendorExtensionBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private native nativeInit(IJ)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/VendorExtensionBase;->mNativeVendorExtensionBase:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeInit(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract getPackageWhitelist()[Ljava/lang/String;
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method public native nativeSend([B)V
.end method

.method protected abstract onMessage([B)I
.end method
