.class public final enum Lbib;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Lbib;

.field public static final enum B:Lbib;

.field public static final enum C:Lbib;

.field public static final enum D:Lbib;

.field public static final enum E:Lbib;

.field public static final enum F:Lbib;

.field public static final enum G:Lbib;

.field public static final enum H:Lbib;

.field public static final enum I:Lbib;

.field public static final enum J:Lbib;

.field public static final enum K:Lbib;

.field public static final enum L:Lbib;

.field public static final enum M:Lbib;

.field public static final enum N:Lbib;

.field public static final enum O:Lbib;

.field public static final enum P:Lbib;

.field public static final enum Q:Lbib;

.field public static final enum R:Lbib;

.field public static final enum S:Lbib;

.field public static final enum T:Lbib;

.field public static final enum U:Lbib;

.field public static final enum V:Lbib;

.field public static final enum W:Lbib;

.field public static final enum X:Lbib;

.field public static final enum Y:Lbib;

.field public static final enum Z:Lbib;

.field public static final enum a:Lbib;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum aa:Lbib;

.field public static final enum ab:Lbib;

.field public static final enum ac:Lbib;

.field public static final enum ad:Lbib;

.field public static final enum ae:Lbib;

.field private static final synthetic ag:[Lbib;

.field public static final enum b:Lbib;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum c:Lbib;

.field public static final enum d:Lbib;

.field public static final enum e:Lbib;

.field public static final enum f:Lbib;

.field public static final enum g:Lbib;

.field public static final enum h:Lbib;

.field public static final enum i:Lbib;

.field public static final enum j:Lbib;

.field public static final enum k:Lbib;

.field public static final enum l:Lbib;

.field public static final enum m:Lbib;

.field public static final enum n:Lbib;

.field public static final enum o:Lbib;

.field public static final enum p:Lbib;

.field public static final enum q:Lbib;

.field public static final enum r:Lbib;

.field public static final enum s:Lbib;

.field public static final enum t:Lbib;

.field public static final enum u:Lbib;

.field public static final enum v:Lbib;

.field public static final enum w:Lbib;

.field public static final enum x:Lbib;

.field public static final enum y:Lbib;

.field public static final enum z:Lbib;


# instance fields
.field public final af:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 1
    new-instance v0, Lbib;

    const-string v1, "CLIENT_LOGIN_DISABLED"

    const/4 v2, 0x0

    const-string v3, "ClientLoginDisabled"

    invoke-direct {v0, v1, v2, v3}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbib;->a:Lbib;

    new-instance v1, Lbib;

    .line 2
    const-string v3, "SOCKET_TIMEOUT"

    const/4 v4, 0x1

    const-string v5, "SocketTimeout"

    invoke-direct {v1, v3, v4, v5}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbib;->b:Lbib;

    new-instance v3, Lbib;

    .line 3
    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    const-string v7, "Ok"

    invoke-direct {v3, v5, v6, v7}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lbib;->c:Lbib;

    new-instance v5, Lbib;

    .line 4
    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    const-string v9, "UNKNOWN_ERR"

    invoke-direct {v5, v7, v8, v9}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lbib;->d:Lbib;

    new-instance v7, Lbib;

    .line 5
    const-string v9, "NETWORK_ERROR"

    const/4 v10, 0x4

    const-string v11, "NetworkError"

    invoke-direct {v7, v9, v10, v11}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lbib;->e:Lbib;

    new-instance v9, Lbib;

    .line 6
    const-string v11, "SERVICE_UNAVAILABLE"

    const/4 v12, 0x5

    const-string v13, "ServiceUnavailable"

    invoke-direct {v9, v11, v12, v13}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lbib;->f:Lbib;

    new-instance v11, Lbib;

    .line 7
    const-string v13, "INTNERNAL_ERROR"

    const/4 v14, 0x6

    const-string v15, "InternalError"

    invoke-direct {v11, v13, v14, v15}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lbib;->g:Lbib;

    new-instance v13, Lbib;

    .line 8
    const-string v15, "ILLEGAL_ARGUMENT"

    const/4 v14, 0x7

    const-string v12, "IllegalArgument"

    invoke-direct {v13, v15, v14, v12}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lbib;->h:Lbib;

    new-instance v12, Lbib;

    .line 9
    const-string v15, "BAD_AUTHENTICATION"

    const/16 v14, 0x8

    const-string v10, "BadAuthentication"

    invoke-direct {v12, v15, v14, v10}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lbib;->i:Lbib;

    new-instance v10, Lbib;

    .line 10
    const-string v15, "BAD_TOKEN_REQUEST"

    const/16 v14, 0x9

    const-string v8, "BAD_REQUEST"

    invoke-direct {v10, v15, v14, v8}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lbib;->j:Lbib;

    new-instance v15, Lbib;

    .line 11
    const-string v14, "EMPTY_CONSUMER_PKG_OR_SIG"

    const/16 v6, 0xa

    const-string v4, "EmptyConsumerPackageOrSig"

    invoke-direct {v15, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lbib;->k:Lbib;

    new-instance v4, Lbib;

    .line 12
    const-string v14, "NEEDS_2F"

    const/16 v6, 0xb

    const-string v2, "InvalidSecondFactor"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->l:Lbib;

    new-instance v2, Lbib;

    .line 13
    const-string v14, "NEEDS_POST_SIGN_IN_FLOW"

    const/16 v6, 0xc

    move-object/from16 v16, v4

    const-string v4, "PostSignInFlowRequired"

    invoke-direct {v2, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->m:Lbib;

    new-instance v4, Lbib;

    .line 14
    const-string v14, "NEEDS_BROWSER"

    const/16 v6, 0xd

    move-object/from16 v17, v2

    const-string v2, "NeedsBrowser"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->n:Lbib;

    new-instance v2, Lbib;

    .line 15
    const-string v14, "UNKNOWN"

    const/16 v6, 0xe

    move-object/from16 v18, v4

    const-string v4, "Unknown"

    invoke-direct {v2, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->o:Lbib;

    new-instance v4, Lbib;

    .line 16
    const-string v14, "NOT_VERIFIED"

    const/16 v6, 0xf

    move-object/from16 v19, v2

    const-string v2, "NotVerified"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->p:Lbib;

    new-instance v2, Lbib;

    .line 17
    const-string v14, "TERMS_NOT_AGREED"

    const/16 v6, 0x10

    move-object/from16 v20, v4

    const-string v4, "TermsNotAgreed"

    invoke-direct {v2, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->q:Lbib;

    new-instance v4, Lbib;

    .line 18
    const-string v14, "ACCOUNT_DISABLED"

    const/16 v6, 0x11

    move-object/from16 v21, v2

    const-string v2, "AccountDisabled"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->r:Lbib;

    new-instance v2, Lbib;

    .line 19
    const-string v14, "CAPTCHA"

    const/16 v6, 0x12

    move-object/from16 v22, v4

    const-string v4, "CaptchaRequired"

    invoke-direct {v2, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->s:Lbib;

    new-instance v4, Lbib;

    .line 20
    const-string v14, "ACCOUNT_DELETED"

    const/16 v6, 0x13

    move-object/from16 v23, v2

    const-string v2, "AccountDeleted"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->t:Lbib;

    new-instance v2, Lbib;

    .line 21
    const-string v14, "SERVICE_DISABLED"

    const/16 v6, 0x14

    move-object/from16 v24, v4

    const-string v4, "ServiceDisabled"

    invoke-direct {v2, v14, v6, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->u:Lbib;

    new-instance v4, Lbib;

    .line 22
    const-string v14, "CHALLENGE_REQUIRED"

    const/16 v6, 0x15

    move-object/from16 v25, v2

    const-string v2, "ChallengeRequired"

    invoke-direct {v4, v14, v6, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->v:Lbib;

    new-instance v2, Lbib;

    .line 23
    const-string v6, "NEED_PERMISSION"

    const/16 v14, 0x16

    move-object/from16 v26, v4

    const-string v4, "NeedPermission"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->w:Lbib;

    new-instance v4, Lbib;

    .line 24
    const-string v6, "NEED_REMOTE_CONSENT"

    const/16 v14, 0x17

    move-object/from16 v27, v2

    const-string v2, "NeedRemoteConsent"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->x:Lbib;

    new-instance v2, Lbib;

    .line 25
    const-string v6, "INVALID_SCOPE"

    const/16 v14, 0x18

    move-object/from16 v28, v4

    const-string v4, "INVALID_SCOPE"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->y:Lbib;

    new-instance v4, Lbib;

    .line 26
    const-string v6, "USER_CANCEL"

    const/16 v14, 0x19

    move-object/from16 v29, v2

    const-string v2, "UserCancel"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->z:Lbib;

    new-instance v2, Lbib;

    .line 27
    const-string v6, "PERMISSION_DENIED"

    const/16 v14, 0x1a

    move-object/from16 v30, v4

    const-string v4, "PermissionDenied"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->A:Lbib;

    new-instance v4, Lbib;

    .line 28
    const-string v6, "INVALID_AUDIENCE"

    const/16 v14, 0x1b

    move-object/from16 v31, v2

    const-string v2, "INVALID_AUDIENCE"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->B:Lbib;

    new-instance v2, Lbib;

    .line 29
    const-string v6, "UNREGISTERED_ON_API_CONSOLE"

    const/16 v14, 0x1c

    move-object/from16 v32, v4

    const-string v4, "UNREGISTERED_ON_API_CONSOLE"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->C:Lbib;

    new-instance v4, Lbib;

    .line 30
    const-string v6, "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED"

    const/16 v14, 0x1d

    move-object/from16 v33, v2

    const-string v2, "ThirdPartyDeviceManagementRequired"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->D:Lbib;

    new-instance v2, Lbib;

    .line 31
    const-string v6, "DM_INTERNAL_ERROR"

    const/16 v14, 0x1e

    move-object/from16 v34, v4

    const-string v4, "DeviceManagementInternalError"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->E:Lbib;

    new-instance v4, Lbib;

    .line 32
    const-string v6, "DM_SYNC_DISABLED"

    const/16 v14, 0x1f

    move-object/from16 v35, v2

    const-string v2, "DeviceManagementSyncDisabled"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->F:Lbib;

    new-instance v2, Lbib;

    .line 33
    const-string v6, "DM_ADMIN_BLOCKED"

    const/16 v14, 0x20

    move-object/from16 v36, v4

    const-string v4, "DeviceManagementAdminBlocked"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->G:Lbib;

    new-instance v4, Lbib;

    .line 34
    const-string v6, "DM_ADMIN_PENDING_APPROVAL"

    const/16 v14, 0x21

    move-object/from16 v37, v2

    const-string v2, "DeviceManagementAdminPendingApproval"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->H:Lbib;

    new-instance v2, Lbib;

    .line 35
    const-string v6, "DM_STALE_SYNC_REQUIRED"

    const/16 v14, 0x22

    move-object/from16 v38, v4

    const-string v4, "DeviceManagementStaleSyncRequired"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->I:Lbib;

    new-instance v4, Lbib;

    .line 36
    const-string v6, "DM_DEACTIVATED"

    const/16 v14, 0x23

    move-object/from16 v39, v2

    const-string v2, "DeviceManagementDeactivated"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->J:Lbib;

    new-instance v2, Lbib;

    .line 37
    const-string v6, "DM_SCREENLOCK_REQUIRED"

    const/16 v14, 0x24

    move-object/from16 v40, v4

    const-string v4, "DeviceManagementScreenlockRequired"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->K:Lbib;

    new-instance v4, Lbib;

    .line 38
    const-string v6, "DM_REQUIRED"

    const/16 v14, 0x25

    move-object/from16 v41, v2

    const-string v2, "DeviceManagementRequired"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->L:Lbib;

    new-instance v2, Lbib;

    .line 39
    const-string v6, "DEVICE_MANAGEMENT_REQUIRED"

    const/16 v14, 0x26

    move-object/from16 v42, v4

    const-string v4, "DeviceManagementRequiredOrSyncDisabled"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->M:Lbib;

    new-instance v4, Lbib;

    .line 40
    const-string v6, "ALREADY_HAS_GMAIL"

    const/16 v14, 0x27

    move-object/from16 v43, v2

    const-string v2, "ALREADY_HAS_GMAIL"

    invoke-direct {v4, v6, v14, v2}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->N:Lbib;

    new-instance v2, Lbib;

    .line 41
    const-string v6, "BAD_PASSWORD"

    const/16 v14, 0x28

    move-object/from16 v44, v4

    const-string v4, "WeakPassword"

    invoke-direct {v2, v6, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lbib;->O:Lbib;

    new-instance v4, Lbib;

    .line 42
    const/16 v6, 0x29

    const-string v14, "BadRequest"

    invoke-direct {v4, v8, v6, v14}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->P:Lbib;

    new-instance v6, Lbib;

    .line 43
    const-string v8, "BAD_USERNAME"

    const/16 v14, 0x2a

    move-object/from16 v45, v4

    const-string v4, "BadUsername"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->Q:Lbib;

    new-instance v4, Lbib;

    .line 44
    const-string v8, "DELETED_GMAIL"

    const/16 v14, 0x2b

    move-object/from16 v46, v6

    const-string v6, "DeletedGmail"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->R:Lbib;

    new-instance v6, Lbib;

    .line 45
    const-string v8, "EXISTING_USERNAME"

    const/16 v14, 0x2c

    move-object/from16 v47, v4

    const-string v4, "ExistingUsername"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->S:Lbib;

    new-instance v4, Lbib;

    .line 46
    const-string v8, "LOGIN_FAIL"

    const/16 v14, 0x2d

    move-object/from16 v48, v6

    const-string v6, "LoginFail"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->T:Lbib;

    new-instance v6, Lbib;

    .line 47
    const-string v8, "NOT_LOGGED_IN"

    const/16 v14, 0x2e

    move-object/from16 v49, v4

    const-string v4, "NotLoggedIn"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->U:Lbib;

    new-instance v4, Lbib;

    .line 48
    const-string v8, "NO_GMAIL"

    const/16 v14, 0x2f

    move-object/from16 v50, v6

    const-string v6, "NoGmail"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->V:Lbib;

    new-instance v6, Lbib;

    .line 49
    const-string v8, "REQUEST_DENIED"

    const/16 v14, 0x30

    move-object/from16 v51, v4

    const-string v4, "RequestDenied"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->W:Lbib;

    new-instance v4, Lbib;

    .line 50
    const-string v8, "SERVER_ERROR"

    const/16 v14, 0x31

    move-object/from16 v52, v6

    const-string v6, "ServerError"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->X:Lbib;

    new-instance v6, Lbib;

    .line 51
    const-string v8, "USERNAME_UNAVAILABLE"

    const/16 v14, 0x32

    move-object/from16 v53, v4

    const-string v4, "UsernameUnavailable"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->Y:Lbib;

    new-instance v4, Lbib;

    .line 52
    const-string v8, "GPLUS_OTHER"

    const/16 v14, 0x33

    move-object/from16 v54, v6

    const-string v6, "GPlusOther"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->Z:Lbib;

    new-instance v6, Lbib;

    .line 53
    const-string v8, "GPLUS_NICKNAME"

    const/16 v14, 0x34

    move-object/from16 v55, v4

    const-string v4, "GPlusNickname"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->aa:Lbib;

    new-instance v4, Lbib;

    .line 54
    const-string v8, "GPLUS_INVALID_CHAR"

    const/16 v14, 0x35

    move-object/from16 v56, v6

    const-string v6, "GPlusInvalidChar"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->ab:Lbib;

    new-instance v6, Lbib;

    .line 55
    const-string v8, "GPLUS_INTERSTITIAL"

    const/16 v14, 0x36

    move-object/from16 v57, v4

    const-string v4, "GPlusInterstitial"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->ac:Lbib;

    new-instance v4, Lbib;

    .line 56
    const-string v8, "GPLUS_PROFILE_ERROR"

    const/16 v14, 0x37

    move-object/from16 v58, v6

    const-string v6, "ProfileUpgradeError"

    invoke-direct {v4, v8, v14, v6}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lbib;->ad:Lbib;

    new-instance v6, Lbib;

    .line 57
    const-string v8, "AUTH_SECURITY_ERROR"

    const/16 v14, 0x38

    move-object/from16 v59, v4

    const-string v4, "AuthSecurityError"

    invoke-direct {v6, v8, v14, v4}, Lbib;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbib;->ae:Lbib;

    const/16 v4, 0x39

    new-array v4, v4, [Lbib;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v15, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v30, v4, v0

    const/16 v0, 0x1a

    aput-object v31, v4, v0

    const/16 v0, 0x1b

    aput-object v32, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v34, v4, v0

    const/16 v0, 0x1e

    aput-object v35, v4, v0

    const/16 v0, 0x1f

    aput-object v36, v4, v0

    const/16 v0, 0x20

    aput-object v37, v4, v0

    const/16 v0, 0x21

    aput-object v38, v4, v0

    const/16 v0, 0x22

    aput-object v39, v4, v0

    const/16 v0, 0x23

    aput-object v40, v4, v0

    const/16 v0, 0x24

    aput-object v41, v4, v0

    const/16 v0, 0x25

    aput-object v42, v4, v0

    const/16 v0, 0x26

    aput-object v43, v4, v0

    const/16 v0, 0x27

    aput-object v44, v4, v0

    const/16 v0, 0x28

    aput-object v2, v4, v0

    const/16 v0, 0x29

    aput-object v45, v4, v0

    const/16 v0, 0x2a

    aput-object v46, v4, v0

    const/16 v0, 0x2b

    aput-object v47, v4, v0

    const/16 v0, 0x2c

    aput-object v48, v4, v0

    const/16 v0, 0x2d

    aput-object v49, v4, v0

    const/16 v0, 0x2e

    aput-object v50, v4, v0

    const/16 v0, 0x2f

    aput-object v51, v4, v0

    const/16 v0, 0x30

    aput-object v52, v4, v0

    const/16 v0, 0x31

    aput-object v53, v4, v0

    const/16 v0, 0x32

    aput-object v54, v4, v0

    const/16 v0, 0x33

    aput-object v55, v4, v0

    const/16 v0, 0x34

    aput-object v56, v4, v0

    const/16 v0, 0x35

    aput-object v57, v4, v0

    const/16 v0, 0x36

    aput-object v58, v4, v0

    const/16 v0, 0x37

    aput-object v59, v4, v0

    const/16 v0, 0x38

    aput-object v6, v4, v0

    sput-object v4, Lbib;->ag:[Lbib;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbib;->af:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lbib;
    .locals 1

    .line 1
    sget-object v0, Lbib;->ag:[Lbib;

    invoke-virtual {v0}, [Lbib;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbib;

    return-object v0
.end method
