.class Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
.super Ljava/lang/Object;
.source "DynamicGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateSwitchViewOnPreDrawListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mOriginalPosition:I

.field private final mTargetPosition:I

.field final synthetic this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 498
    const-class v0, Lorg/askerov/dynamicgrid/DynamicGridView;

    return-void
.end method

.method constructor <init>(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;II)V
    .locals 0

    .line 502
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    .line 504
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 509
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-virtual {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 511
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v1, v1, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$000(Lorg/askerov/dynamicgrid/DynamicGridView;)I

    move-result v1

    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    invoke-static {v2}, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->access$100(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$002(Lorg/askerov/dynamicgrid/DynamicGridView;I)I

    .line 512
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v1, v1, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$200(Lorg/askerov/dynamicgrid/DynamicGridView;)I

    move-result v1

    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    invoke-static {v2}, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->access$300(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$202(Lorg/askerov/dynamicgrid/DynamicGridView;I)I

    .line 514
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    invoke-static {v0, v1, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$400(Lorg/askerov/dynamicgrid/DynamicGridView;II)V

    .line 517
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$500(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v1, v1, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$502(Lorg/askerov/dynamicgrid/DynamicGridView;Landroid/view/View;)Landroid/view/View;

    .line 520
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$500(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
