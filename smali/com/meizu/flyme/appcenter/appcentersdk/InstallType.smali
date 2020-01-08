.class public interface abstract annotation Lcom/meizu/flyme/appcenter/appcentersdk/InstallType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/IntDef;
    value = {
        0x1L,
        0x2L
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final InstallHalfSilence:I = 0x2

.field public static final InstallNormal:I = 0x1
