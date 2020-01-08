.class Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYHolder"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 1

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1308
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1312
    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1313
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    .prologue
    .line 1326
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1327
    return-void
.end method

.method public setXY(FF)V
    .locals 0

    .prologue
    .line 1320
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1321
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1323
    return-void
.end method

.method public setY(F)V
    .locals 0

    .prologue
    .line 1334
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1335
    return-void
.end method
