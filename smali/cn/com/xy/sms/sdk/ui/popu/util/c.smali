.class public final Lcn/com/xy/sms/sdk/ui/popu/util/c;
.super Landroid/text/method/LinkMovementMethod;


# static fields
.field private static c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

.field private static d:Lcn/com/xy/sms/sdk/ui/popu/util/c;


# instance fields
.field private a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

.field private b:Landroid/text/Spannable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/com/xy/sms/sdk/ui/popu/util/a;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/ui/popu/util/a;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->d:Lcn/com/xy/sms/sdk/ui/popu/util/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    return-void
.end method

.method public static a()Landroid/text/method/MovementMethod;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->d:Lcn/com/xy/sms/sdk/ui/popu/util/c;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/ui/popu/util/c;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->d:Lcn/com/xy/sms/sdk/ui/popu/util/c;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->d:Lcn/com/xy/sms/sdk/ui/popu/util/c;

    return-object v0
.end method

.method private static a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/com/xy/sms/sdk/ui/popu/util/d;
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v1, Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/xy/sms/sdk/ui/popu/util/d;

    const/4 v1, 0x0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/text/Spannable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    goto :goto_0
.end method

.method private a(Landroid/text/Spannable;II)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/text/Spannable;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b(Z)V

    iput-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    :cond_0
    iput-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/LinkMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/LinkMovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p2, p3}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/com/xy/sms/sdk/ui/popu/util/d;

    move-result-object v2

    iput-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-eqz p2, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b(Z)V

    move v1, v0

    :cond_1
    :goto_1
    if-nez v1, :cond_9

    invoke-direct {p0, p2}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/text/Spannable;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    move v0, v1

    :goto_2
    if-nez v2, :cond_7

    :goto_3
    return v0

    :cond_2
    sget-object v4, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    if-eqz v4, :cond_3

    sget-object v4, Lcn/com/xy/sms/sdk/ui/popu/util/c;->c:Lcn/com/xy/sms/sdk/ui/popu/util/a;

    invoke-interface {p2, v4, v2, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->b:Landroid/text/Spannable;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-static {p1, p2, p3}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcn/com/xy/sms/sdk/ui/popu/util/d;

    move-result-object v2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b(Z)V

    iput-object v5, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-direct {p0, p2}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/text/Spannable;)V

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-direct {p0, p2}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/text/Spannable;)V

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b(Z)V

    invoke-direct {p0, p2}, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a(Landroid/text/Spannable;)V

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    :goto_4
    iput-object v5, p0, Lcn/com/xy/sms/sdk/ui/popu/util/c;->a:Lcn/com/xy/sms/sdk/ui/popu/util/d;

    move v1, v0

    goto :goto_1

    :cond_7
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_4
.end method

.method public final onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
