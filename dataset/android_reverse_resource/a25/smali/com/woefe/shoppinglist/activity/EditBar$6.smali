.class Lcom/woefe/shoppinglist/activity/EditBar$6;
.super Ljava/lang/Object;
.source "EditBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/EditBar;->enableAutoHideFAB(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/EditBar;

.field final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/view/GestureDetector;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$6;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar$6;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$6;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
