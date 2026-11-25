.class public final Lali;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lahx;

.field private final b:Ljava/lang/String;

.field private final c:Lfw;


# direct methods
.method public constructor <init>(Lahx;Ljava/lang/String;Lfw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lali;->a:Lahx;

    iput-object p2, p0, Lali;->b:Ljava/lang/String;

    iput-object p3, p0, Lali;->c:Lfw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lali;->a:Lahx;

    iget-object v0, v0, Lahx;->f:Lahf;

    iget-object v1, p0, Lali;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lahf;->g(Ljava/lang/String;)Z

    return-void
.end method
