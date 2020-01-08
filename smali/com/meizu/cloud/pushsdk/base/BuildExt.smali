.class public Lcom/meizu/cloud/pushsdk/base/BuildExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "android.os.BuildExt"

    sput-object v0, Lcom/meizu/cloud/pushsdk/base/BuildExt;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModel()Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/BuildExt;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->forName(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    move-result-object v0

    const-string v1, "MZ_MODEL"

    .line 28
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->field(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectField;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectField;->getStatic()Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static isInternational()Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 15
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/BuildExt;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->forName(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    move-result-object v0

    const-string v1, "isProductInternational"

    new-array v2, v3, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->invokeStatic([Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static isRom()Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/BuildExt;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->forName(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    move-result-object v0

    const-string v1, "isFlymeRom"

    new-array v2, v3, [Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->invokeStatic([Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    move-result-object v0

    .line 21
    return-object v0
.end method
