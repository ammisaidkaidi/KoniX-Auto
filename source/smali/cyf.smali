.class final Lcyf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcyf;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcyf;

    new-instance v1, Lcye;

    invoke-direct {v1}, Lcye;-><init>()V

    invoke-direct {v0, v1}, Lcyf;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcyf;->a:Lcyf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcyf;->b:Ljava/lang/Throwable;

    return-void
.end method
