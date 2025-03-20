.class Lcom/woefe/shoppinglist/activity/EditBar$4;
.super Ljava/lang/Object;
.source "EditBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/EditBar;-><init>(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/EditBar;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/EditBar;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$4;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$4;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$300(Lcom/woefe/shoppinglist/activity/EditBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 118
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$4;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/activity/EditBar;->showAdd()V

    return-void
.end method
