.class Lcom/woefe/shoppinglist/activity/EditBar$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EditBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/EditBar;->enableAutoHideFAB(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final slop:I

.field private start:F

.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/EditBar;

.field private triggerPosition:F


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/EditBar;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 181
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$400(Lcom/woefe/shoppinglist/activity/EditBar;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->slop:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 182
    iput p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    .line 183
    iput p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->triggerPosition:F

    return-void
.end method

.method private isNewEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->triggerPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->triggerPosition:F

    :cond_1
    return v0
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 187
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/EditBar$5;->isNewEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    .line 190
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 192
    iget v1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->slop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {v1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$500(Lcom/woefe/shoppinglist/activity/EditBar;)V

    .line 194
    iput v0, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    goto :goto_0

    .line 195
    :cond_1
    iget v1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->slop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {v1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$600(Lcom/woefe/shoppinglist/activity/EditBar;)V

    .line 197
    iput v0, p0, Lcom/woefe/shoppinglist/activity/EditBar$5;->start:F

    .line 199
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
