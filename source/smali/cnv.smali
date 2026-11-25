.class Lcnv;
.super Lew;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lew;-><init>([B)V

    const-string v0, "CharMatcher.none()"

    iput-object v0, p0, Lcnv;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcnv;->a:Ljava/lang/String;

    return-object v0
.end method
