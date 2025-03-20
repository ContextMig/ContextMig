.class Lcom/woefe/shoppinglist/activity/EditBar$3;
.super Ljava/lang/Object;
.source "EditBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/widget/ImageButton;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    iget-object p3, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->val$button:Landroid/widget/ImageButton;

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lcom/woefe/shoppinglist/activity/EditBar;->access$100(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    iget-object p3, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->val$button:Landroid/widget/ImageButton;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/woefe/shoppinglist/activity/EditBar;->access$100(Lcom/woefe/shoppinglist/activity/EditBar;Landroid/widget/ImageButton;Z)V

    .line 104
    :goto_0
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/EditBar$3;->this$0:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-static {p2, p1}, Lcom/woefe/shoppinglist/activity/EditBar;->access$200(Lcom/woefe/shoppinglist/activity/EditBar;Ljava/lang/String;)V

    return-void
.end method
