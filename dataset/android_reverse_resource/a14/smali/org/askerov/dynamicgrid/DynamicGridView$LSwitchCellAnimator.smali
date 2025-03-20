.class Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;
.super Ljava/lang/Object;
.source "DynamicGridView.java"

# interfaces
.implements Lorg/askerov/dynamicgrid/DynamicGridView$SwitchCellAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/askerov/dynamicgrid/DynamicGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LSwitchCellAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
    }
.end annotation


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field final synthetic this$0:Lorg/askerov/dynamicgrid/DynamicGridView;


# direct methods
.method public constructor <init>(Lorg/askerov/dynamicgrid/DynamicGridView;II)V
    .locals 0

    .line 488
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->mDeltaX:I

    .line 490
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->mDeltaY:I

    return-void
.end method

.method static synthetic access$100(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;)I
    .locals 0

    .line 483
    iget p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->mDeltaY:I

    return p0
.end method

.method static synthetic access$300(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;)I
    .locals 0

    .line 483
    iget p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->mDeltaX:I

    return p0
.end method


# virtual methods
.method public animateSwitchCell(II)V
    .locals 2

    .line 495
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-virtual {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;

    invoke-direct {v1, p0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
