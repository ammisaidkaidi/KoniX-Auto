.class public final Lcma;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(IJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcma;->a:Ljava/nio/ByteBuffer;

    iput p1, p0, Lcma;->b:I

    iput-wide p2, p0, Lcma;->c:J

    return-void
.end method
