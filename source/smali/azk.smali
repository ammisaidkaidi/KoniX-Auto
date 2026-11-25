.class public final synthetic Lazk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BooleanSupplier;


# static fields
.field public static final synthetic a:Lazk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lazk;

    invoke-direct {v0}, Lazk;-><init>()V

    sput-object v0, Lazk;->a:Lazk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    sget-object v0, Lazm;->a:Lcsz;

    const/4 v0, 0x1

    return v0
.end method
