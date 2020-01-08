.class public Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceReader"

.field private static mInstance:Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->init()V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mInstance:Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mInstance:Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;

    .line 33
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mInstance:Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mAssetManager:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 59
    const-string v0, "ResourceReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get resource type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/util/ResourceReader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    return v0
.end method
