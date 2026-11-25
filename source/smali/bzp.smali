.class public final Lbzp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcoc;

.field public b:Lcoc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcns;->a:Lcns;

    iput-object p1, p0, Lbzp;->a:Lcoc;

    sget-object p1, Lcns;->a:Lcns;

    iput-object p1, p0, Lbzp;->b:Lcoc;

    return-void
.end method
