.class public Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected appLabel:Ljava/lang/String;

.field protected appLargeIcon:Landroid/graphics/Bitmap;

.field protected clickPackageName:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected mLargIcon:I

.field protected mNotificationDefaults:I

.field protected mNotificationFlags:I

.field protected mNotificationsound:Ljava/lang/String;

.field protected mStatusbarIcon:I

.field protected mVibratePattern:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClickPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->clickPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getmLargIcon()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mLargIcon:I

    return v0
.end method

.method public getmNotificationDefaults()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationDefaults:I

    return v0
.end method

.method public getmNotificationFlags()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationFlags:I

    return v0
.end method

.method public getmNotificationsound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    return-object v0
.end method

.method public getmStatusbarIcon()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mStatusbarIcon:I

    return v0
.end method

.method public getmVibratePattern()[J
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mVibratePattern:[J

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLabel:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setAppLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLargeIcon:Landroid/graphics/Bitmap;

    .line 111
    return-void
.end method

.method public setClickPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->clickPackageName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public setmLargIcon(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mLargIcon:I

    .line 59
    return-void
.end method

.method public setmNotificationDefaults(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationDefaults:I

    .line 35
    return-void
.end method

.method public setmNotificationFlags(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationFlags:I

    .line 43
    return-void
.end method

.method public setmNotificationsound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setmStatusbarIcon(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mStatusbarIcon:I

    .line 51
    return-void
.end method

.method public setmVibratePattern([J)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mVibratePattern:[J

    .line 75
    return-void
.end method
