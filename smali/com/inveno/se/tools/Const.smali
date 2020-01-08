.class public Lcom/inveno/se/tools/Const;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_NOTIFICATION_CENTER_MASTER:Ljava/lang/String; = "ACTION_NOTIFICATION_CENTER_MASTER"

.field public static final ACTION_NOTIFICATION_CENTER_SECONDARY:Ljava/lang/String; = "ACTION_NOTIFICATION_CENTER_SECONDARY"

.field public static final ACTION_UPDATE_INTEREST:Ljava/lang/String; = "com.inveno.intent.action.UPDATE_INTEREST"

.field public static final AGREEMENT_VERSION:Ljava/lang/String; = "5"

.field public static final BROADCAST_PERMISSION_ONLY_RECV_FROM:Ljava/lang/String; = "com.huawei.android.launcher.permission.PIFLOW_NEWS_RECEIVE"

.field public static final BROADCAST_PERMISSION_ONLY_SEND_TO:Ljava/lang/String; = "com.inveno.hwread.permission.LAUNCHER_RECEIVE"

.field public static final CONPANY_NAME:Ljava/lang/String;

.field public static CONTEXT_PK_NAME:Ljava/lang/String; = null

.field public static final DATA_VERSION:I = 0x2

.field public static final DOWNLOAD_APP_PATH:Ljava/lang/String; = "appCache"

.field public static final FLOW_ACCOUNT_FILE_NAME:Ljava/lang/String; = "ac"

.field public static final FLOW_ACCOUNT_FILE_TEXT_NAME:Ljava/lang/String; = "ac.txt"

.field public static final FLOW_UPDATEVERSION_PATH:Ljava/lang/String; = "install.txt"

.field public static final FLYSHARE_DB:Ljava/lang/String; = "flow.db"

.field public static final INTENT_PERMISSION_OPEN_SECOND_PAGE:Ljava/lang/String; = "com.inveno.android.permission.PIFLOW_OPEN_SECOND_PAGE"

.field public static final INVENO_BROADCAST_ACTION_RPC:Ljava/lang/String; = "INVENO_BROADCAST_ACTION_RPC"

.field public static final LAST_PAGE_SAVE_PATH:Ljava/lang/String; = "flow.txt"

.field public static final OPEN_CHANGE_INTERFACE:Z

.field public static final OPEN_DEBUG_SETTING:Z = false

.field public static final OPEN_ONE_KEY_SAVE_ALL_PHOTO:Z = false

.field public static final OPEN_TEST_JSON:Z = false

.field public static final PARAM_TYPE_BUNDLE:I = 0x3

.field public static final PARAM_TYPE_URL:I = 0x1

.field public static final PARAM_TYPE_URL_PKNAME_CLSNAME:I = 0x2

.field public static SDK_VERSION:I = 0x0

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SPLASH_SAVA_PATH:Ljava/lang/String; = "splash.txt"

.field public static final TUNE_TYPE_SENDBROADCAST:I = 0x1

.field public static final TUNE_TYPE_STARTACTIVITY:I = 0x2

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_BUILD_NUMBER:Ljava/lang/String;

.field public static final WORLD_SETTINGS:Ljava/lang/String; = "worldsettings"

.field public static final agree:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->CONTEXT_PK_NAME:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/Const;->CONTEXT_PK_NAME:Ljava/lang/String;

    sget-boolean v0, Lcom/inveno/se/tools/AppConfig;->DEBUG_MODE:Z

    sput-boolean v0, Lcom/inveno/se/tools/Const;->OPEN_CHANGE_INTERFACE:Z

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->SD_NAME:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/Const;->CONPANY_NAME:Ljava/lang/String;

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->VERSION_NAME:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/Const;->VERSION:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    sget-object v0, Lcom/inveno/se/tools/AppConfig;->VERSION_BUILD_NUMBER:Ljava/lang/String;

    sput-object v0, Lcom/inveno/se/tools/Const;->VERSION_BUILD_NUMBER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
