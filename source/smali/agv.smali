.class public interface abstract Lagv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lagu;

.field public static final b:Lagt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    sput-object v0, Lagv;->a:Lagu;

    new-instance v0, Lagt;

    invoke-direct {v0}, Lagt;-><init>()V

    sput-object v0, Lagv;->b:Lagt;

    return-void
.end method
