.class public final synthetic Lbbu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:Lbbu;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbbu;

    invoke-direct {v0}, Lbbu;-><init>()V

    sput-object v0, Lbbu;->a:Lbbu;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lbzv;I)Lcom/google/android/projection/protocol/VideoSink;
    .locals 2

    new-instance v0, Lcom/google/android/projection/protocol/VideoSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/projection/protocol/VideoSink;-><init>(Lbzv;I[B)V

    return-object v0
.end method
