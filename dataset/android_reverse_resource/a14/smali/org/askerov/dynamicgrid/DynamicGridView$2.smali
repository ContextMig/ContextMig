.class Lorg/askerov/dynamicgrid/DynamicGridView$2;
.super Ljava/lang/Object;
.source "DynamicGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/askerov/dynamicgrid/DynamicGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lorg/askerov/dynamicgrid/DynamicGridView;


# direct methods
.method constructor <init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 658
    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    .line 659
    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .line 717
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 718
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1100(Lorg/askerov/dynamicgrid/DynamicGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1600(Lorg/askerov/dynamicgrid/DynamicGridView;J)V

    .line 720
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1700(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    :cond_0
    return-void
.end method

.method private checkAndHandleLastVisibleCellChange()V
    .locals 4

    .line 730
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentVisibleItemCount:I

    add-int/2addr v0, v1

    .line 731
    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1100(Lorg/askerov/dynamicgrid/DynamicGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1600(Lorg/askerov/dynamicgrid/DynamicGridView;J)V

    .line 735
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1700(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    :cond_0
    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .line 703
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentScrollState:I

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1100(Lorg/askerov/dynamicgrid/DynamicGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1200(Lorg/askerov/dynamicgrid/DynamicGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1300(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1400(Lorg/askerov/dynamicgrid/DynamicGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1500(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 666
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentFirstVisibleItem:I

    .line 667
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentVisibleItemCount:I

    .line 669
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentFirstVisibleItem:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    .line 671
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentVisibleItemCount:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    :goto_1
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    .line 674
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;->checkAndHandleFirstVisibleCellChange()V

    .line 675
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;->checkAndHandleLastVisibleCellChange()V

    .line 677
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousFirstVisibleItem:I

    .line 678
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentVisibleItemCount:I

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mPreviousVisibleItemCount:I

    .line 679
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$900(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$900(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 686
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->mCurrentScrollState:I

    .line 687
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$1002(Lorg/askerov/dynamicgrid/DynamicGridView;I)I

    .line 688
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;->isScrollCompleted()V

    .line 689
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$900(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$2;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$900(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
