.class public final Lcn/com/xy/sms/sdk/util/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemoryCache will use up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Landroid/graphics/drawable/BitmapDrawable;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/p;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method private a(J)V
    .locals 7

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    iput-wide p1, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemoryCache will use up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/p;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/p;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/p;->a(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/p;->c:J

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/util/p;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
