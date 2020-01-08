.class public interface abstract Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/se/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageCache"
.end annotation


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end method

.method public abstract putBitmap(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
.end method
