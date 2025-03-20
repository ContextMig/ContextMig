.class Lcom/woefe/shoppinglist/activity/EditBar$1;
.super Ljava/lang/Object;
.source "EditBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 74
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$1;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$1;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$000(Lcom/woefe/shoppinglist/activity/EditBar;)V

    const/4 p1, 0x1

    return p1
.end method
