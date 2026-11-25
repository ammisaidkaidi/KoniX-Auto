.class final Ldfk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldfi;

    invoke-direct {v0}, Ldfi;-><init>()V

    sput-object v0, Ldfk;->a:Ljava/util/Iterator;

    new-instance v0, Ldfj;

    invoke-direct {v0}, Ldfj;-><init>()V

    sput-object v0, Ldfk;->b:Ljava/lang/Iterable;

    return-void
.end method
