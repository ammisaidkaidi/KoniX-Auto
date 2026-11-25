.class public final Ldlj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldli;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lceg;

    const-string v1, "com.google.android.gms.auth_account"

    invoke-static {v1}, Lcdw;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lceg;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lceg;->b()Lceg;

    move-result-object v0

    .line 3
    const-string v1, "getTokenRefactor__account_data_service_sample_percentage"

    invoke-virtual {v0, v1}, Lceg;->h(Ljava/lang/String;)V

    .line 4
    const-string v1, "getTokenRefactor__account_data_service_tokenAPI_usable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 5
    const-string v1, "getTokenRefactor__account_manager_timeout_seconds"

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v1, v3, v4}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 6
    const-string v1, "getTokenRefactor__android_id_shift"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v5, v6}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 7
    const-string v1, "getTokenRefactor__authenticator_logic_improved"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    :try_start_0
    const-string v1, "getTokenRefactor__blocked_packages"

    const/16 v6, 0x5a

    new-array v6, v6, [B

    const/16 v7, 0xa

    aput-byte v7, v6, v5

    const/16 v8, 0x13

    aput-byte v8, v6, v2

    const/4 v9, 0x2

    const/16 v10, 0x63

    aput-byte v10, v6, v9

    const/4 v9, 0x3

    const/16 v11, 0x6f

    aput-byte v11, v6, v9

    const/4 v9, 0x4

    const/16 v12, 0x6d

    aput-byte v12, v6, v9

    const/4 v9, 0x5

    const/16 v13, 0x2e

    aput-byte v13, v6, v9

    const/4 v9, 0x6

    const/16 v14, 0x61

    aput-byte v14, v6, v9

    const/4 v9, 0x7

    const/16 v15, 0x6e

    aput-byte v15, v6, v9

    const/16 v9, 0x8

    const/16 v16, 0x64

    aput-byte v16, v6, v9

    const/16 v9, 0x9

    const/16 v17, 0x72

    aput-byte v17, v6, v9

    aput-byte v11, v6, v7

    const/16 v9, 0xb

    const/16 v18, 0x69

    aput-byte v18, v6, v9

    const/16 v9, 0xc

    aput-byte v16, v6, v9

    const/16 v9, 0xd

    aput-byte v13, v6, v9

    const/16 v9, 0xe

    const/16 v19, 0x76

    aput-byte v19, v6, v9

    const/16 v9, 0xf

    const/16 v19, 0x65

    aput-byte v19, v6, v9

    const/16 v9, 0x10

    aput-byte v15, v6, v9

    const/16 v9, 0x11

    aput-byte v16, v6, v9

    const/16 v9, 0x12

    aput-byte v18, v6, v9

    aput-byte v15, v6, v8

    const/16 v8, 0x14

    const/16 v9, 0x67

    aput-byte v9, v6, v8

    const/16 v8, 0x15

    aput-byte v7, v6, v8

    const/16 v8, 0x16

    const/16 v20, 0x20

    aput-byte v20, v6, v8

    const/16 v8, 0x17

    aput-byte v10, v6, v8

    const/16 v8, 0x18

    aput-byte v11, v6, v8

    const/16 v8, 0x19

    aput-byte v12, v6, v8

    const/16 v8, 0x1a

    aput-byte v13, v6, v8

    const/16 v8, 0x1b

    aput-byte v9, v6, v8

    const/16 v8, 0x1c

    aput-byte v11, v6, v8

    const/16 v8, 0x1d

    aput-byte v11, v6, v8

    const/16 v8, 0x1e

    aput-byte v9, v6, v8

    const/16 v8, 0x1f

    const/16 v21, 0x6c

    aput-byte v21, v6, v8

    aput-byte v19, v6, v20

    const/16 v8, 0x21

    aput-byte v13, v6, v8

    const/16 v20, 0x22

    aput-byte v14, v6, v20

    const/16 v20, 0x23

    aput-byte v15, v6, v20

    const/16 v20, 0x24

    aput-byte v16, v6, v20

    const/16 v20, 0x25

    aput-byte v17, v6, v20

    const/16 v20, 0x26

    aput-byte v11, v6, v20

    const/16 v20, 0x27

    aput-byte v18, v6, v20

    const/16 v20, 0x28

    aput-byte v16, v6, v20

    const/16 v20, 0x29

    aput-byte v13, v6, v20

    const/16 v20, 0x2a

    aput-byte v14, v6, v20

    const/16 v20, 0x2b

    const/16 v22, 0x70

    aput-byte v22, v6, v20

    const/16 v20, 0x2c

    aput-byte v22, v6, v20

    const/16 v20, 0x2d

    const/16 v23, 0x73

    aput-byte v23, v6, v20

    aput-byte v13, v6, v13

    const/16 v20, 0x2f

    aput-byte v12, v6, v20

    const/16 v20, 0x30

    aput-byte v19, v6, v20

    const/16 v20, 0x31

    aput-byte v19, v6, v20

    const/16 v20, 0x32

    const/16 v24, 0x74

    aput-byte v24, v6, v20

    const/16 v20, 0x33

    aput-byte v18, v6, v20

    const/16 v20, 0x34

    aput-byte v15, v6, v20

    const/16 v20, 0x35

    aput-byte v9, v6, v20

    const/16 v20, 0x36

    aput-byte v23, v6, v20

    const/16 v20, 0x37

    aput-byte v7, v6, v20

    const/16 v7, 0x38

    aput-byte v8, v6, v7

    const/16 v7, 0x39

    aput-byte v10, v6, v7

    const/16 v7, 0x3a

    aput-byte v11, v6, v7

    const/16 v7, 0x3b

    aput-byte v12, v6, v7

    const/16 v7, 0x3c

    aput-byte v13, v6, v7

    const/16 v7, 0x3d

    aput-byte v9, v6, v7

    const/16 v7, 0x3e

    aput-byte v11, v6, v7

    const/16 v7, 0x3f

    aput-byte v11, v6, v7

    const/16 v7, 0x40

    aput-byte v9, v6, v7

    const/16 v7, 0x41

    aput-byte v21, v6, v7

    const/16 v7, 0x42

    aput-byte v19, v6, v7

    const/16 v7, 0x43

    aput-byte v13, v6, v7

    const/16 v7, 0x44

    aput-byte v14, v6, v7

    const/16 v7, 0x45

    aput-byte v15, v6, v7

    const/16 v7, 0x46

    aput-byte v16, v6, v7

    const/16 v7, 0x47

    aput-byte v17, v6, v7

    const/16 v7, 0x48

    aput-byte v11, v6, v7

    const/16 v7, 0x49

    aput-byte v18, v6, v7

    const/16 v7, 0x4a

    aput-byte v16, v6, v7

    const/16 v7, 0x4b

    aput-byte v13, v6, v7

    const/16 v7, 0x4c

    aput-byte v14, v6, v7

    const/16 v7, 0x4d

    aput-byte v22, v6, v7

    const/16 v7, 0x4e

    aput-byte v22, v6, v7

    const/16 v7, 0x4f

    aput-byte v23, v6, v7

    const/16 v7, 0x50

    aput-byte v13, v6, v7

    const/16 v7, 0x51

    aput-byte v12, v6, v7

    const/16 v7, 0x52

    aput-byte v19, v6, v7

    const/16 v7, 0x53

    aput-byte v23, v6, v7

    const/16 v7, 0x54

    aput-byte v23, v6, v7

    const/16 v7, 0x55

    aput-byte v14, v6, v7

    const/16 v7, 0x56

    aput-byte v9, v6, v7

    const/16 v7, 0x57

    aput-byte v18, v6, v7

    const/16 v7, 0x58

    aput-byte v15, v6, v7

    const/16 v7, 0x59

    aput-byte v9, v6, v7

    .line 8
    sget-object v7, Ldgp;->b:Ldgp;

    .line 9
    invoke-static {v7, v6}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v6

    check-cast v6, Ldgp;

    sget-object v7, Lbpu;->c:Lbpu;

    .line 10
    invoke-virtual {v0, v1, v6, v7}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v1

    sput-object v1, Ldlj;->a:Lcei;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    nop

    .line 12
    const-string v1, "getTokenRefactor__chimera_get_token_evolved"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 13
    const-string v1, "getTokenRefactor__clear_token_timeout_seconds"

    invoke-virtual {v0, v1, v3, v4}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 14
    const-string v1, "getTokenRefactor__default_task_timeout_seconds"

    invoke-virtual {v0, v1, v3, v4}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 15
    const-string v1, "getTokenRefactor__gaul_accounts_api_evolved"

    invoke-virtual {v0, v1, v5}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 16
    const-string v1, "getTokenRefactor__gaul_token_api_evolved"

    invoke-virtual {v0, v1, v5}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v1

    sput-object v1, Ldlj;->b:Lcei;

    const-wide/16 v3, 0x78

    .line 17
    const-string v1, "getTokenRefactor__get_token_timeout_seconds"

    invoke-virtual {v0, v1, v3, v4}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 18
    const-string v1, "getTokenRefactor__gms_account_authenticator_evolved"

    invoke-virtual {v0, v1, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    .line 19
    const-string v1, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    invoke-virtual {v0, v1}, Lceg;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 11
    const-string v1, "Could not parse proto flag \"getTokenRefactor__blocked_packages\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldgp;
    .locals 1

    .line 1
    sget-object v0, Ldlj;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgp;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldlj;->b:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
