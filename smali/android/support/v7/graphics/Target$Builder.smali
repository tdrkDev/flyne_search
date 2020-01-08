.class public final Landroid/support/v7/graphics/Target$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Landroid/support/v7/graphics/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/graphics/Target;)V
    .locals 1
    .param p1    # Landroid/support/v7/graphics/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0, p1}, Landroid/support/v7/graphics/Target;-><init>(Landroid/support/v7/graphics/Target;)V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    .line 301
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/graphics/Target;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    return-object v0
.end method

.method public setExclusive(Z)Landroid/support/v7/graphics/Target$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iput-boolean p1, v0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    .line 417
    return-object p0
.end method

.method public setLightnessWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 388
    return-object p0
.end method

.method public setMaximumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 354
    return-object p0
.end method

.method public setMaximumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 327
    return-object p0
.end method

.method public setMinimumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 336
    return-object p0
.end method

.method public setMinimumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 309
    return-object p0
.end method

.method public setPopulationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 404
    return-object p0
.end method

.method public setSaturationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 371
    return-object p0
.end method

.method public setTargetLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 345
    return-object p0
.end method

.method public setTargetSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 318
    return-object p0
.end method
