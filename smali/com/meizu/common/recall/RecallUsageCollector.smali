.class public Lcom/meizu/common/recall/RecallUsageCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FROM_PACKAGE:Ljava/lang/String; = "frompackage"

.field private static final INSTALL_MESSAGE:Ljava/lang/String; = "message"

.field private static final INSTALL_PACKAGE:Ljava/lang/String; = "installpackage"

.field public static final MESSAGE_FILEPATH_NOT_EXIST:Ljava/lang/String; = "filepath not exist"

.field public static final MESSAGE_FIND_PATH_FAILED:Ljava/lang/String; = "find app path failed"

.field public static final MESSAGE_INSTALL_CALL_ERROR:Ljava/lang/String; = "install call error"

.field public static final MESSAGE_INSTALL_SUCCEED:Ljava/lang/String; = "ok"

.field public static final MESSAGE_NO_NEED_TO_INSTALL:Ljava/lang/String; = "no need to install"

.field private static final TAG:Ljava/lang/String; = "InstallView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onVisiableLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
