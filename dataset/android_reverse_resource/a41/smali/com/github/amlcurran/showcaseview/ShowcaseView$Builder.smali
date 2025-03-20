.class public Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
.super Ljava/lang/Object;
.source "ShowcaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private parent:Landroid/view/ViewGroup;

.field private parentIndex:I

.field private final showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;Z)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "useNewStyle"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    .line 449
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 450
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/Target;->NONE:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 451
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    .line 452
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    .line 453
    return-void
.end method


# virtual methods
.method public blockAllTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1400(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)V

    .line 645
    return-object p0
.end method

.method public build()Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    invoke-static {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$800(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/view/ViewGroup;I)V

    .line 462
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object v0
.end method

.method public doNotBlockTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 564
    return-object p0
.end method

.method public hideOnTouchOutside()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 575
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setHideOnTouchOutside(Z)V

    .line 576
    return-object p0
.end method

.method public replaceEndButton(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 4
    .param p1, "buttonResourceId"    # I

    .prologue
    .line 633
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to replace showcase button with a layout which isn\'t a button"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_0
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->replaceEndButton(Landroid/widget/Button;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v1

    return-object v1
.end method

.method public replaceEndButton(Landroid/widget/Button;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1300(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/widget/Button;)V

    .line 625
    return-object p0
.end method

.method public setContentText(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 524
    return-object p0
.end method

.method public setContentTextPaint(Landroid/text/TextPaint;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1100(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V

    .line 607
    return-object p0
.end method

.method public setContentTitle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 509
    return-object p0
.end method

.method public setContentTitlePaint(Landroid/text/TextPaint;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1200(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V

    .line 616
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->overrideButtonClick(Landroid/view/View$OnClickListener;)V

    .line 553
    return-object p0
.end method

.method public setParent(Landroid/view/ViewGroup;I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    .line 596
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    .line 597
    iput p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    .line 598
    return-object p0
.end method

.method public setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "showcaseDrawer"    # Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$900(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)V

    .line 494
    return-object p0
.end method

.method public setShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "showcaseEventListener"    # Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)V

    .line 592
    return-object p0
.end method

.method public setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setStyle(I)V

    .line 543
    return-object p0
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 535
    return-object p0
.end method

.method public singleShot(J)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "shotId"    # J

    .prologue
    .line 586
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-static {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$1000(Lcom/github/amlcurran/showcaseview/ShowcaseView;J)V

    .line 587
    return-object p0
.end method

.method public useDecorViewAsParent()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parent:Landroid/view/ViewGroup;

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->parentIndex:I

    .line 655
    return-object p0
.end method

.method public withHoloShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 3

    .prologue
    .line 470
    new-instance v0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withNewStyleShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 3

    .prologue
    .line 478
    new-instance v0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method
