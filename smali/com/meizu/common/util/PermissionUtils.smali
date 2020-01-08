.class public Lcom/meizu/common/util/PermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OP_GROUP_BOOTCOMPLETED:I = 0x9

.field public static final OP_GROUP_CAMERA:I = 0x7

.field public static final OP_GROUP_GPS:I = 0x16

.field public static final OP_GROUP_INTERNET:I = 0x19

.field public static final OP_GROUP_LOCATION:I = 0x5

.field public static final OP_GROUP_NFC:I = 0xd

.field public static final OP_GROUP_NONE:I = -0x1

.field public static final OP_GROUP_OPEN_BLUETOOTH:I = 0x8

.field public static final OP_GROUP_OPEN_MOBILE_DATA:I = 0x3

.field public static final OP_GROUP_OPEN_WLAN:I = 0x4

.field public static final OP_GROUP_PHONE_CALL:I = 0x0

.field public static final OP_GROUP_PHONE_OUT_GOING_CALL:I = 0x17

.field public static final OP_GROUP_PHONE_READ_CALLLOG:I = 0xa

.field public static final OP_GROUP_PHONE_WRITE_CALLLOG:I = 0x15

.field public static final OP_GROUP_READ_CONTACTS:I = 0x1

.field public static final OP_GROUP_READ_MMS:I = 0xb

.field public static final OP_GROUP_READ_SMS:I = 0x2

.field public static final OP_GROUP_RECEIVE_MMS:I = 0x14

.field public static final OP_GROUP_RECEIVE_SMS:I = 0x11

.field public static final OP_GROUP_RECORDAUDIO:I = 0x6

.field public static final OP_GROUP_RECORDAUDIO_PHONE:I = 0xc

.field public static final OP_GROUP_SEND_MMS:I = 0x13

.field public static final OP_GROUP_SEND_SMS:I = 0x10

.field public static final OP_GROUP_SYSTEM_ALERT:I = 0x18

.field public static final OP_GROUP_WRITE_CONTACTS:I = 0xe

.field public static final OP_GROUP_WRITE_MMS:I = 0x12

.field public static final OP_GROUP_WRITE_SMS:I = 0xf

.field public static mBootCompletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mCameraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mInternetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenBluetoothList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenGpsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenWalnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpenMobileDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpenNfcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPhoneCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPhoneOutGoingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadCallLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadContactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReceiveMMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReceiveSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecordAudioList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecordAudioPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSystemAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteCallLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteContactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioPhoneList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteMmsList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendMmsList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenGpsList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    const-string v1, "android.permission.NFC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public getPermissionLabelByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/PermissionUtils;->getPermissionTypeByName(Ljava/lang/String;)I

    move-result v0

    .line 122
    packed-switch v0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_call:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_contacts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_r_sms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_set_gprs_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_set_wifi_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_recordaudio_local:I

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_7
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_camera:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_8
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_set_bluetooth_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_9
    const-string v0, ""

    goto :goto_0

    .line 145
    :pswitch_a
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_call_log:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :pswitch_b
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_r_mms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :pswitch_c
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_recordaudio_phone:I

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :pswitch_d
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_nfc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :pswitch_e
    const-string v0, ""

    goto/16 :goto_0

    .line 160
    :pswitch_f
    const-string v0, ""

    goto/16 :goto_0

    .line 162
    :pswitch_10
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_s_sms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :pswitch_11
    const-string v0, ""

    goto/16 :goto_0

    .line 166
    :pswitch_12
    const-string v0, ""

    goto/16 :goto_0

    .line 168
    :pswitch_13
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_s_mms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :pswitch_14
    const-string v0, ""

    goto/16 :goto_0

    .line 172
    :pswitch_15
    const-string v0, ""

    goto/16 :goto_0

    .line 174
    :pswitch_16
    const-string v0, ""

    goto/16 :goto_0

    .line 176
    :pswitch_17
    const-string v0, ""

    goto/16 :goto_0

    .line 178
    :pswitch_18
    const-string v0, ""

    goto/16 :goto_0

    .line 180
    :pswitch_19
    iget-object v0, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_pm_online_intenert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public getPermissionTypeByName(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 190
    :cond_0
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    const/4 v0, 0x2

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const/4 v0, 0x3

    goto :goto_0

    .line 196
    :cond_3
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    const/4 v0, 0x4

    goto :goto_0

    .line 198
    :cond_4
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    const/4 v0, 0x5

    goto :goto_0

    .line 200
    :cond_5
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    const/4 v0, 0x6

    goto :goto_0

    .line 202
    :cond_6
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    const/4 v0, 0x7

    goto :goto_0

    .line 204
    :cond_7
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    const/16 v0, 0x8

    goto :goto_0

    .line 206
    :cond_8
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    const/16 v0, 0x9

    goto :goto_0

    .line 208
    :cond_9
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    const/16 v0, 0xa

    goto :goto_0

    .line 210
    :cond_a
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    const/16 v0, 0xb

    goto :goto_0

    .line 212
    :cond_b
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    const/16 v0, 0xc

    goto :goto_0

    .line 214
    :cond_c
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 216
    :cond_d
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 217
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 218
    :cond_e
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 219
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 220
    :cond_f
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 221
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 222
    :cond_10
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 223
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 224
    :cond_11
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 225
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 226
    :cond_12
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 228
    :cond_13
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 229
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 230
    :cond_14
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 231
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 232
    :cond_15
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenGpsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 233
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 234
    :cond_16
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 235
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 236
    :cond_17
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 237
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 238
    :cond_18
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 241
    :cond_19
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public loadPemissionLables([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 111
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 114
    invoke-virtual {p0, v4}, Lcom/meizu/common/util/PermissionUtils;->getPermissionLabelByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method
